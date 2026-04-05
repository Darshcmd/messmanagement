import express from 'express';
import { executeQuery, getConnection } from '../mysql.js';

const router = express.Router();

const ADMIN_TOKEN = 'admin-token-vitmess';

function verifyAdmin(req, res, next) {
  const token = req.headers.authorization?.split(' ')[1];
  if (token !== ADMIN_TOKEN) {
    return res.status(403).json({ error: 'Unauthorized' });
  }
  next();
}

function parseSqlScript(sqlText) {
  const input = String(sqlText || '').replace(/\r\n/g, '\n');
  const statements = [];
  let current = '';
  let inSingleQuote = false;

  for (let i = 0; i < input.length; i += 1) {
    const ch = input[i];
    const next = input[i + 1];

    if (!inSingleQuote && ch === '-' && next === '-') {
      while (i < input.length && input[i] !== '\n') i += 1;
      continue;
    }

    if (ch === "'") {
      // Handle escaped single quote inside string: ''
      if (inSingleQuote && next === "'") {
        current += "''";
        i += 1;
        continue;
      }
      inSingleQuote = !inSingleQuote;
      current += ch;
      continue;
    }

    if (!inSingleQuote && ch === ';') {
      const trimmed = current.trim();
      if (trimmed) {
        statements.push(trimmed);
      }
      current = '';
      continue;
    }

    current += ch;
  }

  const tail = current.trim();
  if (tail) {
    statements.push(tail);
  }

  return statements;
}

// Execute raw SQL (admin only)
router.post('/execute-sql', verifyAdmin, async (req, res) => {
  let conn;
  try {
    const { sql } = req.body;
    if (!sql || !String(sql).trim()) {
      return res.status(400).json({ error: 'No SQL provided' });
    }

    const statements = parseSqlScript(sql);
    if (statements.length === 0) {
      return res.status(400).json({ error: 'No executable SQL statements found' });
    }

    conn = await getConnection();
    await conn.beginTransaction();

    const execution = [];
    let lastSelect = { columns: [], rows: [] };

    for (let idx = 0; idx < statements.length; idx += 1) {
      const statement = statements[idx];
      const [rows, fields] = await conn.query(statement);
      const isSelect = /^\s*SELECT\b/i.test(statement);

      if (isSelect && Array.isArray(rows)) {
        const columns = (fields || []).map((f) => f.name.toLowerCase());
        const normalizedRows = rows.map((row) => {
          const normalized = {};
          for (const key of Object.keys(row)) {
            normalized[key.toLowerCase()] = row[key];
          }
          return normalized;
        });

        lastSelect = { columns, rows: normalizedRows };
        execution.push({
          statementNumber: idx + 1,
          type: 'SELECT',
          rowCount: normalizedRows.length
        });
      } else {
        execution.push({
          statementNumber: idx + 1,
          type: 'DML_DDL',
          rowsAffected: rows?.affectedRows ?? null
        });
      }
    }

    await conn.commit();

    res.json({
      success: true,
      executedStatements: statements.length,
      execution,
      columns: lastSelect.columns,
      rows: lastSelect.rows
    });
  } catch (err) {
    if (conn) {
      await conn.rollback();
    }
    console.error('Error:', err);
    res.status(500).json({ error: err.message });
  } finally {
    if (conn) {
      conn.release();
    }
  }
});

// UPDATE mess menu by (gender, category, week, day)
router.put('/mess/:id', verifyAdmin, async (req, res) => {
  try {
    const { gender, category, week, day, breakfast, lunch, snacks, dinner } = req.body;

    if (!gender || !category || !week || !day) {
      return res.status(400).json({ error: 'gender, category, week, and day are required to update menu row' });
    }

    const sql = `
      UPDATE mess_menu
      SET breakfast = ?, lunch = ?, snacks = ?, dinner = ?
      WHERE gender = ? AND category = ? AND week = ? AND day = ?
    `;

    await executeQuery(sql, [breakfast, lunch, snacks, dinner, gender, category, Number(week), day]);
    res.json({ success: true });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// INSERT mess menu
router.post('/mess', verifyAdmin, async (req, res) => {
  try {
    const { gender, category, week, day, breakfast, lunch, snacks, dinner } = req.body;

    const sql = `
      INSERT INTO mess_menu (gender, category, week, day, breakfast, lunch, snacks, dinner)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    `;

    await executeQuery(sql, [gender, category, Number(week), day, breakfast, lunch, snacks, dinner]);
    res.json({ success: true });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// UPDATE laundry schedule
router.put('/laundry/:block/:day', verifyAdmin, async (req, res) => {
  try {
    const { rooms } = req.body;
    const { block, day } = req.params;

    const sql = 'UPDATE laundry_schedule SET rooms = ? WHERE block = ? AND day_of_month = ?';
    await executeQuery(sql, [rooms, block, Number(day)]);

    res.json({ success: true });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// INSERT laundry schedule
router.post('/laundry', verifyAdmin, async (req, res) => {
  try {
    const { block, day_of_month, rooms } = req.body;

    const sql = 'INSERT INTO laundry_schedule (block, day_of_month, rooms) VALUES (?, ?, ?)';
    await executeQuery(sql, [block, Number(day_of_month), rooms]);

    res.json({ success: true });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

export default router;

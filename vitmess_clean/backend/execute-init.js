import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { getConnection, initMySQLPool, closePool } from './mysql.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

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

async function executeInit() {
  let conn;
  try {
    console.log('Connecting to MySQL...');
    await initMySQLPool();
    conn = await getConnection();
    console.log('Connection successful!\n');

    const sqlPath = path.join(__dirname, '../database/init.sql');
    const sqlContent = fs.readFileSync(sqlPath, 'utf8');
    const statements = parseSqlScript(sqlContent);

    console.log(`Found ${statements.length} SQL statements\n`);

    await conn.beginTransaction();

    let executed = 0;
    for (let i = 0; i < statements.length; i += 1) {
      const stmt = statements[i];
      const preview = stmt.replace(/\s+/g, ' ').slice(0, 75);
      try {
        await conn.query(stmt);
        executed += 1;
        console.log(`[${i + 1}/${statements.length}] ✓ ${preview}...`);
      } catch (err) {
        console.log(`[${i + 1}/${statements.length}] ✗ ${preview}...`);
        throw err;
      }
    }

    await conn.commit();
    console.log(`\n✓ Executed ${executed} statements and committed.`);

    const [messCountRows] = await conn.query('SELECT COUNT(*) AS count FROM mess_menu');
    const [laundryCountRows] = await conn.query('SELECT COUNT(*) AS count FROM laundry_schedule');

    console.log(`Mess Menu rows: ${messCountRows[0].count}`);
    console.log(`Laundry rows: ${laundryCountRows[0].count}`);
    console.log('\n✅ MySQL initialization complete.');
  } catch (err) {
    if (conn) {
      await conn.rollback();
    }
    console.error('\nFatal Error:', err.message);
    process.exit(1);
  } finally {
    if (conn) {
      conn.release();
    }
    await closePool();
  }
}

executeInit();

import express from 'express';
import { executeQuery } from '../mysql.js';

const router = express.Router();

// GET mess menu filtered by gender, category, and week
router.get('/', async (req, res) => {
  try {
    const { gender, category, week } = req.query;
    let sql = 'SELECT gender, category, week, day, breakfast, lunch, snacks, dinner FROM mess_menu';
    const binds = [];
    const conditions = [];

    if (gender) {
      conditions.push('gender = ?');
      binds.push(gender);
    }
    if (category) {
      conditions.push('category = ?');
      binds.push(category);
    }
    if (week) {
      conditions.push('week = ?');
      binds.push(parseInt(week, 10));
    }

    if (conditions.length > 0) {
      sql += ' WHERE ' + conditions.join(' AND ');
    }

    sql += ' ORDER BY week, day';
    
    const rows = await executeQuery(sql, binds);
    res.json(rows);
  } catch (err) {
    console.error('Error:', err);
    res.status(500).json({ error: err.message });
  }
});

export default router;

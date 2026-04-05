import express from 'express';
import { executeQuery } from '../mysql.js';

const router = express.Router();

// GET laundry schedule filtered by block
router.get('/', async (req, res) => {
  try {
    const { block } = req.query;
    let sql = 'SELECT block, day_of_month, rooms FROM laundry_schedule';
    const binds = [];

    if (block) {
      sql += ' WHERE block = ?';
      binds.push(block);
    }

    sql += ' ORDER BY block, day_of_month';
    
    const rows = await executeQuery(sql, binds);
    res.json(rows);
  } catch (err) {
    console.error('Error:', err);
    res.status(500).json({ error: err.message });
  }
});

export default router;

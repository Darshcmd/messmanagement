import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();
    const queries = [
      'SELECT COUNT(*) AS c FROM mess_menu',
      'SELECT * FROM mess_menu LIMIT 1',
      'SELECT * FROM mess_menu LIMIT 10',
      'SELECT * FROM mess_menu WHERE week = 1 LIMIT 5'
    ];

    for (const q of queries) {
      const [rows] = await conn.query(q);
      console.log(`Query: ${q}`);
      console.log(`Rows: ${rows.length}`);
    }
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

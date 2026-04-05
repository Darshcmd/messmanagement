import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();
    const [version] = await conn.query('SELECT VERSION() AS version');
    const [counts] = await conn.query(`
      SELECT 
        (SELECT COUNT(*) FROM mess_menu) AS mess_count,
        (SELECT COUNT(*) FROM laundry_schedule) AS laundry_count
    `);
    console.log('MySQL version:', version[0].version);
    console.log('Counts:', counts[0]);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

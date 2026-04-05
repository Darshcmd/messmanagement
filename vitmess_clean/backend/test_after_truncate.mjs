import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();
    const [rows] = await conn.query('SELECT COUNT(*) AS cnt FROM mess_menu');
    console.log('mess_menu count:', rows[0].cnt);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

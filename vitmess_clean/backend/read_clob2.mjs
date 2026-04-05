import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();
    const [rows] = await conn.query('SELECT breakfast FROM mess_menu LIMIT 1');
    console.log(rows[0]);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

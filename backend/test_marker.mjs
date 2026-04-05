import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();
    const [rows] = await conn.query('SELECT gender, category, week, day FROM mess_menu LIMIT 5');
    console.log(rows);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

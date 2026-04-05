import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();
    const [allRows] = await conn.query('SELECT * FROM mess_menu LIMIT 2');
    console.log('All:', allRows);

    const [menRows] = await conn.query('SELECT * FROM mess_menu WHERE gender = ? LIMIT 2', ['Men']);
    console.log('Men:', menRows);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

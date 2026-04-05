import { getConnection, closePool } from './mysql.js';

async function run() {
  let conn;
  try {
    conn = await getConnection();

    let [rows] = await conn.query('SELECT * FROM mess_menu LIMIT 3');
    console.log('Sample rows:', rows.length);

    [rows] = await conn.query('SELECT gender, category, week, day FROM mess_menu LIMIT 3');
    console.log('Selected fields:', rows);

    [rows] = await conn.query('SELECT COUNT(*) AS cnt FROM mess_menu');
    console.log('Total count:', rows[0].cnt);
  } catch (err) {
    console.error(err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

run();

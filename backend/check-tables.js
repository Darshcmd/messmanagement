import { getConnection, closePool } from './mysql.js';

async function checkTables() {
  let conn;
  try {
    conn = await getConnection();

    const [m] = await conn.query('SELECT COUNT(*) AS count FROM mess_menu');
    const [l] = await conn.query('SELECT COUNT(*) AS count FROM laundry_schedule');

    console.log(`mess_menu rows: ${m[0].count}`);
    console.log(`laundry_schedule rows: ${l[0].count}`);

    const [menuSample] = await conn.query('SELECT gender, category, week, day FROM mess_menu LIMIT 3');
    const [laundrySample] = await conn.query('SELECT block, day_of_month, rooms FROM laundry_schedule ORDER BY block, day_of_month LIMIT 3');

    console.log('\nmenu sample:', menuSample);
    console.log('laundry sample:', laundrySample);
  } catch (err) {
    console.error('Error:', err.message);
  } finally {
    if (conn) conn.release();
    await closePool();
  }
}

checkTables();

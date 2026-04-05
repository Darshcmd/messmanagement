import mysql from 'mysql2/promise';

let pool = null;

export async function initMySQLPool() {
  if (pool) {
    return pool;
  }

  const host = process.env.MYSQL_HOST || 'localhost';
  const port = Number(process.env.MYSQL_PORT || 3306);
  const user = process.env.MYSQL_USER || 'root';
  const password = process.env.MYSQL_PASSWORD || '';
  const database = process.env.MYSQL_DATABASE || 'vitmess';

  const buildPool = () => mysql.createPool({
    host,
    port,
    user,
    password,
    database,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    multipleStatements: false
  });

  try {
    pool = buildPool();

    const conn = await pool.getConnection();
    await conn.ping();
    conn.release();
    console.log('✓ MySQL connection pool initialized');
    return pool;
  } catch (err) {
    if (err?.code === 'ER_BAD_DB_ERROR') {
      const adminConn = await mysql.createConnection({ host, port, user, password });
      await adminConn.query(`CREATE DATABASE IF NOT EXISTS \`${database}\``);
      await adminConn.end();

      pool = buildPool();
      const conn = await pool.getConnection();
      await conn.ping();
      conn.release();
      console.log(`✓ MySQL database '${database}' created`);
      console.log('✓ MySQL connection pool initialized');
      return pool;
    }

    console.error('MySQL pool error:', err);
    throw err;
  }
}

export async function closePool() {
  if (!pool) {
    return;
  }
  await pool.end();
  pool = null;
  console.log('✓ MySQL connection pool closed');
}

export async function getConnection() {
  if (!pool) {
    await initMySQLPool();
  }
  return pool.getConnection();
}

export async function executeQuery(sql, binds = []) {
  const conn = await getConnection();
  try {
    const [rows] = await conn.execute(sql, binds);
    if (Array.isArray(rows)) {
      return rows;
    }
    return [];
  } finally {
    conn.release();
  }
}

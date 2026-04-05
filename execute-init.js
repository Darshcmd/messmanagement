const oracledb = require('oracledb');
const fs = require('fs');
const path = require('path');

async function executeInit() {
  let connection;
  try {
    console.log('Connecting to FREEPDB1...');
    connection = await oracledb.getConnection({
      user: 'system',
      password: 'oracle',
      connectionString: 'localhost:1521/FREEPDB1'
    });

    console.log('Connection successful!');
    
    // Read the init.sql file
    const sqlFile = fs.readFileSync(path.join(__dirname, 'vitmess_clean/database/init.sql'), 'utf8');
    
    // Split by / for statement separation
    const statements = sqlFile.split('/\n').filter(s => s.trim().length > 0);
    
    console.log(`Executing ${statements.length} statements...`);
    
    for (const statement of statements) {
      const trimmed = statement.trim();
      if (trimmed.length > 0) {
        try {
          console.log(`Executing: ${trimmed.substring(0, 80)}...`);
          await connection.execute(trimmed);
        } catch (err) {
          console.log(`  → ${err.message}`);
        }
      }
    }
    
    // Verify the data was loaded
    console.log('\n=== VERIFICATION ===');
    
    const result1 = await connection.execute('SELECT COUNT(*) as count FROM mess_menu');
    console.log(`✓ Mess Menu Records: ${result1.rows[0][0]}`);
    
    const result2 = await connection.execute('SELECT COUNT(*) as count FROM laundry_schedule');
    console.log(`✓ Laundry Schedule Records: ${result2.rows[0][0]}`);
    
    console.log('\n✅ Database initialization complete!');

  } catch (err) {
    console.error('Error:', err.message);
  } finally {
    if (connection) {
      try {
        await connection.close();
      } catch (err) {
        console.error('Error closing connection:', err.message);
      }
    }
  }
}

executeInit();

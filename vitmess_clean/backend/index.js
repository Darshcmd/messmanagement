import 'dotenv/config';
import express from 'express';
import cors from 'cors';
import { initMySQLPool } from './mysql.js';

const app = express();
app.use(cors());
app.use(express.json({ limit: '10mb' }));

// Routes
import authRoutes from './routes/auth.js';
import messRoutes from './routes/mess.js';
import laundryRoutes from './routes/laundry.js';
import adminRoutes from './routes/admin.js';

app.use('/api/auth', authRoutes);
app.use('/api/mess', messRoutes);
app.use('/api/laundry', laundryRoutes);
app.use('/api/admin', adminRoutes);

app.get('/', (req, res) => {
  res.json({ message: 'VIT MESS API running' });
});

async function start() {
  try {
    await initMySQLPool();
    const port = process.env.PORT || 4000;
    app.listen(port, () => {
      console.log(`✓ Server running on http://localhost:${port}`);
    });
  } catch (err) {
    console.error('Failed to start:', err);
    process.exit(1);
  }
}

start();

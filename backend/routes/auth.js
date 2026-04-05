import express from 'express';
const router = express.Router();

// Simple JWT-like token (in production, use real JWT)
const ADMIN_TOKEN = 'admin-token-vitmess';

// Login endpoint
router.post('/login', (req, res) => {
  const { username, password, role } = req.body;

  if (role === 'admin') {
    if (username === 'admin' && password === 'admin123') {
      return res.json({ token: ADMIN_TOKEN, role: 'admin' });
    }
  } else if (role === 'student') {
    if (username && password) {
      const token = Buffer.from(`${username}:student`).toString('base64');
      return res.json({ token, role: 'student', username });
    }
  }

  res.status(401).json({ error: 'Invalid credentials' });
});

// Verify token
router.post('/verify', (req, res) => {
  const { token } = req.body;
  if (!token) return res.status(401).json({ error: 'No token' });

  if (token === ADMIN_TOKEN) {
    return res.json({ valid: true, role: 'admin' });
  }

  try {
    const decoded = Buffer.from(token, 'base64').toString();
    if (decoded.includes('student')) {
      return res.json({ valid: true, role: 'student' });
    }
  } catch (e) {}

  res.status(401).json({ valid: false });
});

export default router;

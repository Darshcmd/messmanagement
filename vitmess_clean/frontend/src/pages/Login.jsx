import React, { useState } from 'react';

export default function Login({ onLogin }) {
  const [role, setRole] = useState('student');
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    setError('');

    if (role === 'admin') {
      if (username === 'admin' && password === 'admin123') {
        onLogin({ username: 'Admin', role: 'admin', token: 'admin-token-vitmess' });
      } else {
        setError('Invalid admin credentials. Use admin / admin123.');
      }
      return;
    }

    if (username.trim().length < 2) {
      setError('Student username must be at least 2 characters.');
      return;
    }

    onLogin({ username: username.trim(), role: 'student', token: `student-${username.trim()}` });
  };

  return (
    <div style={styles.page}>
      <div style={styles.card}>
        <h1 style={styles.title}>VIT Mess Management</h1>
        <p style={styles.subtitle}>Student and Admin Login</p>

        <div style={styles.roleWrap}>
          <button
            type="button"
            style={{ ...styles.roleBtn, ...(role === 'student' ? styles.roleActive : {}) }}
            onClick={() => setRole('student')}
          >
            Student
          </button>
          <button
            type="button"
            style={{ ...styles.roleBtn, ...(role === 'admin' ? styles.roleActive : {}) }}
            onClick={() => setRole('admin')}
          >
            Admin
          </button>
        </div>

        {error && <div style={styles.error}>{error}</div>}

        <form onSubmit={handleSubmit}>
          <input
            style={styles.input}
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            placeholder="Username"
            required
          />
          <input
            style={styles.input}
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="Password"
            required
          />
          <button style={styles.submit} type="submit">Login</button>
        </form>

        <p style={styles.hint}>
          {role === 'admin' ? 'Admin demo: admin / admin123' : 'Student: any username and password'}
        </p>
      </div>
    </div>
  );
}

const styles = {
  page: {
    minHeight: '100vh',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    background: '#f3f4f6',
    padding: 16,
    fontFamily: 'system-ui, -apple-system, Segoe UI, Roboto, sans-serif'
  },
  card: {
    width: '100%',
    maxWidth: 420,
    background: '#fff',
    borderRadius: 12,
    padding: 20,
    boxShadow: '0 8px 30px rgba(0,0,0,0.08)'
  },
  title: {
    margin: 0,
    fontSize: 24,
    color: '#111827'
  },
  subtitle: {
    margin: '6px 0 16px',
    color: '#6b7280',
    fontSize: 14
  },
  roleWrap: {
    display: 'grid',
    gridTemplateColumns: '1fr 1fr',
    gap: 10,
    marginBottom: 12
  },
  roleBtn: {
    border: '1px solid #d1d5db',
    background: '#fff',
    padding: 10,
    borderRadius: 8,
    cursor: 'pointer'
  },
  roleActive: {
    background: '#111827',
    color: '#fff',
    borderColor: '#111827'
  },
  input: {
    width: '100%',
    boxSizing: 'border-box',
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: 11,
    marginBottom: 10,
    fontSize: 14
  },
  submit: {
    width: '100%',
    border: 'none',
    borderRadius: 8,
    background: '#2563eb',
    color: '#fff',
    padding: 11,
    fontWeight: 600,
    cursor: 'pointer'
  },
  error: {
    background: '#fee2e2',
    border: '1px solid #fecaca',
    color: '#991b1b',
    borderRadius: 8,
    padding: 10,
    marginBottom: 12,
    fontSize: 13
  },
  hint: {
    margin: '12px 0 0',
    color: '#6b7280',
    fontSize: 12
  }
};

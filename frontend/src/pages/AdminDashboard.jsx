import React, { useEffect, useMemo, useState } from 'react';
import axios from 'axios';

const API_BASE = 'http://localhost:4000/api';

export default function AdminDashboard({ onLogout }) {
  const [tab, setTab] = useState('menu');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [messData, setMessData] = useState([]);
  const [laundryData, setLaundryData] = useState([]);

  const [sql, setSql] = useState('SELECT * FROM mess_menu LIMIT 20;');
  const [sqlLoading, setSqlLoading] = useState(false);
  const [sqlError, setSqlError] = useState('');
  const [sqlResult, setSqlResult] = useState(null);

  const headers = useMemo(() => ({ Authorization: `Bearer ${localStorage.getItem('token') || ''}` }), []);

  const fetchAllData = async () => {
    setLoading(true);
    setError('');

    try {
      const [messRes, laundryRes] = await Promise.all([
        axios.get(`${API_BASE}/mess`),
        axios.get(`${API_BASE}/laundry`)
      ]);

      setMessData(messRes.data || []);
      setLaundryData(laundryRes.data || []);
    } catch (err) {
      setError(err.response?.data?.error || 'Failed to load admin data.');
      setMessData([]);
      setLaundryData([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchAllData();
  }, []);

  const executeSql = async () => {
    if (!sql.trim()) {
      setSqlError('Please enter SQL.');
      return;
    }

    setSqlLoading(true);
    setSqlError('');

    try {
      const res = await axios.post(
        `${API_BASE}/admin/execute-sql`,
        { sql },
        { headers }
      );
      setSqlResult(res.data);
      fetchAllData();
    } catch (err) {
      setSqlResult(null);
      setSqlError(err.response?.data?.error || 'SQL execution failed.');
    } finally {
      setSqlLoading(false);
    }
  };

  return (
    <div style={styles.page}>
      <div style={styles.card}>
        <div style={styles.headerRow}>
          <div>
            <h2 style={styles.heading}>Admin Dashboard</h2>
            <p style={styles.help}>View all rooms, hostels, menus, and run SQL scripts.</p>
          </div>
          <button style={styles.secondaryBtn} onClick={onLogout}>Logout</button>
        </div>

        <div style={styles.tabRow}>
          <button style={{ ...styles.tab, ...(tab === 'menu' ? styles.tabActive : {}) }} onClick={() => setTab('menu')}>
            Menu
          </button>
          <button style={{ ...styles.tab, ...(tab === 'laundry' ? styles.tabActive : {}) }} onClick={() => setTab('laundry')}>
            Laundry
          </button>
          <button style={{ ...styles.tab, ...(tab === 'sql' ? styles.tabActive : {}) }} onClick={() => setTab('sql')}>
            SQL
          </button>
          <button style={styles.secondaryBtnSmall} onClick={fetchAllData} disabled={loading}>
            {loading ? 'Refreshing...' : 'Refresh'}
          </button>
        </div>

        {error && <div style={styles.error}>{error}</div>}
      </div>

      {tab === 'menu' && (
        <div style={styles.card}>
          <h3 style={styles.subHeading}>All Menu Entries ({messData.length})</h3>
          <div style={styles.tableWrap}>
            <table style={styles.table}>
              <thead>
                <tr>
                  <th style={styles.th}>Gender</th>
                  <th style={styles.th}>Category</th>
                  <th style={styles.th}>Week</th>
                  <th style={styles.th}>Day</th>
                </tr>
              </thead>
              <tbody>
                {messData.map((row, idx) => (
                  <tr key={`${row.gender}-${row.category}-${row.week}-${row.day}-${idx}`}>
                    <td style={styles.td}>{row.gender}</td>
                    <td style={styles.td}>{row.category}</td>
                    <td style={styles.td}>{row.week}</td>
                    <td style={styles.td}>{row.day}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {tab === 'laundry' && (
        <div style={styles.card}>
          <h3 style={styles.subHeading}>All Laundry Entries ({laundryData.length})</h3>
          <div style={styles.tableWrap}>
            <table style={styles.table}>
              <thead>
                <tr>
                  <th style={styles.th}>Block</th>
                  <th style={styles.th}>Day</th>
                  <th style={styles.th}>Rooms</th>
                </tr>
              </thead>
              <tbody>
                {laundryData.map((row, idx) => (
                  <tr key={`${row.block}-${row.day_of_month}-${idx}`}>
                    <td style={styles.td}>{row.block}</td>
                    <td style={styles.td}>{row.day_of_month}</td>
                    <td style={styles.td}>{row.rooms}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {tab === 'sql' && (
        <div style={styles.card}>
          <h3 style={styles.subHeading}>Run SQL (single or multi-statement script)</h3>
          <p style={styles.help}>You can paste CREATE/INSERT/COMMIT/SELECT script together. The last SELECT result is shown below.</p>

          <textarea
            value={sql}
            onChange={(e) => setSql(e.target.value)}
            style={styles.textarea}
            rows={10}
          />

          <button style={styles.primaryBtn} onClick={executeSql} disabled={sqlLoading}>
            {sqlLoading ? 'Executing...' : 'Execute SQL'}
          </button>

          {sqlError && <div style={styles.error}>{sqlError}</div>}

          {sqlResult && (
            <div style={styles.resultBox}>
              <p style={styles.help}>Executed statements: {sqlResult.executedStatements}</p>
              {Array.isArray(sqlResult.rows) && sqlResult.rows.length > 0 ? (
                <div style={styles.tableWrap}>
                  <table style={styles.table}>
                    <thead>
                      <tr>
                        {(sqlResult.columns || []).map((col) => (
                          <th key={col} style={styles.th}>{col}</th>
                        ))}
                      </tr>
                    </thead>
                    <tbody>
                      {sqlResult.rows.map((row, idx) => (
                        <tr key={idx}>
                          {(sqlResult.columns || []).map((col) => (
                            <td key={`${idx}-${col}`} style={styles.td}>{String(row[col] ?? '')}</td>
                          ))}
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              ) : (
                <p style={styles.help}>No SELECT rows returned in the final statement.</p>
              )}
            </div>
          )}
        </div>
      )}
    </div>
  );
}

const styles = {
  page: {
    minHeight: '100vh',
    background: '#f3f4f6',
    padding: 12,
    fontFamily: 'system-ui, -apple-system, Segoe UI, Roboto, sans-serif'
  },
  card: {
    background: '#fff',
    borderRadius: 12,
    padding: 14,
    marginBottom: 12,
    boxShadow: '0 4px 14px rgba(0,0,0,0.06)'
  },
  headerRow: {
    display: 'flex',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    gap: 10
  },
  heading: {
    margin: 0,
    color: '#111827',
    fontSize: 22
  },
  subHeading: {
    margin: '0 0 10px',
    color: '#111827',
    fontSize: 16
  },
  help: {
    margin: '6px 0',
    color: '#6b7280',
    fontSize: 13
  },
  tabRow: {
    display: 'flex',
    flexWrap: 'wrap',
    gap: 8,
    marginTop: 12
  },
  tab: {
    border: '1px solid #d1d5db',
    borderRadius: 8,
    background: '#fff',
    padding: '8px 12px',
    cursor: 'pointer'
  },
  tabActive: {
    background: '#111827',
    color: '#fff',
    borderColor: '#111827'
  },
  primaryBtn: {
    border: 'none',
    borderRadius: 8,
    padding: 10,
    background: '#2563eb',
    color: '#fff',
    cursor: 'pointer'
  },
  secondaryBtn: {
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: '8px 12px',
    background: '#fff',
    color: '#111827',
    cursor: 'pointer'
  },
  secondaryBtnSmall: {
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: '8px 10px',
    background: '#fff',
    color: '#111827',
    cursor: 'pointer'
  },
  error: {
    background: '#fee2e2',
    border: '1px solid #fecaca',
    color: '#991b1b',
    borderRadius: 8,
    padding: 10,
    marginTop: 8,
    fontSize: 13
  },
  textarea: {
    width: '100%',
    boxSizing: 'border-box',
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: 10,
    fontSize: 13,
    fontFamily: 'ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace',
    marginBottom: 10
  },
  resultBox: {
    marginTop: 10,
    borderTop: '1px solid #e5e7eb',
    paddingTop: 10
  },
  tableWrap: {
    width: '100%',
    overflowX: 'auto'
  },
  table: {
    width: '100%',
    borderCollapse: 'collapse',
    fontSize: 13
  },
  th: {
    textAlign: 'left',
    borderBottom: '1px solid #d1d5db',
    padding: 8,
    whiteSpace: 'nowrap'
  },
  td: {
    borderBottom: '1px solid #e5e7eb',
    padding: 8,
    verticalAlign: 'top'
  }
};

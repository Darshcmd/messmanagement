import React, { useEffect, useMemo, useState } from 'react';
import axios from 'axios';

const API_BASE = 'http://localhost:4000/api';
const HOSTELS = ['A', 'B', 'CB', 'CG', 'D1', 'D2', 'E'];
const DAY_ORDER = {
  Monday: 1,
  Tuesday: 2,
  Wednesday: 3,
  Thursday: 4,
  Friday: 5,
  Saturday: 6,
  Sunday: 7
};

function firstNumber(value) {
  const match = String(value || '').match(/\d+/);
  return match ? parseInt(match[0], 10) : null;
}

function roomFitsRange(roomNumber, roomsRange) {
  const room = firstNumber(roomNumber);
  if (room === null) {
    return false;
  }

  const parts = String(roomsRange || '').split('-');
  if (parts.length !== 2) {
    return false;
  }

  const start = firstNumber(parts[0]);
  const end = firstNumber(parts[1]);
  if (start === null || end === null) {
    return false;
  }

  return room >= Math.min(start, end) && room <= Math.max(start, end);
}

export default function StudentDashboard({ user, onLogout }) {
  const [profile, setProfile] = useState(() => {
    const saved = localStorage.getItem('studentProfile');
    return saved
      ? JSON.parse(saved)
      : {
          name: user?.username || '',
          hostel: 'A',
          gender: 'Men',
          category: 'Veg',
          roomNumber: '',
          week: 1
        };
  });
  const [submitted, setSubmitted] = useState(() => !!localStorage.getItem('studentProfile'));
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [messData, setMessData] = useState([]);
  const [laundryData, setLaundryData] = useState([]);

  const sortedMenu = useMemo(
    () => [...messData].sort((a, b) => (DAY_ORDER[a.day] || 99) - (DAY_ORDER[b.day] || 99)),
    [messData]
  );

  const myLaundryDays = useMemo(
    () => laundryData.filter((row) => roomFitsRange(profile.roomNumber, row.rooms)),
    [laundryData, profile.roomNumber]
  );

  const fetchData = async (currentProfile) => {
    setLoading(true);
    setError('');

    try {
      const [menuRes, laundryRes] = await Promise.all([
        axios.get(`${API_BASE}/mess`, {
          params: {
            gender: currentProfile.gender,
            category: currentProfile.category,
            week: currentProfile.week
          }
        }),
        axios.get(`${API_BASE}/laundry`, {
          params: { block: currentProfile.hostel }
        })
      ]);

      setMessData(menuRes.data || []);
      setLaundryData(laundryRes.data || []);
    } catch (err) {
      setError(err.response?.data?.error || 'Could not load student data.');
      setMessData([]);
      setLaundryData([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (submitted) {
      fetchData(profile);
    }
  }, [submitted]);

  const submitProfile = (e) => {
    e.preventDefault();
    if (!profile.name.trim() || !profile.roomNumber.trim()) {
      setError('Please fill name and room number.');
      return;
    }

    localStorage.setItem('studentProfile', JSON.stringify(profile));
    setSubmitted(true);
    fetchData(profile);
  };

  if (!submitted) {
    return (
      <div style={styles.page}>
        <div style={styles.card}>
          <h2 style={styles.heading}>Student Details</h2>
          <p style={styles.help}>Enter your details once. Your prefilled mess and laundry data will be shown automatically.</p>

          {error && <div style={styles.error}>{error}</div>}

          <form onSubmit={submitProfile}>
            <input
              style={styles.input}
              placeholder="Name"
              value={profile.name}
              onChange={(e) => setProfile({ ...profile, name: e.target.value })}
              required
            />

            <input
              style={styles.input}
              placeholder="Room Number (example: 512)"
              value={profile.roomNumber}
              onChange={(e) => setProfile({ ...profile, roomNumber: e.target.value })}
              required
            />

            <select
              style={styles.input}
              value={profile.hostel}
              onChange={(e) => setProfile({ ...profile, hostel: e.target.value })}
            >
              {HOSTELS.map((hostel) => (
                <option key={hostel} value={hostel}>
                  Hostel {hostel}
                </option>
              ))}
            </select>

            <select
              style={styles.input}
              value={profile.gender}
              onChange={(e) => setProfile({ ...profile, gender: e.target.value })}
            >
              <option value="Men">Men</option>
              <option value="Women">Women</option>
            </select>

            <select
              style={styles.input}
              value={profile.category}
              onChange={(e) => setProfile({ ...profile, category: e.target.value })}
            >
              <option value="Veg">Veg</option>
              <option value="Non-Veg">Non-Veg</option>
              <option value="Special">Special</option>
            </select>

            <select
              style={styles.input}
              value={profile.week}
              onChange={(e) => setProfile({ ...profile, week: Number(e.target.value) })}
            >
              <option value={1}>Week 1</option>
              <option value={2}>Week 2</option>
            </select>

            <button style={styles.primaryBtn} type="submit">Show My Details</button>
            <button style={styles.secondaryBtn} type="button" onClick={onLogout}>Logout</button>
          </form>
        </div>
      </div>
    );
  }

  return (
    <div style={styles.page}>
      <div style={styles.card}>
        <div style={styles.rowBetween}>
          <div>
            <h2 style={styles.heading}>Hello, {profile.name}</h2>
            <p style={styles.help}>Hostel {profile.hostel} | {profile.gender} | {profile.category} | Week {profile.week}</p>
          </div>
          <button style={styles.secondaryBtnSmall} onClick={onLogout}>Logout</button>
        </div>

        {error && <div style={styles.error}>{error}</div>}

        <div style={styles.actions}>
          <button
            style={styles.secondaryBtnSmall}
            onClick={() => {
              localStorage.removeItem('studentProfile');
              setSubmitted(false);
            }}
          >
            Edit Details
          </button>
          <button style={styles.primaryBtnSmall} onClick={() => fetchData(profile)} disabled={loading}>
            {loading ? 'Refreshing...' : 'Refresh'}
          </button>
        </div>
      </div>

      <div style={styles.card}>
        <h3 style={styles.subHeading}>Your Laundry Days</h3>
        {loading ? <p style={styles.help}>Loading...</p> : null}
        {!loading && myLaundryDays.length === 0 ? (
          <p style={styles.help}>No exact room match found. Full hostel schedule is shown below.</p>
        ) : null}
        {myLaundryDays.map((item, idx) => (
          <div key={`${item.block}-${item.day_of_month}-${idx}`} style={styles.itemRow}>
            <strong>Day {item.day_of_month}</strong>
            <span>Rooms: {item.rooms}</span>
          </div>
        ))}
      </div>

      <div style={styles.card}>
        <h3 style={styles.subHeading}>Mess Menu</h3>
        {!loading && sortedMenu.length === 0 ? <p style={styles.help}>No menu data found.</p> : null}
        {sortedMenu.map((meal, idx) => (
          <div key={`${meal.day}-${idx}`} style={styles.menuCard}>
            <h4 style={styles.menuDay}>{meal.day}</h4>
            <div style={styles.menuItem}><strong>Breakfast:</strong><pre style={styles.pre}>{meal.breakfast || '-'}</pre></div>
            <div style={styles.menuItem}><strong>Lunch:</strong><pre style={styles.pre}>{meal.lunch || '-'}</pre></div>
            <div style={styles.menuItem}><strong>Snacks:</strong><pre style={styles.pre}>{meal.snacks || '-'}</pre></div>
            <div style={styles.menuItem}><strong>Dinner:</strong><pre style={styles.pre}>{meal.dinner || '-'}</pre></div>
          </div>
        ))}
      </div>

      <div style={styles.card}>
        <h3 style={styles.subHeading}>Hostel {profile.hostel} Laundry Schedule</h3>
        {!loading && laundryData.length === 0 ? <p style={styles.help}>No laundry schedule data found.</p> : null}
        {laundryData.map((item, idx) => (
          <div key={`${item.block}-${item.day_of_month}-${idx}`} style={styles.itemRow}>
            <strong>Day {item.day_of_month}</strong>
            <span>Rooms: {item.rooms}</span>
          </div>
        ))}
      </div>
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
  heading: {
    margin: 0,
    color: '#111827',
    fontSize: 20
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
  input: {
    width: '100%',
    boxSizing: 'border-box',
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: 10,
    marginBottom: 10,
    fontSize: 14
  },
  primaryBtn: {
    width: '100%',
    border: 'none',
    borderRadius: 8,
    padding: 11,
    background: '#2563eb',
    color: '#fff',
    fontWeight: 600,
    marginBottom: 8,
    cursor: 'pointer'
  },
  secondaryBtn: {
    width: '100%',
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: 11,
    background: '#fff',
    color: '#111827',
    cursor: 'pointer'
  },
  rowBetween: {
    display: 'flex',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    gap: 10
  },
  actions: {
    display: 'flex',
    gap: 8,
    marginTop: 10
  },
  primaryBtnSmall: {
    flex: 1,
    border: 'none',
    borderRadius: 8,
    padding: 10,
    background: '#2563eb',
    color: '#fff',
    cursor: 'pointer'
  },
  secondaryBtnSmall: {
    flex: 1,
    border: '1px solid #d1d5db',
    borderRadius: 8,
    padding: 10,
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
  itemRow: {
    border: '1px solid #e5e7eb',
    borderRadius: 8,
    padding: 10,
    marginBottom: 8,
    display: 'flex',
    justifyContent: 'space-between',
    gap: 8,
    fontSize: 13,
    flexWrap: 'wrap'
  },
  menuCard: {
    border: '1px solid #e5e7eb',
    borderRadius: 8,
    padding: 10,
    marginBottom: 8
  },
  menuDay: {
    margin: '0 0 8px',
    color: '#1d4ed8'
  },
  menuItem: {
    fontSize: 13,
    marginBottom: 6
  },
  pre: {
    margin: '4px 0 0',
    whiteSpace: 'pre-wrap',
    wordBreak: 'break-word',
    fontFamily: 'inherit',
    fontSize: 13,
    color: '#374151'
  }
};

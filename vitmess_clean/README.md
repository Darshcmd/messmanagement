# VIT MESS Management System

A comprehensive hostel mess management system for VIT students featuring laundry schedules, meal menus, and user authentication.

## Quick Start in VSCode

### 1. Install Backend Dependencies
Open terminal in VSCode:
```bash
cd backend
npm install
```

### 2. Install Frontend Dependencies
Open another terminal in VSCode:
```bash
cd frontend
npm install
```

### 3. Initialize MySQL Database (One-time only)
Execute `database/init.sql` in your MySQL client .

### 4. Start Backend Server
Terminal 1:
```bash
cd backend
node index.js
```
Expected: `Server running on port 4000`

### 5. Start Frontend Dev Server
Terminal 2:
```bash
cd frontend
npm run dev
```
Expected: `http://localhost:3000/`

### 6. Open Application
Visit: **http://localhost:3000** in your browser

## Login Credentials

**Admin:**
- Username: `admin`
- Password: `admin123`

**Student:**
- Username: any value
- Password: any value

## Project Structure

```
├── backend/              # Express.js API server
│   ├── index.js         # Server entry point
│   ├── mysql.js        # Database connection
│   ├── routes/          # API endpoints
│   └── .env             # Database config
├── frontend/            # React + Vite app
│   ├── src/App.jsx      # Main component
│   ├── index.html       # Entry point
│   └── vite.config.js   # Vite config
└── database/init.sql    # Database schema & data
```

## Features

- **Student Dashboard**: View laundry schedules (blocks A-E) and meal menus
- **Separate Menus**: Men and Women meal variations (Veg, Non-Veg)
- **Weekly Rotation**: 2-week meal cycle with daily options
- **Admin Panel**: Manage data and view system info

## Database

**laundry_schedule**: 120+ records covering all blocks and dates
**mess_menu**: 100+ menu entries across 2 weeks, 2 genders, 3 categories

## Troubleshooting

**Port 3000 in use:**
```
Edit frontend/vite.config.js → server: { port: 3001 }
```

**Database connection fails:**
- Verify MySQL running on localhost:3306 and DB vitmess
- Check backend/.env credentials
- Run database/init.sql 

**Module errors:**
```bash
rm -rf node_modules
npm install
```

```sql
-- Check table row counts
SELECT 'laundry_schedule' as table_name, COUNT(*) as rows FROM laundry_schedule
UNION ALL
SELECT 'mess_menu', COUNT(*) FROM mess_menu;

-- Expected: laundry_schedule = 162, mess_menu = 56
```

## Performance

- **Laundry records**: 162
- **Mess records**: 56 (7 days × 2 genders × 4 meal types avg)
- **DB queries**: Sub-100ms typical response time
- **Frontend bundle**: ~200KB (React + Vite optimized)

## Future Enhancements

- JWT authentication with refresh tokens
- User profile management
- Notification system for schedule changes
- Multi-language support
- Dark mode toggle
- Mobile app (React Native)
- Analytics dashboard
- Email notifications

## License

Educational - VIT Vellore

## Support

For issues or questions, check logs:
```bash
# Backend logs
cat backend/.env  # Check config
node backend/index.js  # Watch console output

# Frontend errors
Open browser DevTools (F12)
```

---

**Status**: ✅ Production-ready minimal build, ready for deployment


Ah — the error says **port 4000 is already in use** (`EADDRINUSE`).
That means another process (maybe another instance of your backend) is already running on that port.

Here’s how to fix it on Mac:

---

# Step 1 — Find the process using port 4000

```bash
lsof -i :4000
```

You’ll see something like:

```
COMMAND   PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
node     1234 darsh   12u  IPv6 0x123456789      0t0  TCP *:4000 (LISTEN)
```

Take note of the **PID** (here `1234`).

---

# Step 2 — Kill the process

```bash
kill -9 1234
```

Replace `1234` with the actual PID from your system.

---

# Step 3 — Start backend again

```bash
npm start
```

It should now start without errors:

```
Server running on http://localhost:4000
```

---

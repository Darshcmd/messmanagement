
# VIT Mess Management System

![GitHub Repo stars](https://img.shields.io/github/stars/Darshcmd/messmanagement?style=social)
![GitHub issues](https://img.shields.io/github/issues/Darshcmd/messmanagement)
![GitHub license](https://img.shields.io/github/license/Darshcmd/messmanagement)
![GitHub last commit](https://img.shields.io/github/last-commit/Darshcmd/messmanagement)

A **full-stack hostel mess management system** for VIT students to view weekly mess menus, laundry schedules, and manage user access through authentication.

---

## Screenshots

**Dashboard (Student View)**
![Student Dashboard](path/to/student-dashboard.png)

**Dashboard (Admin View)**
![Admin Dashboard](path/to/admin-dashboard.png)

**Laundry Schedule & Mess Menu**
![Mess Menu](path/to/mess-menu.png)

---

## Features

- **User Authentication** — Admin and student logins
- **Role-Based Views** — Different content for admins and students
- **Weekly Mess Menu** — Rotating menus by gender
- **Laundry Schedule** — View hostel laundry status
- **Admin Panel** — Manage users, menus, and schedules
- **Responsive UI** — Works on desktop and mobile

---

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | React.js, Vite |
| Backend | Node.js, Express.js |
| Database | MySQL |
| Authentication | Session-based |
| Styling | CSS / SCSS |

---

## Project Structure

```
messmanagement/
├── backend/             # Express.js API Server
│   ├── index.js         # Entry point
│   ├── mysql.js         # MySQL connector
│   └── routes/          # API routes
├── frontend/            # React + Vite app
│   ├── src/             # Source files
│   └── vite.config.js   # Vite config
├── database/            # Database schema & data
│   └── init.sql         # Initialization script
└── README.md
```

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Darshcmd/messmanagement.git
cd messmanagement
```

### 2. Install Dependencies

**Backend**
```bash
cd backend
npm install
```

**Frontend**
```bash
cd frontend
npm install
```

### 3. Configure MySQL Database

Start your MySQL server, then run the initialization script:

```sql
SOURCE database/init.sql;
```

Create a `.env` file inside `backend/`:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=messmanagement
PORT=4000
```

### 4. Run the Application

**Backend**
```bash
cd backend
node index.js
```

**Frontend**
```bash
cd frontend
npm run dev
```

Open your browser at `http://localhost:3000`

---

## Default Login Credentials

| Role | Username | Password |
|---|---|---|
| Admin | `admin` | `admin123` |
| Student | `student1` | `student123` |

---

## Future Enhancements

- JWT authentication for secure login
- User profile management
- Real-time notifications for menu and laundry changes
- Analytics dashboard for admin
- Mobile app (iOS/Android)
- Email alerts for schedule updates

---

## Contributing

1. Fork the repository
2. Create a new branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m 'Add feature'`
4. Push to the branch: `git push origin feature-name`
5. Open a Pull Request

---

## Troubleshooting

**Port 3000 or 4000 in use** — Change ports in `vite.config.js` or `backend/.env`

**Database connection fails** — Ensure MySQL is running and `.env` credentials are correct

**Frontend not loading** — Run `npm install` again and restart the dev server

---

## License

This project is for educational purposes at VIT Vellore.

---

## Contact

**Developer:** Darsh Soni  
**GitHub:** [@Darshcmd](https://github.com/Darshcmd)  
**Email:** soni.darsh2004@gmail.com
```

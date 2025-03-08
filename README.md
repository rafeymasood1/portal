# Portal - Learning Management System (LMS)

## 📌 Project Overview

This Learning Management System (LMS), called **Portal**, serves as a centralized platform for students, teachers, and administrators to manage academic activities efficiently. It provides students with easy access to course materials, grades, attendance records, and fee payments, while allowing teachers to streamline course management, grading, and student progress tracking. Additionally, the system enables management to oversee user accounts, course structures, financial transactions, and institutional reports. This platform aims to create a seamless and interactive educational environment, enhancing communication and academic transparency for all users.

## 📂 Folder Structure

```
/portal
│── /backend             # Node.js + Express Backend
│   ├── /config          # Database & Server Config
│   │   ├── db.js        # SQL Server (mssql) connection setup
│   │   ├── dotenv.js    # Environment variable loader
│   ├── /controllers     # Business Logic for Routes
│   │   ├── authController.js
│   │   ├── studentController.js
│   │   ├── courseController.js
│   ├── /models          # Database Schema (if using ORM)
│   │   ├── studentModel.js
│   │   ├── courseModel.js
│   ├── /routes          # API Routes
│   │   ├── authRoutes.js
│   │   ├── studentRoutes.js
│   │   ├── courseRoutes.js
│   ├── /middleware      # Authentication & Authorization
│   │   ├── authMiddleware.js
│   ├── /utils           # Helper Functions
│   │   ├── generateToken.js
│   ├── server.js        # Express App Entry Point
│   ├── package.json     # Dependencies & Scripts
│
│── /frontend            # React.js Frontend
│   ├── /public          # Static Assets
│   │   ├── index.html
│   ├── /src             # React Source Code
│   │   ├── /components  # Reusable UI Components
│   │   │   ├── Navbar.js
│   │   │   ├── Sidebar.js
│   │   ├── /pages       # Page-Level Components
│   │   │   ├── Dashboard.js
│   │   │   ├── Login.js
│   │   │   ├── Courses.js
│   │   ├── /context     # Global State Management (if using Context API)
│   │   ├── /services    # API Calls to Backend
│   │   ├── App.js       # Main App Component
│   │   ├── index.js     # React Entry Point
│   ├── package.json     # React Dependencies
│
│── /database            # SQL Scripts & Migrations
│   ├── init.sql         # Database schema creation
│   ├── seed.sql         # Sample data insertion
│
│── .env                 # Environment Variables
│── .gitignore           # Ignore node_modules, .env, etc.
│── README.md            # Project Documentation
```

## 🚀 Features

The system is divided into three user roles, each with distinct functionalities:

### 🔹 Student Mode

- View Profile: Personal details including name, roll number, email, phone number, and address.
- Course Enrollment: Enroll in courses, view details, and track enrollment status.
- Grade Tracking: View grades for assignments, quizzes, and exams.
- Attendance Tracking: Monitor attendance records for each course.
- Notice Board: View important announcements from the management.
- Fee Payment (EXTRA): Pay fees online and view payment history.

### 🔹 Teacher Mode

- View Profile: Name, email, phone number, and department details.
- Course Management: Create and manage course materials, assignments, and quizzes.
- Grade Entry: Enter grades for students.
- Attendance Tracking: Track student attendance.
- Student Progress: Monitor student performance.
- Notice Board: Post important announcements for students.

### 🔹 Management Mode

- User Management: Create, edit, and delete user accounts for students, teachers, and staff.
- Course Management: Create, edit, and delete courses, including schedules and fees.
- Report Generation: Generate reports on student performance, attendance, and fee payments.
- Notice Board: Post important announcements for students, teachers, and staff.
- System Configuration: Manage system settings, including security and permissions.
- Fee Management (EXTRA): Set fee structures and track payments.

## 🛠️ Setup Instructions

### 1️⃣ Install Dependencies

Ensure you have **Node.js** installed, then run:

```sh
npm install
```

### 2️⃣ Run Development Server

To start the project, run:

```sh
npm run dev
```

### 3️⃣ Access the LMS

The project will run at:

```
http://localhost:5173/
```

## 📜 License

This project is licensed under the **MIT License**.

---


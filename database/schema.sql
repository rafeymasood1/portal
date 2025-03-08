CREATE TABLE Students (
    student_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100),
    roll_number VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    address TEXT
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20) UNIQUE,
    department VARCHAR(50)
);

CREATE TABLE Management (
    management_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20) UNIQUE
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY IDENTITY(1,1),
	course_code VARCHAR(10) UNIQUE,
    course_name VARCHAR(100) UNIQUE, -- Our university doesn't have this as unique :)   -> leading to confusion
    schedule VARCHAR(50),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id) ON DELETE SET NULL
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    course_id INT,
    enrollment_status VARCHAR(20),
	created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    CONSTRAINT chk_enrollment_status CHECK (enrollment_status IN ('repeating', 'registered', 'passed', 'failed'))
	
);

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    course_id INT,
    component_type VARCHAR(20),   -- 'assignment', 'quiz', 'midterm', 'final', etc.
    component_name VARCHAR(50),   -- 'Quiz 1', 'Assignment 1', 'Midterm', etc.
    marks_obtained DECIMAL(3, 2) CHECK (marks_obtained >= 0),
    total_marks DECIMAL(3, 2) CHECK (total_marks >= 5),
	weightage DECIMAL(3, 2) CHECK (weightage > 0), 
	weightage_gained AS (marks_obtained/total_marks * weightage) PERSISTED,
	created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    course_id INT,
    attendance_date DATE,
	[status] VARCHAR(10) CHECK ([status] IN ('present', 'absent'))
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
);

CREATE TABLE Notices (
    notice_id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(255),
    content VARCHAR(MAX),
    poster_teacher_id INT NULL,
    poster_management_id INT NULL,
	created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (poster_teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (poster_management_id) REFERENCES Management(management_id)
);

CREATE TABLE Fees (
    fee_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    amount DECIMAL(10, 2),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    CONSTRAINT chk_payment_status CHECK (payment_status IN ('paid', 'unpaid', 'pending'))
);

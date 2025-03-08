-- Insert sample Students
INSERT INTO Students (name, roll_number, email, phone_number, address) VALUES
('Alice Johnson', 'CS001', 'alice@example.com', '1234567890', '123 Main St'),
('Bob Smith', 'CS002', 'bob@example.com', '0987654321', '456 Oak St'),
('Charlie Brown', 'CS003', 'charlie@example.com', '1122334455', '789 Pine St'),
('David Williams', 'CS004', 'david@example.com', '2233445566', '101 Elm St'),
('Emma Davis', 'CS005', 'emma@example.com', '3344556677', '202 Maple St'),
('Frank Miller', 'CS006', 'frank@example.com', '4455667788', '303 Birch St'),
('Grace Wilson', 'CS007', 'grace@example.com', '5566778899', '404 Cedar St'),
('Henry Moore', 'CS008', 'henry@example.com', '6677889900', '505 Spruce St'),
('Ivy Taylor', 'CS009', 'ivy@example.com', '7788990011', '606 Walnut St'),
('Jack Anderson', 'CS010', 'jack@example.com', '8899001122', '707 Cherry St');

-- Insert sample Teachers
INSERT INTO Teachers (name, email, phone_number, department) VALUES
('Dr. John Doe', 'johndoe@university.edu', '9998887777', 'Computer Science'),
('Prof. Jane Smith', 'janesmith@university.edu', '8887776666', 'Mathematics'),
('Dr. Robert Brown', 'robert@university.edu', '7776665555', 'Physics'),
('Prof. Susan Lee', 'susan@university.edu', '6665554444', 'Chemistry'),
('Dr. Michael Scott', 'michael@university.edu', '5554443333', 'Biology');

-- Insert sample Management
INSERT INTO Management (name, email, phone_number) VALUES
('Admin One', 'admin1@university.edu', '7776665555'),
('Admin Two', 'admin2@university.edu', '6665554444'),
('Admin Three', 'admin3@university.edu', '5554443333');

-- Insert sample Courses
INSERT INTO Courses (course_code, course_name, schedule, teacher_id) VALUES
('CS101', 'Intro to CS', 'Mon-Wed 10AM', 1),
('MATH101', 'Calculus I', 'Tue-Thu 2PM', 2),
('PHY101', 'Physics I', 'Mon-Wed 3PM', 3),
('CHEM101', 'General Chemistry', 'Tue-Thu 11AM', 4),
('BIO101', 'Biology Basics', 'Mon-Wed 1PM', 5);

-- Insert sample Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_status) VALUES
(1, 1, 'registered'),
(2, 1, 'registered'),
(3, 2, 'repeating'),
(4, 3, 'registered'),
(5, 4, 'registered'),
(6, 5, 'registered'),
(7, 1, 'repeating'),
(8, 2, 'passed'),
(9, 3, 'failed'),
(10, 4, 'registered');

-- Insert sample Grades
INSERT INTO Grades (student_id, course_id, component_type, component_name, marks_obtained, total_marks, weightage) VALUES
(1, 1, 'quiz', 'Quiz 1', 8.5, 10, 5),
(2, 1, 'midterm', 'Midterm Exam', 25, 30, 30),
(3, 2, 'assignment', 'Assignment 1', 10, 15, 10),
(4, 3, 'quiz', 'Quiz 2', 7, 10, 5),
(5, 4, 'midterm', 'Midterm Exam', 20, 30, 30),
(6, 5, 'final', 'Final Exam', 85, 100, 50),
(7, 1, 'quiz', 'Quiz 3', 6, 10, 5),
(8, 2, 'assignment', 'Assignment 2', 14, 15, 10),
(9, 3, 'midterm', 'Midterm Exam', 18, 30, 30),
(10, 4, 'final', 'Final Exam', 90, 100, 50);

-- Insert sample Attendance
INSERT INTO Attendance (student_id, course_id, attendance_date, status) VALUES
(1, 1, '2025-03-01', 'present'),
(2, 1, '2025-03-01', 'absent'),
(3, 2, '2025-03-01', 'present'),
(4, 3, '2025-03-01', 'present'),
(5, 4, '2025-03-01', 'absent'),
(6, 5, '2025-03-01', 'present'),
(7, 1, '2025-03-01', 'present'),
(8, 2, '2025-03-01', 'absent'),
(9, 3, '2025-03-01', 'present'),
(10, 4, '2025-03-01', 'present');

-- Insert sample Notices
INSERT INTO Notices (title, content, poster_teacher_id, poster_management_id) VALUES
('Midterm Schedule', 'Midterm exams start next week.', 1, NULL),
('Holiday Notice', 'Campus will be closed on Friday.', NULL, 1),
('New Course Announcement', 'New courses available next semester.', 2, NULL);

-- Insert sample Fees
INSERT INTO Fees (student_id, amount, payment_status, payment_date) VALUES
(1, 5000.00, 'paid', '2025-02-20'),
(2, 5000.00, 'pending', NULL),
(3, 5000.00, 'unpaid', NULL),
(4, 6000.00, 'paid', '2025-02-18'),
(5, 6000.00, 'pending', NULL),
(6, 6000.00, 'unpaid', NULL),
(7, 7000.00, 'paid', '2025-02-15'),
(8, 7000.00, 'pending', NULL),
(9, 7000.00, 'unpaid', NULL),
(10, 8000.00, 'paid', '2025-02-10');

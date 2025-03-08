-- Insert sample Students
INSERT INTO Students (name, roll_number, email, phone_number, address) VALUES
('Alice Johnson', 'CS001', 'alice@example.com', '1234567890', '123 Main St'),
('Bob Smith', 'CS002', 'bob@example.com', '0987654321', '456 Oak St'),
('Charlie Brown', 'CS003', 'charlie@example.com', '1122334455', '789 Pine St');

-- Insert sample Teachers
INSERT INTO Teachers (name, email, phone_number, department) VALUES
('Dr. John Doe', 'johndoe@university.edu', '9998887777', 'Computer Science'),
('Prof. Jane Smith', 'janesmith@university.edu', '8887776666', 'Mathematics');

-- Insert sample Management
INSERT INTO Management (name, email, phone_number) VALUES
('Admin One', 'admin1@university.edu', '7776665555'),
('Admin Two', 'admin2@university.edu', '6665554444');

-- Insert sample Courses
INSERT INTO Courses (course_code, course_name, schedule, teacher_id) VALUES
('CS101', 'Intro to CS', 'Mon-Wed 10AM', 1),
('MATH101', 'Calculus I', 'Tue-Thu 2PM', 2);

-- Insert sample Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_status) VALUES
(1, 1, 'registered'),
(2, 1, 'registered'),
(3, 2, 'repeating');

-- Insert sample Grades
INSERT INTO Grades (student_id, course_id, component_type, component_name, marks_obtained, total_marks, weightage) VALUES
(1, 1, 'quiz', 'Quiz 1', 8.5, 10, 5),
(2, 1, 'midterm', 'Midterm Exam', 25, 30, 30),
(3, 2, 'assignment', 'Assignment 1', 10, 15, 10);

-- Insert sample Attendance
INSERT INTO Attendance (student_id, course_id, attendance_date, status) VALUES
(1, 1, '2025-03-01', 'present'),
(2, 1, '2025-03-01', 'absent'),
(3, 2, '2025-03-01', 'present');

-- Insert sample Notices
INSERT INTO Notices (title, content, poster_teacher_id, poster_management_id) VALUES
('Midterm Schedule', 'Midterm exams start next week.', 1, NULL),
('Holiday Notice', 'Campus will be closed on Friday.', NULL, 1);

-- Insert sample Fees
INSERT INTO Fees (student_id, amount, payment_status, payment_date) VALUES
(1, 5000.00, 'paid', '2025-02-20'),
(2, 5000.00, 'pending', NULL),
(3, 5000.00, 'unpaid', NULL);

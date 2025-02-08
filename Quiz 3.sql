-- QUIZ 3

/* 1. Select
2. Alter
3. Update
4. delete
5. Add and drop Constraints
6. operators
7. Functions
8. Joins
9. Subqueries
10. clauses */

drop database VESP; -- to drop the database

create database VESP;

use VESP;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(255),
    EnrollmentDate DATE NOT NULL,
    Major VARCHAR(100),
    GPA DECIMAL(3, 2),
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(10) UNIQUE NOT NULL,
    Credits INT NOT NULL,
    Department VARCHAR(100),
    InstructorID INT,
    Semester ENUM('Fall', 'Spring', 'Summer') NOT NULL,
    Year INT NOT NULL,
    MaxEnrollment INT,
    Description TEXT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Department VARCHAR(100),
    HireDate DATE NOT NULL,
    OfficeLocation VARCHAR(100),
    Salary DECIMAL(10, 2),
    CoursesTaught TEXT,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);


-- Inserting Records into the Students Table
INSERT INTO Students (FirstName, LastName, DateOfBirth, Email, Phone, Address, EnrollmentDate, Major, GPA, Status) VALUES
('John', 'Doe', '2000-01-15', 'john.doe@example.com', '123-456-7890', '123 Main St, Cityville', '2020-08-20', 'Computer Science', 3.5, 'Active'),
('Jane', 'Smith', '1999-02-20', 'jane.smith@example.com', '234-567-8901', '456 Elm St, Townsville', '2020-08-20', 'Mathematics', 3.8, 'Active'),
('Alice', 'Johnson', '2001-03-25', 'alice.johnson@example.com', '345-678-9012', '789 Oak St, Villagetown', '2021-08-20', 'Biology', 3.2, 'Active'),
('Bob', 'Brown', '2000-04-30', 'bob.brown@example.com', '456-789-0123', '321 Pine St, Cityville', '2020-08-20', 'Physics', 3.6, 'Active'),
('Charlie', 'Davis', '1998-05-05', 'charlie.davis@example.com', '567-890-1234', '654 Maple St, Townsville', '2019-08-20', 'Chemistry', 3.4, 'Active'),
('David', 'Wilson', '2000-06-10', 'david.wilson@example.com', '678-901-2345', '987 Cedar St, Villagetown', '2020-08-20', 'Engineering', 3.7, 'Active'),
('Eva', 'Martinez', '1999-07-15', 'eva.martinez@example.com', '789-012-3456', '159 Birch St, Cityville', '2020-08-20', 'Psychology', 3.9, 'Active'),
('Frank', 'Garcia', '2001-08-20', 'frank.garcia@example.com', '890-123-4567', '753 Spruce St, Townsville', '2021-08-20', 'History', 3.1, 'Active'),
('Grace', 'Hernandez', '2000-09-25', 'grace.hernandez@example.com', '901-234-5678', '852 Fir St, Villagetown', '2020-08-20', 'Literature', 3.3, 'Active'),
('Henry', 'Lopez', '1998-10-30', 'henry.lopez@example.com', '012-345-6789', '963 Willow St, Cityville', '2019-08-20', 'Art', 3.0, 'Active'),
('Isabella', 'Gonzalez', '2001-11-05', 'isabella.gonzalez@example.com', '123-456-7891', '147 Chestnut St, Townsville', '2021-08-20', 'Sociology', 3.5, 'Active'),
('Jack', 'Martinez', '2000-12-10', 'jack.martinez@example.com', '234-567-8902', '258 Ash St, Villagetown', '2020-08-20', 'Economics', 3.8, 'Active'),
('Liam', 'Anderson', '1999-01-15', 'liam.anderson@example.com', '345-678-9013', '369 Poplar St, Cityville', '2020-08-20', 'Political Science', 3.6, 'Active'),
('Mia', 'Thomas', '2001-02-20', 'mia.thomas@example.com', '456-789-0124', '147 Elm St, Townsville', '2021-08-20', 'Environmental Science', 3.4, 'Active'),
('Noah', 'Taylor', '2000-03-25', 'noah.taylor@example.com', '567-890-1235', '258 Oak St, Villagetown', '2020-08-20', 'Information Technology', 3.7, 'Active'),
('Olivia', 'Moore', '1998-04-30', 'olivia.moore@example.com', '678-901-2346', '369 Pine St, Cityville', '2019-08-20', 'Nursing', 3.5, 'Active'),
('Paul', 'Jackson', '2001-05-05', 'paul.jackson@example.com', '789-012-3457', '147 Maple St, Townsville', '2021-08-20', 'Philosophy', 3.2, 'Active'),
('Quinn', 'White', '2000-06-10', 'quinn.white@example.com', '890-123-4568', '258 Cedar St, Villagetown', '2020-08-20', 'Theater', 3.9, 'Active'),
('Riley', 'Harris', '1999-07-15', 'riley.harris@example.com', '901-234-5679', '369 Birch St, Cityville', '2020-08-20', 'Music', 3.1, 'Active');

-- Inserting Records into the Courses Table
INSERT INTO Courses (CourseName, CourseCode, Credits, Department, InstructorID, Semester, Year, MaxEnrollment, Description) VALUES
('Introduction to Computer Science', 'CS101', 3, 'Computer Science', 1, 'Fall', 2023, 30, 'An introduction to the fundamentals of computer science.'),
('Calculus I', 'MATH101', 4, 'Mathematics', 2, 'Fall', 2023, 25, 'An introduction to differential calculus.'),
('Biology 101', 'BIO101', 3, 'Biology', 3, 'Spring', 2023, 30, 'An overview of biological principles.'),
('Physics I', 'PHYS101', 4, 'Physics', 4, 'Spring', 2023, 25, 'An introduction to classical mechanics.'),
('Chemistry 101', 'CHEM101', 4, 'Chemistry', 5, 'Fall', 2023, 30, 'Basic concepts of chemistry.'),
('Engineering Fundamentals', 'ENGR101', 3, 'Engineering', 6, 'Fall', 2023, 30, 'Introduction to engineering principles.'),
('Introduction to Psychology', 'PSY101', 3, 'Psychology', 7, 'Spring', 2023, 30, 'Basic concepts in psychology.'),
('World History', 'HIST101', 3, 'History', 8, 'Fall', 2023, 30, 'Overview of world history.'),
('Literature Analysis', 'LIT101', 3, 'Literature', 9, 'Spring', 2023, 30, 'Study of literary texts and analysis.'),
('Art Appreciation', 'ART101', 3, 'Art', 10, 'Fall', 2023, 30, 'Introduction to the appreciation of art.'),
('Sociology 101', 'SOC101', 3, 'Sociology', 11, 'Spring', 2023, 30, 'Introduction to sociology concepts.'),
('Economics Principles', 'ECO101', 3, 'Economics', 12, 'Fall', 2023, 30, 'Basic principles of economics.'),
('Political Science 101', 'POL101', 3, 'Political Science', 13, 'Spring', 2023, 30, 'Introduction to political science.'),
('Environmental Science', 'ENV101', 3, 'Environmental Science', 14, 'Fall', 2023, 30, 'Study of environmental issues.'),
('Philosophy 101', 'PHIL101', 3, 'Philosophy', 15, 'Spring', 2023, 30, 'Introduction to philosophical concepts.'),
('Theater Arts', 'THEA101', 3, 'Theater', 16, 'Fall', 2023, 30, 'Introduction to theater arts.'),
('Music Theory', 'MUS101', 3, 'Music', 17, 'Spring', 2023, 30, 'Basic concepts of music theory.'),
('Statistics', 'STAT101', 3, 'Mathematics', 18, 'Fall', 2023, 30, 'Introduction to statistics.'),
('Data Structures', 'CS201', 3, 'Computer Science', 1, 'Spring', 2023, 30, 'Study of data structures and algorithms.'),
('Organic Chemistry', 'CHEM201', 4, 'Chemistry', 5, 'Fall', 2023, 30, 'Advanced concepts in organic chemistry.');

-- Inserting Records into the Instructors Table

INSERT INTO Instructors (FirstName, LastName, Email, Phone, Department, HireDate, OfficeLocation, Salary, CoursesTaught, Status) VALUES
('Dr. Alice', 'Johnson', 'alice.j ohnson@university.edu', '123-456-7890', 'Computer Science', '2015-08-15', 'Building A, Room 101', 80000.00, 'CS101, CS201', 'Active'),
('Prof. Bob', 'Smith', 'bob.smith@university.edu', '234-567-8901', 'Mathematics', '2016-09-01', 'Building B, Room 202', 75000.00, 'MATH101, STAT101', 'Active'),
('Dr. Carol', 'Davis', 'carol.davis@university.edu', '345-678-9012', 'Biology', '2017-10-10', 'Building C, Room 303', 72000.00, 'BIO101', 'Active'),
('Prof. David', 'Brown', 'david.brown@university.edu', '456-789-0123', 'Physics', '2018-11-11', 'Building D, Room 404', 78000.00, 'PHYS101', 'Active'),
('Dr. Eva', 'Martinez', 'eva.martinez@university.edu', '567-890-1234', 'Chemistry', '2019-12-12', 'Building E, Room 505', 80000.00, 'CHEM101, CHEM201', 'Active'),
('Prof. Frank', 'Garcia', 'frank.garcia@university.edu', '678-901-2345', 'Engineering', '2020-01-01', 'Building F, Room 606', 85000.00, 'ENGR101', 'Active'),
('Dr. Grace', 'Hernandez', 'grace.hernandez@university.edu', '789-012-3456', 'Psychology', '2020-02-02', 'Building G, Room 707', 70000.00, 'PSY101', 'Active'),
('Prof. Henry', 'Lopez', 'henry.lopez@university.edu', '890-123-4567', 'History', '2020-03-03', 'Building H, Room 808', 72000.00, 'HIST101', 'Active'),
('Dr. Isabella', 'Gonzalez', 'isabella.gonzalez@university.edu', '901-234-5678', 'Literature', '2020-04-04', 'Building I, Room 909', 74000.00, 'LIT101', 'Active'),
('Prof. Jack', 'Martinez', 'jack.martinez@university.edu', '012-345-6789', 'Art', '2020-05-05', 'Building J, Room 1010', 76000.00, 'ART101', 'Active'),
('Dr. Liam', 'Anderson', 'liam.anderson@university.edu', '123-456-7891', 'Sociology', '2020-06-06', 'Building K, Room 1111', 68000.00, 'SOC101', 'Active'),
('Prof. Mia', 'Thomas', 'mia.thomas@university.edu', '234-567-8902', 'Economics', '2020-07-07', 'Building L, Room 1212', 70000.00, 'ECO101', 'Active'),
('Dr. Noah', 'Taylor', 'noah.taylor@university.edu', '345-678-9013', 'Political Science', '2020-08-08', 'Building M, Room 1313', 72000.00, 'POL101', 'Active'),
('Prof. Olivia', 'Moore', 'olivia.moore@university.edu', '456-789-0124', 'Environmental Science', '2020-09-09', 'Building N, Room 1414', 74000.00, 'ENV101', 'Active'),
('Dr. Paul', 'Jackson', 'paul.jackson@university.edu', '567-890-1235', 'Philosophy', '2020-10-10', 'Building O, Room 1515', 68000.00, 'PHIL101', 'Active'),
('Prof. Quinn', 'White', 'quinn.white@university.edu', '678-901-2346', 'Theater', '2020-11-11', 'Building P, Room 1616', 70000.00, 'THEA101', 'Active'),
('Dr. Riley', 'Harris', 'riley.harris@university.edu', '789-012-3457', 'Music', '2020-12-12', 'Building Q, Room 1717', 72000.00, 'M US101', 'Active'),
('Dr. Sarah', 'King', 'sarah.king@university.edu', '890-123-4568', 'Mathematics', '2021-01-01', 'Building R, Room 1818', 74000.00, 'MATH101', 'Active'),
('Prof. Tom', 'Lee', 'tom.lee@university.edu', '901-234-5679', 'Computer Science', '2021-02-02', 'Building S, Room 1919', 76000.00, 'CS101', 'Active'),
('Dr. Uma', 'Patel', 'uma.patel@university.edu', '012-345-6780', 'Biology', '2021-03-03', 'Building T, Room 2020', 78000.00, 'BIO101', 'Active'),
('Prof. Victor', 'Nguyen', 'victor.nguyen@university.edu', '123-456-7892', 'Physics', '2021-04-04', 'Building U, Room 2121', 80000.00, 'PHYS101', 'Active'),
('Dr. Wendy', 'Carter', 'wendy.carter@university.edu', '234-567-8903', 'Chemistry', '2021-05-05', 'Building V, Room 2222', 82000.00, 'CHEM101', 'Active');

set SQL_SAFE_UPDATES = 0; -- disable safe updates
set SQL_SAFE_UPDATES = 1;  -- enable safe updates

show tables ; -- use to see all the tables


-- SElECT QUERY 

-- 1 instructor who earn more than 60000
select * from Instructors where Salary > 60000;

-- 2 count of instructors in each department
select Department, count(*) from Instructors group by Department; 

-- 3 courses with more than 3 credits
select * from Courses where Credits > 3;

-- 4 student names 
select FirstName, LastName, Major from Students;

-- 5 instructors who are  hired after 2019
select * from Instructors where HireDate > '2019-12-31';

-- 6 instructors whose name has D as the second letter
select * from Instructors where FirstName like 'D%';

-- ALTER QUERY

-- 1 rename Major to FieldOfStudy
alter table Students change column Major FieldOfStudy varchar(100);

-- 2  Modify Phone column to have a default value
 alter table Students modify column Phone varchar(15) default 'Not Provided';

-- 3 drop  Description column
alter table Courses drop column Description;

-- 4 add unique constraint to Instructor email
alter table Instructors add constraint unique_email unique (Email);

-- 5 add a new column Gender
alter table Students add column Gender ENUM('Male', 'Female', 'Other');

-- UPDATE QUERY

-- 1  Change enrollment date of a student
update Students set EnrollmentDate = '2022-08-20' where StudentID = 7;

-- 2 Change semester of a course
update Courses set Semester = 'Spring' where CourseID = 3;

-- 3 Increase salary of all instructors by 5%
update Instructors set Salary = Salary * 1.05;

-- 4 Mark a student as Inactive
update Students set Status = 'Inactive' where StudentID = 5;

-- 5 Update GPA of a student
update Students set GPA = 3.9 where StudentID = 1;

-- 6 Rename Instructors to Faculty
rename table Instructors to Faculty;

-- DELETE QUERY

-- 1 Delete instructors from the History department
delete from Instructors where Department = 'History';

-- 2 Remove students with GPA less than 2.0
delete from Students where GPA < 2.0;

-- 3 Delete instructors earning below 60,000
delete from Instructors where Salary < 60000;

-- 4 Remove courses with no instructors assigned
delete from Courses where InstructorID is null;

-- 5  Remove students who enrolled before 2018
delete from Students where EnrollmentDate < '2018-01-01';


-- OPERATORS

-- 1 students with GPA greater than 3.5
select * from Students where GPA > 3.5;

-- 2 courses with credit hours between 3 and 5
select * from Courses where Credits between 3 and 5;

-- 3 instructors who belong to Computer Science , Mathematics department
select * from Instructors where Department in ('Computer Science', 'Mathematics');

-- 4 students whose names start with 'J'
select * from Students where FirstName like 'J%';

-- 5 courses that are not from the History department
select * from Courses where Department <> 'History';


-- FUNCTIONS

-- 1 average GPA of students
select avg(GPA) from Students;

-- 2 Count number of courses in each department
select Department, count(*) from Courses group by Department;

-- 3 highest salary among instructors
select max(Salary) from Instructors;

-- 4 oldest student by date of birth
select min(DateOfBirth) from Students;

-- 5 total number of students
select count(*) from Students;


-- JOINS

-- 1 instructor names and the courses they teach
select Instructors.FirstName, Instructors.LastName, Courses.CourseName
from Instructors
right join Courses on Instructors.InstructorID = Courses.InstructorID;

-- 2 instructors and their respective departments
select Instructors.FirstName, Instructors.LastName, Instructors.Department
from Instructors
left join Courses on Instructors.InstructorID = Courses.InstructorID;


-- SUBQUERIES

-- 1 students with the highest GPA
select * from Students where GPA = (select max(GPA) from Students);

-- CLAUSES

-- 1 students sorted by GPA in descending order
select * from Students order by GPA desc;

-- 2  courses with more than 3 credits and sort by CourseName
select * from Courses where Credits > 3 order by CourseName asc;

-- 3 first 5 students using LIMIT
select * from Students limit 5;

-- 4  instructors with salary greater than 75000 and sort in descending order
select  InstructorID , FirstName,Salary,Department from Instructors where Salary > 75000 order by Salary desc;

-- 5 department with the most courses
select Department, count(*) from Courses group by Department order by count(*) desc limit 1; 



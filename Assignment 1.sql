-- DATABASE 1
CREATE DATABASE Bookstore;

USE Bookstore;

-- Table 1: Authors
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Authors (Name, Country) VALUES
('J.K. Rowling', 'UK'),
('George R.R. Martin', 'USA'),
('Agatha Christie', 'UK');

-- Table 2: Books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(150),
    AuthorID INT,
    CategoryID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Books (Title, AuthorID, CategoryID, Price) VALUES
('Harry Potter and the Philosopher\'s Stone', 1, 1, 20.99),
('A Song of Ice and Fire', 2, 1, 35.00),
('Murder on the Orient Express', 3, 2, 15.75);

-- Table 3: Categories
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

INSERT INTO Categories (CategoryName) VALUES
('Fantasy'),
('Mystery');

-- Table 4: Customers
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

INSERT INTO Customers (Name, Email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com');

-- Table 5: Orders
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    BookID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Orders (CustomerID, BookID, Quantity, OrderDate) VALUES
(1, 1, 2, '2024-12-01'),
(2, 2, 1, '2024-12-02');


-- DATABASE 2
CREATE DATABASE Library;
USE Library;

CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Books (Title, Author, Price) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 10.99),
('1984', 'George Orwell', 8.99),
('To Kill a Mockingbird', 'Harper Lee', 12.99);

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    JoinDate DATE
);

INSERT INTO Members (Name, JoinDate) VALUES
('Alice Johnson', '2023-01-15'),
('Bob Smith', '2023-02-10');

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50)
);

INSERT INTO Staff (Name, Position) VALUES
('Carol White', 'Librarian'),
('David Brown', 'Assistant');

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE
);

INSERT INTO Transactions (BookID, MemberID, BorrowDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02');

CREATE TABLE Events (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Date DATE
);

INSERT INTO Events (Name, Date) VALUES
('Book Fair', '2024-12-10'),
('Reading Marathon', '2024-12-15');


-- DATABASE 3
CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);

INSERT INTO Patients (Name, Age, Gender) VALUES
('John Doe', 45, 'Male'),
('Jane Smith', 32, 'Female'),
('Alice Johnson', 29, 'Female'),
('Robert Brown', 54, 'Male'),
('Emily Davis', 41, 'Female'),
('Michael Wilson', 36, 'Male');

CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(50)
);

INSERT INTO Doctors (Name, Specialization) VALUES
('Dr. Brown', 'Cardiology'),
('Dr. Green', 'Orthopedics'),
('Dr. White', 'Neurology'),
('Dr. Black', 'Dermatology'),
('Dr. Gray', 'Pediatrics');

CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE
);

INSERT INTO Appointments (PatientID, DoctorID, Date) VALUES
(1, 1, '2024-12-03'),
(2, 2, '2024-12-04'),
(3, 3, '2024-12-05'),
(4, 4, '2024-12-06'),
(5, 5, '2024-12-07');

CREATE TABLE Medicines (
    MedicineID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Medicines (Name, Price) VALUES
('Paracetamol', 5.00),
('Ibuprofen', 7.50),
('Aspirin', 3.00),
('Amoxicillin', 10.00),
('Metformin', 12.00);

CREATE TABLE Rooms (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    Type VARCHAR(50)
);

INSERT INTO Rooms (RoomNumber, Type) VALUES
('101', 'Single'),
('102', 'Double'),
('103', 'ICU'),
('104', 'Deluxe'),
('105', 'Suite');

-- DATABASE 4
CREATE DATABASE TravelAgency;
USE TravelAgency;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Customers (Name, Contact) VALUES
('Alice Brown', 'alice@example.com'),
('David Green', 'david@example.com');

CREATE TABLE Destinations (
    DestinationID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Destinations (Name, Country) VALUES
('Paris', 'France'),
('Tokyo', 'Japan');

CREATE TABLE Packages (
    PackageID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Packages (Name, Price) VALUES
('Paris Special', 1500.00),
('Tokyo Adventure', 2000.00);

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    PackageID INT,
    BookingDate DATE
);

INSERT INTO Bookings (CustomerID, PackageID, BookingDate) VALUES
(1, 1, '2024-12-05'),
(2, 2, '2024-12-06');

CREATE TABLE Agents (
    AgentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Agents (Name, Contact) VALUES
('Michael Blue', 'michael@example.com'),
('Sophia Red', 'sophia@example.com');

-- DATABASE 5
CREATE DATABASE Retail;
USE Retail;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (Name, Price) VALUES
('Laptop', 1000.00),
('Smartphone', 800.00);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

INSERT INTO Customers (Name, Email) VALUES
('Charlie Brown', 'charlie@example.com'),
('Lucy Smith', 'lucy@example.com');

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT
);

INSERT INTO Orders (CustomerID, ProductID, Quantity) VALUES
(1, 1, 2),
(2, 2, 1);

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Suppliers (Name, Contact) VALUES
('TechSource', 'contact@techsource.com'),
('MobileWorld', 'contact@mobileworld.com');

CREATE TABLE Promotions (
    PromotionID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Discount INT
);

INSERT INTO Promotions (Name, Discount) VALUES
('Winter Sale', 20),
('Summer Sale', 15);

-- DATABASE 6
CREATE DATABASE University;
USE University;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Major VARCHAR(50)
);

INSERT INTO Students (Name, Major) VALUES
('Alice Johnson', 'Computer Science'),
('Bob Williams', 'Mechanical Engineering');

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Credits INT
);

INSERT INTO Courses (Name, Credits) VALUES
('Mathematics', 4),
('Physics', 3);

CREATE TABLE Professors (
    ProfessorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50)
);

INSERT INTO Professors (Name, Department) VALUES
('Dr. White', 'Mathematics'),
('Dr. Black', 'Physics');

CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(1)
);

INSERT INTO Enrollments (StudentID, CourseID, Grade) VALUES
(1, 1, 'A'),
(2, 2, 'B');

CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Building VARCHAR(50)
);

INSERT INTO Departments (Name, Building) VALUES
('Mathematics', 'Science Hall'),
('Physics', 'Engineering Building');


-- DATABASE 7
CREATE DATABASE School;
USE School;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Grade INT,
    Age INT
);

INSERT INTO Students (Name, Grade, Age) VALUES
('Alice Brown', 5, 10),
('Bob Smith', 6, 11),
('Charlie Johnson', 7, 12),
('Diana White', 5, 10),
('Evan Black', 6, 11);

CREATE TABLE Teachers (
    TeacherID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Subject VARCHAR(50)
);

INSERT INTO Teachers (Name, Subject) VALUES
('Mr. Green', 'Math'),
('Mrs. Red', 'Science'),
('Mr. Blue', 'History'),
('Ms. Yellow', 'Art'),
('Dr. Purple', 'Physical Education');

CREATE TABLE Classes (
    ClassID INT AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(50),
    TeacherID INT
);

INSERT INTO Classes (ClassName, TeacherID) VALUES
('Math Class', 1),
('Science Lab', 2),
('History Lecture', 3),
('Art Workshop', 4),
('PE Class', 5);

CREATE TABLE Subjects (
    SubjectID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Credits INT
);

INSERT INTO Subjects (Name, Credits) VALUES
('Math', 4),
('Science', 3),
('History', 2),
('Art', 1),
('Physical Education', 1);

CREATE TABLE Exams (
    ExamID INT AUTO_INCREMENT PRIMARY KEY,
    SubjectID INT,
    Date DATE
);

INSERT INTO Exams (SubjectID, Date) VALUES
(1, '2024-01-15'),
(2, '2024-01-20'),
(3, '2024-01-25'),
(4, '2024-01-30'),
(5, '2024-02-05');

-- DATABASE 8
CREATE DATABASE Gym;
USE Gym;

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    MembershipType VARCHAR(50)
);

INSERT INTO Members (Name, Age, MembershipType) VALUES
('John Brown', 25, 'Monthly'),
('Sarah Green', 30, 'Yearly'),
('Tom White', 22, 'Quarterly'),
('Alice Black', 28, 'Monthly'),
('Jack Grey', 35, 'Yearly');

CREATE TABLE Trainers (
    TrainerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(50)
);

INSERT INTO Trainers (Name, Specialty) VALUES
('Mike Jones', 'Strength'),
('Laura White', 'Yoga'),
('David Blue', 'Cardio'),
('Anna Red', 'Crossfit'),
('James Black', 'Bodybuilding');

CREATE TABLE Classes (
    ClassID INT AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(50),
    TrainerID INT
);

INSERT INTO Classes (ClassName, TrainerID) VALUES
('Yoga', 2),
('Strength Training', 1),
('Cardio Blast', 3),
('Crossfit', 4),
('Bodybuilding Basics', 5);

CREATE TABLE Equipment (
    EquipmentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Quantity INT
);

INSERT INTO Equipment (Name, Quantity) VALUES
('Treadmill', 10),
('Dumbbells', 30),
('Yoga Mats', 20),
('Kettlebells', 15),
('Resistance Bands', 25);

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    ClassID INT,
    BookingDate DATE
);

INSERT INTO Bookings (MemberID, ClassID, BookingDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02'),
(3, 3, '2024-12-03'),
(4, 4, '2024-12-04'),
(5, 5, '2024-12-05');

-- DATABASE 9
CREATE DATABASE Cinema;
USE Cinema;

CREATE TABLE Movies (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Rating DECIMAL(2, 1)
);

INSERT INTO Movies (Title, Genre, Rating) VALUES
('Inception', 'Sci-Fi', 8.8),
('Titanic', 'Romance', 7.9),
('Avatar', 'Fantasy', 8.2),
('The Dark Knight', 'Action', 9.0),
('Frozen', 'Animation', 7.5);

CREATE TABLE Halls (
    HallID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Capacity INT
);

INSERT INTO Halls (Name, Capacity) VALUES
('Hall A', 200),
('Hall B', 150),
('Hall C', 100),
('Hall D', 120),
('Hall E', 180);

CREATE TABLE ShowTimes (
    ShowTimeID INT AUTO_INCREMENT PRIMARY KEY,
    MovieID INT,
    HallID INT,
    ShowTime TIME
);

INSERT INTO ShowTimes (MovieID, HallID, ShowTime) VALUES
(1, 1, '12:00:00'),
(2, 2, '15:00:00'),
(3, 3, '18:00:00'),
(4, 4, '20:00:00'),
(5, 5, '10:00:00');

CREATE TABLE Tickets (
    TicketID INT AUTO_INCREMENT PRIMARY KEY,
    MovieID INT,
    Price DECIMAL(10, 2)
);

INSERT INTO Tickets (MovieID, Price) VALUES
(1, 10.00),
(2, 8.00),
(3, 12.00),
(4, 15.00),
(5, 7.50);

CREATE TABLE Snacks (
    SnackID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Snacks (Name, Price) VALUES
('Popcorn', 5.00),
('Soda', 3.00),
('Nachos', 6.50),
('Hot Dog', 4.50),
('Candy', 2.50);

-- DATABASE 10
CREATE DATABASE Restaurant;
USE Restaurant;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

INSERT INTO Customers (Name, PhoneNumber, Email) VALUES
('John Doe', '1234567890', 'john@example.com'),
('Jane Smith', '9876543210', 'jane@example.com'),
('Alice Brown', '5556667777', 'alice@example.com'),
('Bob Johnson', '1112223333', 'bob@example.com'),
('Eve White', '4445556666', 'eve@example.com');

CREATE TABLE Dishes (
    DishID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Dishes (Name, Category, Price) VALUES
('Pasta', 'Main Course', 12.00),
('Pizza', 'Main Course', 15.00),
('Soup', 'Starter', 8.00),
('Salad', 'Starter', 10.00),
('Ice Cream', 'Dessert', 5.00);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    DishID INT,
    OrderDate DATE
);

INSERT INTO Orders (CustomerID, DishID, OrderDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02'),
(3, 3, '2024-12-03'),
(4, 4, '2024-12-04'),
(5, 5, '2024-12-05');

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50)
);

INSERT INTO Staff (Name, Role) VALUES
('Alice Green', 'Chef'),
('Bob Brown', 'Waiter'),
('Charlie Black', 'Manager'),
('Diana White', 'Host'),
('Evan Red', 'Dishwasher');

CREATE TABLE Ingredients (
    IngredientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Quantity VARCHAR(50)
);

INSERT INTO Ingredients (Name, Quantity) VALUES
('Tomato', '10 kg'),
('Cheese', '5 kg'),
('Chicken', '15 kg'),
('Flour', '20 kg'),
('Sugar', '8 kg');

-- DATABASE 11
CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE Guests (
    GuestID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

INSERT INTO Guests (Name, PhoneNumber, Email) VALUES
('Alice Brown', '1234567890', 'alice@example.com'),
('Bob Smith', '9876543210', 'bob@example.com'),
('Charlie Johnson', '5556667777', 'charlie@example.com'),
('Diana White', '1112223333', 'diana@example.com'),
('Eve Green', '4445556666', 'eve@example.com');

CREATE TABLE Rooms (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    Type VARCHAR(50),
    PricePerNight DECIMAL(10, 2)
);

INSERT INTO Rooms (RoomNumber, Type, PricePerNight) VALUES
('101', 'Single', 50.00),
('102', 'Double', 80.00),
('103', 'Suite', 150.00),
('104', 'Deluxe', 200.00),
('105', 'Family', 100.00);

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE
);

INSERT INTO Bookings (GuestID, RoomID, CheckInDate, CheckOutDate) VALUES
(1, 1, '2024-12-01', '2024-12-03'),
(2, 2, '2024-12-02', '2024-12-04'),
(3, 3, '2024-12-05', '2024-12-07'),
(4, 4, '2024-12-06', '2024-12-08'),
(5, 5, '2024-12-09', '2024-12-11');

CREATE TABLE Staff

-- DATABASE 12
CREATE DATABASE Zoo;
USE Zoo;

CREATE TABLE Animals (
    AnimalID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Species VARCHAR(100),
    Age INT
);

INSERT INTO Animals (Name, Species, Age) VALUES
('Leo', 'Lion', 5),
('Ellie', 'Elephant', 10),
('Max', 'Monkey', 3),
('Gina', 'Giraffe', 7),
('Zara', 'Zebra', 4);

CREATE TABLE Enclosures (
    EnclosureID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Size VARCHAR(50)
);

INSERT INTO Enclosures (Name, Size) VALUES
('Savannah', 'Large'),
('Rainforest', 'Medium'),
('Desert', 'Small'),
('Mountain', 'Large'),
('Ocean', 'Medium');

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50)
);

INSERT INTO Staff (Name, Position) VALUES
('John Smith', 'Keeper'),
('Alice Brown', 'Veterinarian'),
('Tom Green', 'Cleaner'),
('David White', 'Manager'),
('Anna Black', 'Tour Guide');

CREATE TABLE Tickets (
    TicketID INT AUTO_INCREMENT PRIMARY KEY,
    VisitorName VARCHAR(100),
    Price DECIMAL(10, 2),
    VisitDate DATE
);

INSERT INTO Tickets (VisitorName, Price, VisitDate) VALUES
('Alice Johnson', 20.00, '2024-12-01'),
('Bob Wilson', 15.00, '2024-12-02'),
('Charlie Brown', 25.00, '2024-12-03'),
('Diana Green', 18.00, '2024-12-04'),
('Evan White', 22.00, '2024-12-05');

CREATE TABLE Events (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Date DATE
);

INSERT INTO Events (Name, Date) VALUES
('Animal Feeding', '2024-12-10'),
('Lion Show', '2024-12-15'),
('Elephant Ride', '2024-12-20'),
('Bird Watching', '2024-12-25'),
('Zoo Anniversary', '2024-12-30');

-- DATABASE 13
CREATE DATABASE ECommerce;
USE ECommerce;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

INSERT INTO Customers (Name, Email) VALUES
('Alice Brown', 'alice@example.com'),
('Bob Green', 'bob@example.com'),
('Charlie White', 'charlie@example.com'),
('Diana Black', 'diana@example.com'),
('Evan Gray', 'evan@example.com');

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (Name, Price) VALUES
('Laptop', 1000.00),
('Smartphone', 800.00),
('Headphones', 150.00),
('Monitor', 300.00),
('Keyboard', 50.00);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2024-12-01', 1200.00),
(2, '2024-12-02', 950.00),
(3, '2024-12-03', 600.00),
(4, '2024-12-04', 500.00),
(5, '2024-12-05', 1100.00);

CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100)
);

INSERT INTO Categories (Name) VALUES
('Electronics'),
('Furniture'),
('Clothing'),
('Books'),
('Toys');

CREATE TABLE Reviews (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Rating INT,
    Comment TEXT
);

INSERT INTO Reviews (ProductID, CustomerID, Rating, Comment) VALUES
(1, 1, 5, 'Excellent product!'),
(2, 2, 4, 'Very good value for money.'),
(3, 3, 3, 'Average quality.'),
(4, 4, 5, 'Highly recommend.'),
(5, 5, 4, 'Great keyboard for the price.');

-- DATABASE 14
CREATE DATABASE Banking;
USE Banking;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    AccountType VARCHAR(50)
);

INSERT INTO Customers (Name, Email, AccountType) VALUES
('John Doe', 'john@example.com', 'Savings'),
('Jane Smith', 'jane@example.com', 'Current'),
('Alice Brown', 'alice@example.com', 'Savings'),
('Bob Green', 'bob@example.com', 'Business'),
('Evan Gray', 'evan@example.com', 'Savings');

CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Balance DECIMAL(10, 2)
);

INSERT INTO Accounts (CustomerID, Balance) VALUES
(1, 10000.00),
(2, 5000.00),
(3, 12000.00),
(4, 20000.00),
(5, 7000.00);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT,
    Amount DECIMAL(10, 2),
    TransactionType VARCHAR(50),
    TransactionDate DATE
);

INSERT INTO Transactions (AccountID, Amount, TransactionType, TransactionDate) VALUES
(1, 2000.00, 'Deposit', '2024-12-01'),
(2, 1000.00, 'Withdrawal', '2024-12-02'),
(3, 500.00, 'Deposit', '2024-12-03'),
(4, 1500.00, 'Deposit', '2024-12-04'),
(5, 700.00, 'Withdrawal', '2024-12-05');

CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10, 2),
    InterestRate DECIMAL(5, 2),
    LoanDate DATE
);

INSERT INTO Loans (CustomerID, LoanAmount, InterestRate, LoanDate) VALUES
(1, 5000.00, 5.00, '2024-01-01'),
(2, 10000.00, 4.50, '2024-01-15'),
(3, 15000.00, 6.00, '2024-02-01'),
(4, 20000.00, 4.00, '2024-02-15'),
(5, 10000.00, 5.50, '2024-03-01');

CREATE TABLE Branches (
    BranchID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

INSERT INTO Branches (Name, Location) VALUES
('Downtown Branch', 'City Center'),
('Uptown Branch', 'Uptown'),
('East Branch', 'Eastside'),
('West Branch', 'Westside'),
('North Branch', 'Northside');

-- DATABASE 15
CREATE DATABASE Healthcare;
USE Healthcare;

CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);

INSERT INTO Patients (Name, Age, Gender) VALUES
('John Doe', 45, 'Male'),
('Jane Smith', 32, 'Female'),
('Alice Brown', 29, 'Female'),
('Bob Green', 50, 'Male'),
('Evan Gray', 38, 'Male');

CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(50)
);

INSERT INTO Doctors (Name, Specialization) VALUES
('Dr. Wilson', 'Cardiology'),
('Dr. Green', 'Orthopedics'),
('Dr. White', 'Neurology'),
('Dr. Black', 'Dermatology'),
('Dr. Gray', 'Pediatrics');

CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE
);

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02'),
(3, 3, '2024-12-03'),
(4, 4, '2024-12-04'),
(5, 5, '2024-12-05');

CREATE TABLE Medicines (
    MedicineID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Medicines (Name, Price) VALUES
('Paracetamol', 5.00),
('Ibuprofen', 7.50),
('Aspirin', 3.00),
('Amoxicillin', 10.00),
('Metformin', 12.00);

CREATE TABLE Rooms (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    Type VARCHAR(50)
);

INSERT INTO Rooms (RoomNumber, Type) VALUES
('101', 'Single'),
('102', 'Double'),
('103', 'ICU'),
('104', 'Deluxe'),
('105', 'Suite');

-- DATABASE 16
CREATE DATABASE Gaming;
USE Gaming;

CREATE TABLE Players (
    PlayerID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(100),
    Age INT,
    Country VARCHAR(50)
);

INSERT INTO Players (Username, Age, Country) VALUES
('Player1', 25, 'USA'),
('Player2', 30, 'UK'),
('Player3', 22, 'India'),
('Player4', 28, 'Canada'),
('Player5', 35, 'Australia');

CREATE TABLE Games (
    GameID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Games (Title, Genre, Price) VALUES
('Game1', 'Action', 50.00),
('Game2', 'Adventure', 40.00),
('Game3', 'RPG', 60.00),
('Game4', 'Shooter', 55.00),
('Game5', 'Sports', 45.00);

CREATE TABLE Scores (
    ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    PlayerID INT,
    GameID INT,
    Points INT
);

INSERT INTO Scores (PlayerID, GameID, Points) VALUES
(1, 1, 2000),
(2, 2, 3000),
(3, 3, 2500),
(4, 4, 2800),
(5, 5, 2700);

CREATE TABLE Tournaments (
    TournamentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PrizeMoney DECIMAL(10, 2),
    Date DATE
);

INSERT INTO Tournaments (Name, PrizeMoney, Date) VALUES
('Tournament1', 10000.00, '2024-01-01'),
('Tournament2', 15000.00, '2024-02-01'),
('Tournament3', 20000.00, '2024-03-01'),
('Tournament4', 25000.00, '2024-04-01'),
('Tournament5', 30000.00, '2024-05-01');

CREATE TABLE Teams (
    TeamID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Members INT
);

INSERT INTO Teams (Name, Members) VALUES
('Team Alpha', 5),
('Team Beta', 4),
('Team Gamma', 6),
('Team Delta', 5),
('Team Epsilon', 4);

-- DATABASE 17
CREATE DATABASE HotelManagement;
USE HotelManagement;

CREATE TABLE Guests (
    GuestID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100),
    CheckInDate DATE
);

INSERT INTO Guests (Name, Contact, CheckInDate) VALUES
('Alice Brown', 'alice@example.com', '2024-12-01'),
('Bob Smith', 'bob@example.com', '2024-12-02'),
('Charlie White', 'charlie@example.com', '2024-12-03'),
('Diana Black', 'diana@example.com', '2024-12-04'),
('Evan Gray', 'evan@example.com', '2024-12-05');

CREATE TABLE Rooms (
    RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    Type VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Rooms (RoomNumber, Type, Price) VALUES
('101', 'Single', 100.00),
('102', 'Double', 150.00),
('103', 'Suite', 250.00),
('104', 'Deluxe', 200.00),
('105', 'Penthouse', 500.00);

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50)
);

INSERT INTO Staff (Name, Role) VALUES
('John Blue', 'Manager'),
('Mary White', 'Receptionist'),
('Tom Black', 'Housekeeping'),
('Anna Green', 'Chef'),
('James Gray', 'Security');

CREATE TABLE Reservations (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    ReservationDate DATE
);

INSERT INTO Reservations (GuestID, RoomID, ReservationDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02'),
(3, 3, '2024-12-03'),
(4, 4, '2024-12-04'),
(5, 5, '2024-12-05');

CREATE TABLE Services (
    ServiceID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Services (Name, Price) VALUES
('Room Service', 20.00),
('Spa', 50.00),
('Laundry', 15.00),
('Gym', 30.00),
('WiFi', 10.00);

-- DATABASE 18
CREATE DATABASE Logistics;
USE Logistics;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Customers (Name, Address, Contact) VALUES
('Alice Brown', '123 Street, City', 'alice@example.com'),
('Bob Green', '456 Avenue, City', 'bob@example.com'),
('Charlie White', '789 Boulevard, City', 'charlie@example.com'),
('Diana Black', '101 Parkway, City', 'diana@example.com'),
('Evan Gray', '202 Lane, City', 'evan@example.com');

CREATE TABLE Packages (
    PackageID INT AUTO_INCREMENT PRIMARY KEY,
    Description VARCHAR(100),
    Weight DECIMAL(10, 2),
    Destination VARCHAR(100)
);

INSERT INTO Packages (Description, Weight, Destination) VALUES
('Electronics', 10.00, 'New York'),
('Clothing', 5.00, 'Los Angeles'),
('Furniture', 50.00, 'Chicago'),
('Books', 7.50, 'Houston'),
('Toys', 3.00, 'Miami');

CREATE TABLE Vehicles (
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    Model VARCHAR(100),
    Capacity DECIMAL(10, 2)
);

INSERT INTO Vehicles (Model, Capacity) VALUES
('Truck A', 100.00),
('Van B', 50.00),
('Truck C', 150.00),
('Bike D', 10.00),
('Van E', 70.00);

CREATE TABLE Routes (
    RouteID INT AUTO_INCREMENT PRIMARY KEY,
    StartPoint VARCHAR(100),
    EndPoint VARCHAR(100),
    Distance DECIMAL(10, 2)
);

INSERT INTO Routes (StartPoint, EndPoint, Distance) VALUES
('New York', 'Boston', 300.00),
('Los Angeles', 'San Francisco', 400.00),
('Chicago', 'Detroit', 250.00),
('Houston', 'Dallas', 200.00),
('Miami', 'Orlando', 250.00);

CREATE TABLE Deliveries (
    DeliveryID INT AUTO_INCREMENT PRIMARY KEY,
    PackageID INT,
    VehicleID INT,
    DeliveryDate DATE
);

INSERT INTO Deliveries (PackageID, VehicleID, DeliveryDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02'),
(3, 3, '2024-12-03'),
(4, 4, '2024-12-04'),
(5, 5, '2024-12-05');

-- DATABASE 19
CREATE DATABASE RealEstate;
USE RealEstate;

CREATE TABLE Properties (
    PropertyID INT AUTO_INCREMENT PRIMARY KEY,
    Address VARCHAR(100),
    Type VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Properties (Address, Type, Price) VALUES
('123 Street', 'Apartment', 200000.00),
('456 Avenue', 'House', 300000.00),
('789 Boulevard', 'Condo', 250000.00),
('101 Parkway', 'Townhouse', 270000.00),
('202 Lane', 'Villa', 500000.00);

CREATE TABLE Agents (
    AgentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Agents (Name, Contact) VALUES
('Alice Brown', 'alice@example.com'),
('Bob Green', 'bob@example.com'),
('Charlie White', 'charlie@example.com'),
('Diana Black', 'diana@example.com'),
('Evan Gray', 'evan@example.com');

CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Budget DECIMAL(10, 2)
);

INSERT INTO Clients (Name, Budget) VALUES
('John Doe', 250000.00),
('Jane Smith', 300000.00),
('Tom White', 200000.00),
('Anna Black', 350000.00),
('James Gray', 400000.00);

CREATE TABLE Listings (
    ListingID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT,
    AgentID INT,
    ListingDate DATE
);

INSERT INTO Listings (PropertyID, AgentID, ListingDate) VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02'),
(3, 3, '2024-12-03'),
(4, 4, '2024-12-04'),
(5, 5, '2024-12-05');

CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT,
    ClientID INT,
    SaleDate DATE,
    SalePrice DECIMAL(10, 2)
);

INSERT INTO Sales (PropertyID, ClientID, SaleDate, SalePrice) VALUES
(1, 1, '2024-12-10', 200000.00),
(2, 2, '2024-12-11', 290000.00),
(3, 3, '2024-12-12', 240000.00),
(4, 4, '2024-12-13', 265000.00),
(5, 5, '2024-12-14', 490000.00);

-- DATABASE 20
CREATE DATABASE AirlineManagement;
USE AirlineManagement;

CREATE TABLE Passengers (
    PassengerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Passengers (Name, Contact) VALUES
('Alice Brown', 'alice@example.com'),
('Bob Green', 'bob@example.com'),
('Charlie White', 'charlie@example.com'),
('Diana Black', 'diana@example.com'),
('Evan Gray', 'evan@example.com');

CREATE TABLE Flights (
    FlightID INT AUTO_INCREMENT PRIMARY KEY,
    FlightNumber VARCHAR(10),
    Destination VARCHAR(100),
    DepartureTime TIME
);

INSERT INTO Flights (FlightNumber, Destination, DepartureTime) VALUES
('FL123', 'New York', '08:00:00'),
('FL456', 'Los Angeles', '12:00:00'),
('FL789', 'Chicago', '16:00:00'),
('FL101', 'Houston', '20:00:00'),
('FL202', 'Miami', '22:00:00');

CREATE TABLE Tickets (
    TicketID INT AUTO_INCREMENT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    SeatNumber VARCHAR(10),
    Price DECIMAL(10, 2)
);

INSERT INTO Tickets (PassengerID, FlightID, SeatNumber, Price) VALUES
(1, 1, 'A1', 500.00),
(2, 2, 'B1', 450.00),
(3, 3, 'C1', 400.00),
(4, 4, 'D1', 350.00),
(5, 5, 'E1', 300.00);

CREATE TABLE Airports (
    AirportID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

INSERT INTO Airports (Name, Location) VALUES
('JFK International', 'New York'),
('LAX', 'Los Angeles'),
('O\'Hare', 'Chicago'),
('George Bush', 'Houston'),
('MIA', 'Miami');

CREATE TABLE Baggage (
    BaggageID INT AUTO_INCREMENT PRIMARY KEY,
    TicketID INT,
    Weight DECIMAL(10, 2),
    Status VARCHAR(50)
);

INSERT INTO Baggage (TicketID, Weight, Status) VALUES
(1, 20.00, 'Checked In'),
(2, 15.00, 'Checked In'),
(3, 10.00, 'Not Checked'),
(4, 25.00, 'Checked In'),
(5, 18.00, 'Checked In');


-- DATABASE 21
CREATE DATABASE Supermarket;
USE Supermarket;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (Name, Category, Price) VALUES
('Milk', 'Dairy', 2.50),
('Bread', 'Bakery', 1.50),
('Apples', 'Fruits', 3.00),
('Chicken', 'Meat', 7.50),
('Cereal', 'Grocery', 4.00);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Customers (Name, Contact) VALUES
('Alice Brown', 'alice@example.com'),
('Bob Green', 'bob@example.com'),
('Charlie White', 'charlie@example.com'),
('Diana Black', 'diana@example.com'),
('Evan Gray', 'evan@example.com');

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2024-12-01', 20.00),
(2, '2024-12-02', 15.00),
(3, '2024-12-03', 30.00),
(4, '2024-12-04', 50.00),
(5, '2024-12-05', 25.00);

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50)
);

INSERT INTO Staff (Name, Role) VALUES
('John Blue', 'Manager'),
('Mary White', 'Cashier'),
('Tom Black', 'Stock Manager'),
('Anna Green', 'Floor Staff'),
('James Gray', 'Security');

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Suppliers (Name, Contact) VALUES
('DairyCorp', 'dairy@example.com'),
('BakeryGoods', 'bakery@example.com'),
('FreshFruits', 'fruits@example.com'),
('MeatWorld', 'meat@example.com'),
('GrocerySupply', 'grocery@example.com');


-- DATABASE 22
CREATE DATABASE WildlifeSanctuary;
USE WildlifeSanctuary;

CREATE TABLE Animals (
    AnimalID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Species VARCHAR(100),
    Age INT
);

INSERT INTO Animals (Name, Species, Age) VALUES
('Leo', 'Lion', 8),
('Ellie', 'Elephant', 12),
('Max', 'Monkey', 5),
('Stripes', 'Tiger', 10),
('Zara', 'Zebra', 7);

CREATE TABLE Habitats (
    HabitatID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50)
);

INSERT INTO Habitats (Name, Type) VALUES
('Savannah', 'Grassland'),
('Rainforest', 'Forest'),
('Desert', 'Arid'),
('Wetlands', 'Marsh'),
('Mountain', 'Highland');

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50)
);

INSERT INTO Staff (Name, Role) VALUES
('John Smith', 'Keeper'),
('Alice Brown', 'Veterinarian'),
('Tom Green', 'Guide'),
('Diana White', 'Security'),
('Evan Black', 'Researcher');

CREATE TABLE Visitors (
    VisitorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    VisitDate DATE
);

INSERT INTO Visitors (Name, VisitDate) VALUES
('Alice Johnson', '2024-01-01'),
('Bob Wilson', '2024-01-02'),
('Charlie Brown', '2024-01-03'),
('Diana Green', '2024-01-04'),
('Evan White', '2024-01-05');

CREATE TABLE ConservationProjects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    StartDate DATE
);

INSERT INTO ConservationProjects (Name, StartDate) VALUES
('Lion Recovery', '2024-02-01'),
('Elephant Conservation', '2024-03-01'),
('Rainforest Preservation', '2024-04-01'),
('Tiger Habitat Restoration', '2024-05-01'),
('Zebra Migration Study', '2024-06-01');

-- DATABASE 23
CREATE DATABASE MovieStreaming;
USE MovieStreaming;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(100),
    Email VARCHAR(100),
    SubscriptionType VARCHAR(50)
);

INSERT INTO Users (Username, Email, SubscriptionType) VALUES
('user1', 'user1@example.com', 'Basic'),
('user2', 'user2@example.com', 'Premium'),
('user3', 'user3@example.com', 'Standard'),
('user4', 'user4@example.com', 'Basic'),
('user5', 'user5@example.com', 'Premium');

CREATE TABLE Movies (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    ReleaseYear INT
);

INSERT INTO Movies (Title, Genre, ReleaseYear) VALUES
('Inception', 'Sci-Fi', 2010),
('Titanic', 'Romance', 1997),
('Avatar', 'Fantasy', 2009),
('The Dark Knight', 'Action', 2008),
('Frozen', 'Animation', 2013);

CREATE TABLE Series (
    SeriesID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Seasons INT,
    Genre VARCHAR(50)
);

INSERT INTO Series (Title, Seasons, Genre) VALUES
('Stranger Things', 4, 'Sci-Fi'),
('Breaking Bad', 5, 'Crime'),
('Friends', 10, 'Comedy'),
('The Witcher', 3, 'Fantasy'),
('The Crown', 6, 'Drama');

CREATE TABLE WatchHistory (
    HistoryID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    MovieID INT,
    WatchedDate DATE
);

INSERT INTO WatchHistory (UserID, MovieID, WatchedDate) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05');

CREATE TABLE Reviews (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    MovieID INT,
    UserID INT,
    Rating INT,
    Comment TEXT
);

INSERT INTO Reviews (MovieID, UserID, Rating, Comment) VALUES
(1, 1, 5, 'Amazing movie!'),
(2, 2, 4, 'Great story but long.'),
(3, 3, 5, 'Visual masterpiece.'),
(4, 4, 5, 'Best action movie ever.'),
(5, 5, 3, 'Good for kids.');

-- DATABASE 24
CREATE DATABASE ArtGallery;
USE ArtGallery;

CREATE TABLE Artists (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Artists (Name, Country) VALUES
('Vincent van Gogh', 'Netherlands'),
('Pablo Picasso', 'Spain'),
('Claude Monet', 'France'),
('Leonardo da Vinci', 'Italy'),
('Frida Kahlo', 'Mexico');

CREATE TABLE Artworks (
    ArtworkID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    ArtistID INT,
    YearCreated INT
);

INSERT INTO Artworks (Title, ArtistID, YearCreated) VALUES
('Starry Night', 1, 1889),
('Guernica', 2, 1937),
('Water Lilies', 3, 1916),
('Mona Lisa', 4, 1503),
('The Two Fridas', 5, 1939);

CREATE TABLE Exhibitions (
    ExhibitionID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Exhibitions (Name, StartDate, EndDate) VALUES
('Impressionism Showcase', '2024-03-01', '2024-05-01'),
('Modern Art Gallery', '2024-06-01', '2024-08-01'),
('Renaissance Highlights', '2024-09-01', '2024-12-01'),
('Abstract Art Fair', '2024-01-15', '2024-03-15'),
('Masterpieces of the World', '2024-04-10', '2024-07-10');

CREATE TABLE Visitors (
    VisitorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    VisitDate DATE
);

INSERT INTO Visitors (Name, VisitDate) VALUES
('Alice Johnson', '2024-03-05'),
('Bob Wilson', '2024-04-01'),
('Charlie Brown', '2024-05-10'),
('Diana Green', '2024-06-15'),
('Evan White', '2024-07-20');

CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    ArtworkID INT,
    Price DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (ArtworkID, Price, SaleDate) VALUES
(1, 1000000.00, '2024-03-15'),
(2, 2000000.00, '2024-04-20'),
(3, 3000000.00, '2024-05-25'),
(4, 5000000.00, '2024-06-10'),
(5, 2500000.00, '2024-07-05');


-- DATABASE 25
CREATE DATABASE CryptoExchange;
USE CryptoExchange;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Users (Name, Email, Country) VALUES
('Alice Crypto', 'alice@example.com', 'USA'),
('Bob Bitcoin', 'bob@example.com', 'Canada'),
('Charlie Ethereum', 'charlie@example.com', 'Germany'),
('Diana Litecoin', 'diana@example.com', 'Australia'),
('Evan Ripple', 'evan@example.com', 'India');

CREATE TABLE Cryptocurrencies (
    CryptoID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Symbol VARCHAR(10),
    MarketCap DECIMAL(15, 2)
);

INSERT INTO Cryptocurrencies (Name, Symbol, MarketCap) VALUES
('Bitcoin', 'BTC', 850000000000.00),
('Ethereum', 'ETH', 400000000000.00),
('Tether', 'USDT', 70000000000.00),
('Ripple', 'XRP', 50000000000.00),
('Cardano', 'ADA', 45000000000.00);

CREATE TABLE Wallets (
    WalletID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Balance DECIMAL(15, 8)
);

INSERT INTO Wallets (UserID, Balance) VALUES
(1, 0.5),
(2, 1.2),
(3, 0.75),
(4, 0.25),
(5, 1.00);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    CryptoID INT,
    Amount DECIMAL(15, 8),
    TransactionDate DATE
);

INSERT INTO Transactions (UserID, CryptoID, Amount, TransactionDate) VALUES
(1, 1, 0.1, '2024-01-01'),
(2, 2, 0.2, '2024-01-02'),
(3, 3, 50.0, '2024-01-03'),
(4, 4, 100.0, '2024-01-04'),
(5, 5, 200.0, '2024-01-05');

CREATE TABLE ExchangeRates (
    ExchangeRateID INT AUTO_INCREMENT PRIMARY KEY,
    CryptoID INT,
    USDPrice DECIMAL(15, 2),
    LastUpdated DATE
);

INSERT INTO ExchangeRates (CryptoID, USDPrice, LastUpdated) VALUES
(1, 50000.00, '2024-01-01'),
(2, 4000.00, '2024-01-01'),
(3, 1.00, '2024-01-01'),
(4, 0.90, '2024-01-01'),
(5, 1.50, '2024-01-01');

-- DATABASE 26
CREATE DATABASE OnlineLearning;
USE OnlineLearning;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    EnrollmentDate DATE
);

INSERT INTO Students (Name, Email, EnrollmentDate) VALUES
('Alice Learner', 'alice@example.com', '2024-01-01'),
('Bob Scholar', 'bob@example.com', '2024-01-02'),
('Charlie Knowledge', 'charlie@example.com', '2024-01-03'),
('Diana Curious', 'diana@example.com', '2024-01-04'),
('Evan Academic', 'evan@example.com', '2024-01-05');

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Category VARCHAR(50),
    Duration INT
);

INSERT INTO Courses (Title, Category, Duration) VALUES
('Python Programming', 'Technology', 30),
('Digital Marketing', 'Business', 25),
('Graphic Design', 'Arts', 20),
('Machine Learning', 'Technology', 45),
('Creative Writing', 'Language', 15);

CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Expertise VARCHAR(50)
);

INSERT INTO Instructors (Name, Expertise) VALUES
('John Coder', 'Technology'),
('Mary Marketer', 'Business'),
('Tom Designer', 'Arts'),
('Anna Analyst', 'Data Science'),
('James Writer', 'Language');

CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE
);

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05');

CREATE TABLE Reviews (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    Rating INT,
    Feedback TEXT
);

INSERT INTO Reviews (CourseID, StudentID, Rating, Feedback) VALUES
(1, 1, 5, 'Excellent course, very engaging!'),
(2, 2, 4, 'Great insights into digital marketing.'),
(3, 3, 5, 'Learned so much about design!'),
(4, 4, 5, 'Amazing explanations of ML concepts.'),
(5, 5, 4, 'Fun and interactive.');

-- DATABASE 27
CREATE DATABASE RoboticsResearch;
USE RoboticsResearch;

CREATE TABLE Researchers (
    ResearcherID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    FieldOfExpertise VARCHAR(50),
    YearsOfExperience INT
);

INSERT INTO Researchers (Name, FieldOfExpertise, YearsOfExperience) VALUES
('Dr. Alice Tech', 'AI', 10),
('Dr. Bob Mechanics', 'Mechanical Engineering', 8),
('Dr. Charlie Sensors', 'Electronics', 6),
('Dr. Diana Algorithms', 'Robotics Algorithms', 12),
('Dr. Evan Systems', 'Systems Design', 15);

CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Projects (Title, StartDate, EndDate) VALUES
('Humanoid Robots', '2024-01-01', '2024-12-31'),
('Autonomous Vehicles', '2023-07-01', '2024-06-30'),
('Industrial Robotics', '2024-03-01', '2025-02-28'),
('Healthcare Robotics', '2024-05-01', '2025-04-30'),
('Agricultural Drones', '2024-06-01', '2025-05-31');

CREATE TABLE Robots (
    RobotID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Functionality VARCHAR(100)
);

INSERT INTO Robots (Name, Type, Functionality) VALUES
('Robo1', 'Humanoid', 'Human Interaction'),
('RoboCar', 'Autonomous Vehicle', 'Self-Driving'),
('RoboArm', 'Industrial', 'Assembly Line Tasks'),
('MediBot', 'Healthcare', 'Medical Assistance'),
('AgriDrone', 'Agricultural', 'Crop Monitoring');

CREATE TABLE Publications (
    PublicationID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    ResearcherID INT,
    PublishedDate DATE
);

INSERT INTO Publications (Title, ResearcherID, PublishedDate) VALUES
('AI in Robotics', 1, '2024-02-01'),
('Mechanical Challenges in Robotics', 2, '2024-03-01'),
('Sensor Technologies', 3, '2024-04-01'),
('Algorithmic Advancements', 4, '2024-05-01'),
('System Integration for Robotics', 5, '2024-06-01');

CREATE TABLE Funding (
    FundingID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    Source VARCHAR(100),
    Amount DECIMAL(15, 2)
);

INSERT INTO Funding (ProjectID, Source, Amount) VALUES
(1, 'Government Grant', 1000000.00),
(2, 'Private Investors', 500000.00),
(3, 'Tech Corporation', 750000.00),
(4, 'Healthcare Fund', 600000.00),
(5, 'Agricultural Agency', 800000.00);


-- DATABASE 28
CREATE DATABASE VolunteerManagement;
USE VolunteerManagement;

CREATE TABLE Volunteers (
    VolunteerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Contact VARCHAR(100)
);

INSERT INTO Volunteers (Name, Age, Contact) VALUES
('Alice Brown', 25, 'alice@example.com'),
('Bob Green', 30, 'bob@example.com'),
('Charlie White', 22, 'charlie@example.com'),
('Diana Black', 28, 'diana@example.com'),
('Evan Gray', 35, 'evan@example.com');

CREATE TABLE Events (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Date DATE,
    Location VARCHAR(100)
);

INSERT INTO Events (Name, Date, Location) VALUES
('Beach Cleanup', '2024-02-15', 'Bondi Beach'),
('Tree Plantation', '2024-03-10', 'Central Park'),
('Food Drive', '2024-04-05', 'Downtown'),
('Animal Shelter Visit', '2024-05-01', 'City Shelter'),
('Blood Donation Camp', '2024-06-20', 'Community Hall');

CREATE TABLE Assignments (
    AssignmentID INT AUTO_INCREMENT PRIMARY KEY,
    VolunteerID INT,
    EventID INT,
    Role VARCHAR(100)
);

INSERT INTO Assignments (VolunteerID, EventID, Role) VALUES
(1, 1, 'Coordinator'),
(2, 2, 'Planting Lead'),
(3, 3, 'Food Distribution'),
(4, 4, 'Animal Care'),
(5, 5, 'Donor Assistance');

CREATE TABLE Donations (
    DonationID INT AUTO_INCREMENT PRIMARY KEY,
    VolunteerID INT,
    Amount DECIMAL(10, 2),
    Date DATE
);

INSERT INTO Donations (VolunteerID, Amount, Date) VALUES
(1, 50.00, '2024-01-01'),
(2, 100.00, '2024-01-02'),
(3, 75.00, '2024-01-03'),
(4, 200.00, '2024-01-04'),
(5, 150.00, '2024-01-05');

CREATE TABLE Feedback (
    FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    VolunteerID INT,
    Comment TEXT
);

INSERT INTO Feedback (EventID, VolunteerID, Comment) VALUES
(1, 1, 'Great initiative, well-organized.'),
(2, 2, 'Very fulfilling experience.'),
(3, 3, 'Glad to contribute to the community.'),
(4, 4, 'Loved helping the animals.'),
(5, 5, 'Smooth process and well-managed.');

-- DATABASE 29
CREATE DATABASE SpaceTourism;
USE SpaceTourism;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Email VARCHAR(100)
);

INSERT INTO Customers (Name, Age, Email) VALUES
('Alice Spacey', 30, 'alice@space.com'),
('Bob Rocket', 45, 'bob@space.com'),
('Charlie Orbit', 35, 'charlie@space.com'),
('Diana Moon', 28, 'diana@space.com'),
('Evan Mars', 50, 'evan@space.com');

CREATE TABLE SpaceTrips (
    TripID INT AUTO_INCREMENT PRIMARY KEY,
    Destination VARCHAR(100),
    LaunchDate DATE,
    Duration INT
);

INSERT INTO SpaceTrips (Destination, LaunchDate, Duration) VALUES
('Moon', '2024-01-15', 7),
('Mars', '2024-03-01', 30),
('International Space Station', '2024-02-20', 14),
('Venus Orbit', '2024-04-10', 45),
('Asteroid Belt', '2024-05-05', 60);

CREATE TABLE Tickets (
    TicketID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    TripID INT,
    Price DECIMAL(15, 2)
);

INSERT INTO Tickets (CustomerID, TripID, Price) VALUES
(1, 1, 1000000.00),
(2, 2, 5000000.00),
(3, 3, 3000000.00),
(4, 4, 7000000.00),
(5, 5, 9000000.00);

CREATE TABLE Spacecrafts (
    SpacecraftID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Capacity INT,
    Manufacturer VARCHAR(100)
);

INSERT INTO Spacecrafts (Name, Capacity, Manufacturer) VALUES
('LunarX', 10, 'SpaceTech Inc.'),
('MarsRover', 8, 'AstroCorp'),
('ISSExpress', 15, 'OrbitalSystems'),
('VenusVoyager', 5, 'CosmoGroup'),
('AsteroidExplorer', 6, 'Starline Industries');

CREATE TABLE Crew (
    CrewID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Experience INT
);

INSERT INTO Crew (Name, Role, Experience) VALUES
('Captain Galaxy', 'Commander', 20),
('Star Pilot', 'Pilot', 15),
('Luna Engineer', 'Engineer', 12),
('Astro Medic', 'Medical Officer', 10),
('Orbit Specialist', 'Specialist', 18);

-- DATABASE 30
CREATE DATABASE CarRental;
USE CarRental;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    LicenseNumber VARCHAR(100),
    Contact VARCHAR(100)
);

INSERT INTO Customers (Name, LicenseNumber, Contact) VALUES
('Alice Brown', 'AB123456', 'alice@example.com'),
('Bob Green', 'BG654321', 'bob@example.com'),
('Charlie White', 'CW789012', 'charlie@example.com'),
('Diana Black', 'DB345678', 'diana@example.com'),
('Evan Gray', 'EG901234', 'evan@example.com');

CREATE TABLE Cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    Model VARCHAR(100),
    Year INT,
    DailyRate DECIMAL(10, 2)
);

INSERT INTO Cars (Model, Year, DailyRate) VALUES
('Toyota Corolla', 2020, 40.00),
('Honda Civic', 2021, 45.00),
('Ford Mustang', 2019, 60.00),
('Tesla Model 3', 2022, 75.00),
('Chevrolet Malibu', 2020, 50.00);

CREATE TABLE Rentals (
    RentalID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    RentalDate DATE,
    ReturnDate DATE
);

INSERT INTO Rentals (CustomerID, CarID, RentalDate, ReturnDate) VALUES
(1, 1, '2024-01-01', '2024-01-07'),
(2, 2, '2024-01-02', '2024-01-06'),
(3, 3, '2024-01-03', '2024-01-05'),
(4, 4, '2024-01-04', '2024-01-08'),
(5, 5, '2024-01-05', '2024-01-09');

CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    RentalID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE
);

INSERT INTO Payments (RentalID, Amount, PaymentDate) VALUES
(1, 280.00, '2024-01-01'),
(2, 180.00, '2024-01-02'),
(3, 120.00, '2024-01-03'),
(4, 300.00, '2024-01-04'),
(5, 200.00, '2024-01-05');

CREATE TABLE Maintenance (
    MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
    CarID INT,
    Description VARCHAR(100),
    MaintenanceDate DATE
);

INSERT INTO Maintenance (CarID, Description, MaintenanceDate) VALUES
(1, 'Oil Change', '2024-01-10'),
(2, 'Brake Inspection', '2024-01-15'),
(3, 'Tire Replacement', '2024-01-20'),
(4, 'Battery Check', '2024-01-25'),
(5, 'Engine Tune-up', '2024-01-30');

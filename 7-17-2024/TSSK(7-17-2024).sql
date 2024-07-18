CREATE DATABASE jaradat_Tech_solution;
USE jaradat_Tech_solution;
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    Bio TEXT
);
CREATE TABLE Sections (
    SectionID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Location NVARCHAR(50)
);
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(50) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    SectionID INT,
    PublishDate DATE,
    ISBN NVARCHAR(50),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SectionID) REFERENCES Sections(SectionID)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Position NVARCHAR(100),
    HireDate DATE
);
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    JoinDate DATE
);
CREATE TABLE Borrowing (
    BorrowID INT PRIMARY KEY IDENTITY(1,1),
    BookID INT,
    UserID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
INSERT INTO Authors (Name, Bio) VALUES 
('Author 1', 'Bio 1'),
('Author 2', 'Bio 2'),
('Author 3', 'Bio 3'),
('Author 4', 'Bio 4'),
('Author 5', 'Bio 5');
INSERT INTO Sections (Name, Location) VALUES 
('Section 1', 'Location 1'),
('Section 2', 'Location 2'),
('Section 3', 'Location 3'),
('Section 4', 'Location 4'),
('Section 5', 'Location 5');
INSERT INTO Categories (Name) VALUES 
('Category 1'),
('Category 2'),
('Category 3'),
('Category 4'),
('Category 5');
INSERT INTO Books (Title, AuthorID, CategoryID, SectionID, PublishDate, ISBN) VALUES 
('Book 1', 1, 1, 1, '2023-01-01', 'ISBN001'),
('Book 2', 2, 2, 2, '2023-02-01', 'ISBN002'),
('Book 3', 3, 3, 3, '2023-03-01', 'ISBN003'),
('Book 4', 4, 4, 4, '2023-04-01', 'ISBN004'),
('Book 5', 5, 5, 5, '2023-05-01', 'ISBN005');
INSERT INTO Employees (Name, Position, HireDate) VALUES 
('Employee 1', 'Position 1', '2022-01-01'),
('Employee 2', 'Position 2', '2022-02-01'),
('Employee 3', 'Position 3', '2022-03-01'),
('Employee 4', 'Position 4', '2022-04-01'),
('Employee 5', 'Position 5', '2022-05-01');
INSERT INTO Users (Name, Email, JoinDate) VALUES 
('User 1', 'user1@example.com', '2021-01-01'),
('User 2', 'user2@example.com', '2021-02-01'),
('User 3', 'user3@example.com', '2021-03-01'),
('User 4', 'user4@example.com', '2021-04-01'),
('User 5', 'user5@example.com', '2021-05-01');
INSERT INTO Borrowing (BookID, UserID, BorrowDate, ReturnDate) VALUES 
(1, 1, '2023-01-10', '2023-02-10'),
(2, 2, '2023-02-15', '2023-03-15'),
(3, 3, '2023-03-20', '2023-04-20'),
(4, 4, '2023-04-25', '2023-05-25'),
(5, 5, '2023-05-30', '2023-06-30');

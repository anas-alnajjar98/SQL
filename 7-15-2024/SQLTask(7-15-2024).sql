CREATE DATABASE Library;
USE Library;
CREATE TABLE Authors(
AuthorID INT NOT NULL,
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
BIRTHYEAR DATE,
PRIMARY KEY(AuthorID)
 )
CREATE TABLE Books(
BookID INT NOT NULL ,
Title  VARCHAR(50),
AuthorID INT NOT NULL,
PublishedYear DATE,
CopiesAvailable  INT ,
BookCategory VARCHAR(50),
PRIMARY KEY(BookiD),
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
INSERT INTO Authors (AuthorID, FIRSTNAME, LASTNAME, BIRTHYEAR)
VALUES
(0090921,'Sanjeev','Joshi','1962-04-06'),
(009032,'Rajen ','Saikia','1959-12-1'),
(009043,'Chetan','Bhagat','1974-5-22'),
(009054,'Satish','Gujral','1925-12-25'),
(009065,'anas','alnajjar','1998-7-28');
INSERT INTO Books (BookID, Title, AuthorID, PublishedYear, CopiesAvailable, BookCategory)
VALUES 
(172024,'Ek Samandar, Mere Andar',0090921,'1992-04-06',12,'Book for Career Growth'),
(272024,'Political History of Assam',009032,'1979-12-1',5,'Political'),
(372024,'Making India Awesome',009043,'2000-5-22',18,'collection of essays'),
(472024,'A Brush with Life',009054,'1940-12-25',10,'Autobiography book'),
(572024,'The sotry of my life',009065,'2020-8-12',0,'horror');
SELECT 
    Books.BookID, 
    Books.Title, 
    Authors.FIRSTNAME, 
    Authors.LASTNAME, 
    Books.PublishedYear, 
    Books.CopiesAvailable, 
    Books.BookCategory
FROM 
    Books
JOIN 
    Authors ON Books.AuthorID = Authors.AuthorID;
SELECT 
    Books.BookID, 
    Books.Title, 
    Books.CopiesAvailable 
FROM Books WHERE Books.CopiesAvailable = (SELECT MAX(CopiesAvailable) FROM Books);
SELECT 
    Books.BookID, 
    Books.Title, 
    Books.CopiesAvailable 
FROM Books WHERE Books.CopiesAvailable = (SELECT MIN(CopiesAvailable) FROM Books);
SELECT AVG(YEAR(PublishedYear)) AS AveragePublicationYear FROM Books;
SELECT SUM(CopiesAvailable) AS TotalCopies FROM Books;
TRUNCATE TABLE Books;
DROP  TABLE Authors; 

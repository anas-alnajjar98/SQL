CREATE DATABASE SCHOOLE;
USE SCHOOLE;
CREATE TABLE Teachers(
    TEACHERID INT NOT NULL,
    FULLNAME VARCHAR(50),
    PRIMARY KEY (TEACHERID)
);
--DROP TABLE Teachers;
CREATE TABLE TeacherDetails(
    TEACHERID INT,
    EMAIL VARCHAR(50),
    PhoneNumber VARCHAR(50),
    NUMSUBJECT INT,
    SUBJECTNAME VARCHAR(50),
    FOREIGN KEY (TEACHERID) REFERENCES Teachers(TEACHERID)
);
CREATE TABLE Courses(
    COURSEID INT NOT NULL,
    COURSENAME VARCHAR(50) NOT NULL,
    TEACHERID INT,
    PRIMARY KEY(COURSEID),
    FOREIGN KEY(TEACHERID) REFERENCES Teachers(TEACHERID)
);
CREATE TABLE Students(
    STUDENTID INT NOT NULL,
    FULLNAME VARCHAR(50) NOT NULL,
    PHONENUMBER VARCHAR(50),
    GRADE VARCHAR(50) NOT NULL,
    PRIMARY KEY(STUDENTID)
);
CREATE TABLE STUDES_COURSE(
    STUDENTID INT,
    COURSEID INT,
    ENROLL_DATE DATE,
    PRIMARY KEY (STUDENTID, COURSEID),
    FOREIGN KEY (STUDENTID) REFERENCES Students(STUDENTID),
    FOREIGN KEY (COURSEID) REFERENCES Courses(COURSEID)
);
INSERT INTO Teachers (TEACHERID, FULLNAME) VALUES
(001, 'MOHAMMAD X'),
(002, 'MOHAMMAD Y'),
(003, 'MOHAMMAD Z'),
(004, 'MOHAMMAD X1'),
(005, 'MOHAMMAD X2');
INSERT INTO TeacherDetails (TEACHERID, EMAIL, PhoneNumber, NUMSUBJECT, SUBJECTNAME) VALUES
(001, 'MOHAMMAD X@GMAIL.com', '00962123456789', 3, 'Mathematics'),
(002, 'MOHAMMAD Y@GMAIL.com', '00962123456789', 2, 'Physics'),
(003, 'MOHAMMAD Z@GMAIL.com', '00962123456789', 1, 'Chemistry'),
(004, 'MOHAMMAD X1@GMAIL.com', '00962123456789', 4, 'Biology'),
(005, 'MOHAMMAD X2@GMAIL.com', '00962123456789', 2, 'English');
INSERT INTO Courses (COURSEID, COURSENAME, TEACHERID) VALUES
(0001, 'Algebra', 001),
(0002, 'Calculus', 001),
(0003, 'Physics I', 002),
(0004, 'Physics II', 002),
(0005, 'Organic Chemistry', 003);
INSERT INTO Students (STUDENTID, FULLNAME, PHONENUMBER, GRADE) VALUES
(011, 'STUDENT1', '009621234567', 'A'),
(012, 'STUDENT2', '009621234567', 'B'),
(013, 'STUDENT3', '009621234567', 'A'),
(014, 'STUDENT4', '009621234567', 'C'),
(015, 'STUDENT5', '009621234567', 'B');
INSERT INTO STUDES_COURSE (STUDENTID, COURSEID, ENROLL_DATE) VALUES
(011, 0001, '2024-01-10'),
(011, 0002, '2024-01-11'),
(012, 0003, '2024-01-12'),
(013, 0004, '2024-01-13'),
(014, 0005, '2024-01-14');

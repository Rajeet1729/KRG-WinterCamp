show databases;

CREATE DATABASE assignmentOne;

use assignmentOne;

-- Creating first Table
CREATE TABLE Faculty(
    F_ID int,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Hire_date date,
    Salary int
);

describe Faculty;

SELECT
    *
FROM
    Faculty;

INSERT INTO
    Faculty
VALUES
(102, 'Amit', 'Mishra', '1998-10-12', 12000);

INSERT INTO
    Faculty
VALUES
(103, 'Nitin', 'Vyas', '1994-12-24', 8000);

INSERT INTO
    Faculty
VALUES
(104, 'Rakshit', 'Soni', '2001-5-18', 14000);

INSERT INTO
    Faculty
VALUES
(105, 'Rashmi', 'Malhotra', '2004-9-11', 11000);

INSERT INTO
    Faculty
VALUES
(106, 'Sulekha', 'Srivastava', '2006-6-5', 10000);

-- Creating second Table
CREATE TABLE Courses(
    C_ID VARCHAR(10),
    F_ID int,
    Cname VARCHAR(50),
    Fees int
);

SELECT
    *
FROM
    Courses;

INSERT INTO
    Courses
VALUES
('C21', 102, 'Grid Computing', 40000);

INSERT INTO
    Courses
VALUES
('C22', 106, 'System Design', 16000);

INSERT INTO
    Courses
VALUES
('C23', 104, 'Computer Security', 8000);

INSERT INTO
    Courses
VALUES
('C24', 106, 'Human Biology', 15000);

INSERT INTO
    Courses
VALUES
('C25', 102, 'Computer Network', 20000);

INSERT INTO
    Courses
VALUES
('C26', 105, 'Visual Basic', 6000);

-- Make F_ID a Primary Key in faculty
ALTER TABLE
    Faculty
ADD
    PRIMARY KEY (F_ID);

-- Make F_ID a foreign key in the faculty
ALTER TABLE
    Courses
ADD
    CONSTRAINT foreignKey_Name FOREIGN KEY (F_ID) REFERENCES Faculty (F_ID);

-- Questions:
-- (i) To display details of those Faculties whose salary is greater than 12000.
SELECT
    *
FROM
    Faculty
WHERE
    Salary > 12000;

-- (ii) To display the details of courses whose fees is in the range of 15000 to 50000 (both values included).
SELECT
    *
FROM
    Courses
WHERE
    FEES BETWEEN 15000
    AND 50000;

-- (iii) To increase the fees of all courses by 500 of "System Design" Course. 
UPDATE
    Courses
SET
    Fees = Fees + 500
WHERE
    Cname = "System Design";

-- (iv) To display details of those courses which are taught by 'Sulekha' in descending order of Fees.
SELECT
    *
FROM
    Courses
WHERE
    F_ID = (
        SELECT
            F_ID
        FROM
            Faculty
        WHERE
            Fname = 'Sulekha'
    )
ORDER BY
    Fees;

-- (v) Select COUNT(DISTINCT F_ID) from COURSES; 
Select
    COUNT(DISTINCT F_ID)
from
    COURSES;

-- (vi) Select MIN(Salary) from FACULTY,COURSES where COURSES.F_ID = FACULTY.F_ID;
Select
    MIN(Salary)
from
    FACULTY,
    COURSES
where
    COURSES.F_ID = FACULTY.F_ID;
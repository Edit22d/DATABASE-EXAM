-- QUESTION ONE

-- i.) Create Database and Tables
CREATE DATABASE IF NOT EXISTS student;
USE student;

CREATE TABLE tblFinance (
    StudentID INT NOT NULL PRIMARY KEY,
    Tuition_Fee INT NOT NULL,
    Administration_Fee INT NOT NULL,
    Exams_Fee INT NOT NULL,
    Medical_Fee INT NOT NULL
);

CREATE TABLE tblstudent (
    StudentName VARCHAR(255) NOT NULL PRIMARY KEY,
    StudentID INT NOT NULL UNIQUE,
    Birthdate VARCHAR(20) NOT NULL,
    Year VARCHAR(20) NOT NULL,
    MobileNo VARCHAR(10) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES tblFinance(StudentID)
);

-- Insert data into tblFinance
INSERT INTO tblFinance (StudentID, Tuition_Fee, Administration_Fee, Exams_Fee, Medical_Fee)
VALUES  
  (235, 30000, 5000, 3000, 4000),
  (26, 40000, 5000, 2000, 4000),
  (1, 34000, 5000, 3000, 4000),
  (2, 23000, 5000, 3000, 4000),
  (3, 20000, 5000, 3000, 4000),
  (29, 35000, 5000, 2000, 4000),
  (127, 28000, 5000, 3000, 4000);

-- Insert data into tblstudent
INSERT INTO tblstudent (StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES 
  ('Jane', 235, '12/1/1987', 'Y1S2', '072224532'),
  ('Nicholas', 26, '22/7/2002', 'Y1S1', '0720458674'),
  ('Cyrus', 1, '15/6/1989', 'Y2S1', '0704231345'),
  ('Neema', 2, '29/11/2008', 'Y2S1', '0733876987'),
  ('Caroline', 3, '18/10/2002', 'Y1S1', '072824532'),
  ('Judith', 29, '17/6/2003', 'Y4S2', '076224532'),
  ('Grace', 127, '14/1/2000', 'Y1S2', '0733765978');

-- Display combined student and fee data
SELECT s.StudentID, s.StudentName, s.Birthdate, s.Year, s.MobileNo, 
       f.Tuition_Fee, f.Exams_Fee, f.Medical_Fee
FROM tblstudent s
INNER JOIN tblFinance f ON s.StudentID = f.StudentID;

-- ii.) Students in Y1S1
SELECT s.StudentName, s.StudentID, s.Year, f.Tuition_Fee
FROM tblstudent s
INNER JOIN tblFinance f ON s.StudentID = f.StudentID
WHERE s.Year = 'Y1S1';

-- iii.) Students with Tuition Fee >= 30000
SELECT s.StudentName, s.StudentID, s.Year, f.Tuition_Fee
FROM tblstudent s
INNER JOIN tblFinance f ON s.StudentID = f.StudentID
WHERE f.Tuition_Fee >= 30000;

-- iv.) Insert a new student
INSERT INTO tblFinance (StudentID, Tuition_Fee, Administration_Fee, Exams_Fee, Medical_Fee)
VALUES (236, 50000, 5000, 3000, 4000);

INSERT INTO tblstudent (StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES ('Dan', 236, '20/4/2001', 'Y1S2', '0723456123');

-- v.) Update student name from Nicholas to Nelson
UPDATE tblstudent
SET StudentName = 'Nelson'
WHERE StudentID = 26;

-- vii.) Add Lowest and Highest Tuition columns and update them
ALTER TABLE tblFinance
ADD COLUMN Lowest_Tuition INT,
ADD COLUMN Highest_Tuition INT;

-- Update the new columns with global min and max tuition values
UPDATE tblFinance
SET 
  Lowest_Tuition = (SELECT MIN(Tuition_Fee) FROM tblFinance),
  Highest_Tuition = (SELECT MAX(Tuition_Fee) FROM tblFinance);

-- Display final result
SELECT StudentID, Tuition_Fee, Lowest_Tuition, Highest_Tuition
FROM tblFinance;


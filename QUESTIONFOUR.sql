CREATE DATABASE Record;
USE Record;

CREATE TABLE student(
code VARCHAR(50),
stud_id INT NOT NULL PRIMARY KEY,
Nname VARCHAR(255)
);

CREATE TABLE course(
code VARCHAR(50),
Title VARCHAR(354)
   
);

INSERT INTO student(code,stud_id,Nname)
VALUES('IMIS',001,'Damaris'),('BIT',002,'Okal'),('BIT',003,'Kahurio'),('CIT',004,'Mwangi');

INSERT INTO course(code,Title)
VALUES('IMIS','Info.system'),('BIT','BBachelor of IT'),('CIY','Cen in IT'),('DIT','Dip in IT');


-- i) Select all data from both tables
SELECT * FROM student;
SELECT * FROM course;

-- ii) Insert data into the student table
INSERT INTO student(code,stud_id,Nname)
VALUES('DIT',005,'Achieng');

-- iii) update data on aspecific student
UPDATE student
SET Nname = 'achieng odhiambo'
WHERE stud_id = 005

-- iv) deleting a specific course from the Course table
DELETE FROM Course
WHERE Code = 'DIT';

-- v)Order students by name in ascending order
SELECT * FROM Student
ORDER BY Name ASC;


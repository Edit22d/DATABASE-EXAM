-- QNS.3)

CREATE DATABASE zoo_db;
USE zoo_db;
CREATE TABLE animal (
    animal_id INT PRIMARY KEY,
    animal_name VARCHAR(50),
    species VARCHAR(50),
    habitat_id INT
);
CREATE TABLE habitat (
    habitat_id INT PRIMARY KEY,
    habitat_name VARCHAR(50),
    environment VARCHAR(50)
);

CREATE TABLE feeding_schedule (
    schedule_id INT PRIMARY KEY,
    animal_id INT,
    food VARCHAR(50),
    feeding_time TIME
);

-- part a)
ALTER TABLE animal
ADD FOREIGN KEY (habitat_id) REFERENCES habitat(habitat_id);

ALTER TABLE feeding_schedule
ADD FOREIGN KEY (animal_id) REFERENCES animal(animal_id);

-- part b) 
SELECT food_type, COUNT() AS total_feedings
FROM feedings
GROUP BY food_type;

-- partc) 
SELECT animal_name, COUNT() AS feedings_per_day
FROM feedings
GROUP BY animal_name
HAVING COUNT() > 1;

-- partd)applications of DBMS
Banking Systems – For managing customer accounts,transactions,branches,Loans and others.
University– For handling student data, course registrations, attendance and others.
E-commence business-For recording customers,inventory,locations,depertments and others
Acholal hubby club - For registrating various workshops,different activities like painting,photography,cooking and others.

-- parte)
i) Primary Key 
A Primary Key is a unique identifier that identifies each record in table in the database. 

ii) Foreign Key 
A Foreign Key is a set of column in the table that references the primary key of another table.

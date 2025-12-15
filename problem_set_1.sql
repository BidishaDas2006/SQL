CREATE DATABASE college;
USE college;

CREATE TABLE Teacher(
id INT PRIMARY KEY,
Name VARCHAR(20),
subject VARCHAR(20),
salary INT
);

INSERT INTO Teacher
(id,Name, subject, salary)
VALUES
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

SELECT Name, salary FROM Teacher
WHERE salary>55000;

ALTER TABLE Teacher
CHANGE COLUMN  ctc  salary int;


UPDATE Teacher
SET salary=salary+salary*(0.25);
SET SQL_SAFE_UPDATES=0;

ALTER TABLE Teacher
ADD COLUMN city VARCHAR(20) DEFAULT "Gurgaon";

ALTER TABLE Teacher
DROP COLUMN salary;
SELECT * FROM Teacher;
DROP TABLE student;




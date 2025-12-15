CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(30),
city VARCHAR(20),
marks INT
);

INSERT INTO student
(rollno, name, city, marks)
VALUES
(110,"Adam","Delhi",76),
(108,"Bob","Mumbai",65),
(124,"Casey","Pune",94),
(112,"Duke","Pune",80);

SELECT name, marks FROM student
WHERE marks>75;

SELECT DISTINCT city
FROM student;

SELECT city ,MAX(marks)
FROM student
GROUP BY city;

SELECT AVG(marks)
FROM student;

ALTER TABLE student
ADD COLUMN grade VARCHAR(2);

UPDATE student 
SET grade="O"
WHERE marks>=80;

UPDATE student 
SET grade="A"
WHERE marks<80 AND marks>=70;

UPDATE student 
SET grade="B"
WHERE marks<70 AND marks>=60;







SELECT * FROM student;
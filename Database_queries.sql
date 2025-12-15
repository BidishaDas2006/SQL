CREATE DATABASE college;

USE college;
CREATE TABLE student(
rollno INT,
name VARCHAR(30),
age INT
);

INSERT INTO student
VALUES
(101,"BOB",45),
(102,"Adam",33);

SELECT * FROM student;

CREATE DATABASE IF NOT EXISTS instagram;


USE instagram;
SHOW TABLES;
DROP TABLE user;

CREATE TABLE user(
id INT,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(30) UNIQUE,
followers INT,
following INT ,
CONSTRAINT age_check CHECK (age>13),
PRIMARY KEY(id)

);

SELECT id, age, email FROM USER;
SELECT * FROM user;

SELECT DISTINCT age FROM user;

CREATE TABLE post(
id INT PRIMARY KEY,
content VARCHAR(100),
user_id INT,
FOREIGN KEY(user_id) REFERENCES user(id)
);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(1, 34, "bob", "bob2006@gmail.com" , 230, 120),
(2, 24, "bidisha", "bidu@gmail.com" , 238, 160),
(3, 20, "kushal", "kushal@gmail.com" , 231, 190);
USE instagram;

SELECT * FROM user
WHERE followers>230;

SELECT name, email, followers FROM user
WHERE email NOT IN ("bob2006@gmail.com","kushal@gmail.com", "abc@gmail.com");

SELECT * FROM USER
LIMIT 2;

SELECT name, age, followers FROM user
ORDER BY followers DESC;

SELECT COUNT(age)
FROM user
WHERE age=24;

SELECT age,MAX(followers)
FROM user
GROUP BY age
HAVING MAX(followers)>230;

UPDATE user
SET following=100
WHERE age=24;

ALTER TABLE user
ADD COLUMN City VARCHAR(20) DEFAULT "Delhi";

UPDATE user
SET City="Delhi"
WHERE City="DElhi";

ALTER TABLE Instauser
RENAME TO user;

ALTER TABLE user
CHANGE COLUMN followers subs INT DEFAULT 0;

ALTER TABLE user
MODIFY subs INT DEFAULT 5;




SELECT * FROM user;

SET SQL_SAFE_UPDATES=0;



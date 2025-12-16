CREATE DATABASE prime;
USE prime;

CREATE TABLE accounts(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
balance DECIMAL(10,2) 
);

INSERT INTO accounts
(name,balance)
VALUES
("Adam",500.00),
("Bob",300.00),
("Charlie",1000.00);

SELECT * FROM accounts;

-- transactions

START TRANSACTION;

UPDATE accounts SET balance= balance - 50 WHERE id=1;
UPDATE accounts SET balance= balance + 50 WHERE id=2;

COMMIT;

START TRANSACTION;

UPDATE accounts SET balance= balance - 50 WHERE id=1;
COMMIT;
UPDATE accounts SET balance= balance + 50 WHERE id=2;

ROLLBACK;


-- savepoint


START TRANSACTION;
UPDATE accounts SET balance= balance + 1000 WHERE id=1;
SAVEPOINT AFTER_WALLET_POPUP;
UPDATE accounts SET balance= balance + 10 WHERE id=1;
-- error
ROLLBACK TO AFTER_WALLET_POPUP;
COMMIT;





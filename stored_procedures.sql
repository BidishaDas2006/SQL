USE prime;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10, 2),
    branch VARCHAR(50)
);

INSERT INTO accounts VALUES
(1, 'Adam', 500.00, 'Mumbai'),
(2, 'Bob', 300.00, 'Delhi'),
(3, 'Charlie', 700.00, 'Bangalore'),
(4, 'David', 1000.00, 'Noida');

SELECT * FROM accounts;

SELECT * FROM accounts;

DELIMITER $$

CREATE PROCEDURE check_balance (
    IN acc_id INT,
    OUT bal DECIMAL(10, 2)
)
BEGIN
    SELECT balance
    INTO bal
    FROM accounts
    WHERE account_id = acc_id;
END $$

DELIMITER ;

CALL check_balance(1, @balance);
SELECT @balance;

DROP PROCEDURE check_balance;


USE prime;

SELECT * FROM customers;
SELECT * FROM orders;


-- with where
SELECT * FROM orders
WHERE amount>(
		SELECT AVG(amount)
        FROM orders
);

-- with select
SELECT name,
	(
		SELECT COUNT(*)
        FROM orders o
        WHERE o.customer_id=c.customer_id
	)AS order_count
    FROM customers c;
    
    
-- with from
SELECT 
	summary.customer_id,
    summary.avg_amount
FROM    
(
	SELECT customer_id, AVG(amount)  AS avg_amount
	FROM orders
	GROUP BY customer_id
) AS summary;

    
    
        

-- SUBQUERY 1: Orders with Above Average Sales
 

SELECT *
FROM orders
WHERE sales > (
    SELECT AVG(sales)
    FROM orders
);


-- SUBQUERY 2: Highest Sales Order Per Customer


SELECT *
FROM orders o
WHERE sales = (
    SELECT MAX(sales)
    FROM orders
    WHERE customer_id = o.customer_id
);


-- SUBQUERY 3: Customers Whose Total Sales Are
-- Above the Average Customer Sales


SELECT customer_id,
       SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
HAVING SUM(sales) >
(
    SELECT AVG(total_sales)
    FROM
    (
        SELECT SUM(sales) AS total_sales
        FROM orders
        GROUP BY customer_id
    ) AS avg_sales
);
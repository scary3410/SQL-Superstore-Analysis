
-- CTE 1: Total Sales Per Customer


WITH customer_sales AS (
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_sales
ORDER BY total_sales DESC;



-- CTE 2: Total Profit Per Customer


WITH customer_profit AS (
    SELECT
        customer_id,
        SUM(profit) AS total_profit
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_profit
ORDER BY total_profit DESC;



-- CTE 3: Customers With Sales Greater Than 10000


WITH customer_sales AS (
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT *
FROM customer_sales
WHERE total_sales > 10000
ORDER BY total_sales DESC;
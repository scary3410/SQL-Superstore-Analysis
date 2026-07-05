
-- WINDOW FUNCTION 1: ROW_NUMBER
-- Rank each customer's orders by sales


SELECT
    customer_id,
    order_id,
    sales,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id
        ORDER BY sales DESC
    ) AS row_num
FROM orders;



-- WINDOW FUNCTION 2: RANK
-- Rank customers by total sales


SELECT
    customer_id,
    SUM(sales) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(sales) DESC
    ) AS sales_rank
FROM orders
GROUP BY customer_id;



-- WINDOW FUNCTION 3: DENSE_RANK
-- Rank customers by total profit


SELECT
    customer_id,
    SUM(profit) AS total_profit,
    DENSE_RANK() OVER (
        ORDER BY SUM(profit) DESC
    ) AS profit_rank
FROM orders
GROUP BY customer_id;



-- JOIN + CTE + WINDOW FUNCTION
-- Customer Sales Ranking


WITH customer_sales AS (
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)

SELECT
    c.customer_name,
    cs.customer_id,
    cs.total_sales,
    RANK() OVER (
        ORDER BY cs.total_sales DESC
    ) AS customer_rank
FROM customer_sales cs
JOIN customers c
    ON cs.customer_id = c.customer_id
ORDER BY customer_rank;
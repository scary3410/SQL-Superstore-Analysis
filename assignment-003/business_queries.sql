
-- BUSINESS QUERY 1
-- Top 10 Customers by Total Sales


SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;



-- BUSINESS QUERY 2
-- Bottom 10 Customers by Total Sales


SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_id
ORDER BY total_sales ASC
LIMIT 10;



-- BUSINESS QUERY 3
-- Customers Who Placed Only One Order


SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) = 1;



-- BUSINESS QUERY 4
-- Orders Above Average Sales


SELECT
    order_id,
    customer_id,
    sales
FROM orders
WHERE sales >
(
    SELECT AVG(sales)
    FROM orders
);



-- BUSINESS QUERY 5
-- Customer With Highest Profit


SELECT
    customer_id,
    SUM(profit) AS total_profit
FROM orders
GROUP BY customer_id
ORDER BY total_profit DESC
LIMIT 1;



-- BUSINESS QUERY 6
-- Sales by Product Category


SELECT
    category,
    SUM(sales) AS total_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY category
ORDER BY total_sales DESC;



-- BUSINESS QUERY 7
-- Average Profit by Region


SELECT
    region,
    AVG(profit) AS average_profit
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY region
ORDER BY average_profit DESC;
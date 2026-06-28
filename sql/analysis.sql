
SELECT order_date, ship_date
FROM superstore
LIMIT 5;
DESCRIBE superstore;

SELECT
    order_date,
    order_date_new,
    ship_date,
    ship_date_new
FROM superstore
LIMIT 5;

SELECT
    order_date,
    order_date_new,
    ship_date,
    ship_date_new
FROM superstore
LIMIT 10;

ALTER TABLE superstore
DROP COLUMN order_date,
DROP COLUMN ship_date;


ALTER TABLE superstore
CHANGE order_date_new order_date DATE,
CHANGE ship_date_new ship_date DATE;


SELECT * FROM superstore
LIMIT 10;
DESCRIBE superstore;
SELECT COUNT(*) AS TotalRows
FROM superstore;

SELECT *
FROM superstore
WHERE region = 'West';

SELECT *
FROM superstore
WHERE category = 'Technology';

SELECT *
FROM superstore
WHERE order_date BETWEEN '2017-01-01' AND '2017-12-31';

SELECT *
FROM superstore
WHERE region = 'East'
AND category = 'Furniture'
AND sales > 300;


SELECT AVG(sales) AS AverageSales
FROM superstore;
SELECT SUM(quantity) AS TotalQuantity
FROM superstore;


SELECT
    region,
    SUM(sales) AS TotalSales
FROM superstore
GROUP BY region;



SELECT
    category,
    SUM(sales) AS TotalSales
FROM superstore
GROUP BY category;



SELECT
    region,
    AVG(profit) AS AverageProfit
FROM superstore
GROUP BY region;


SELECT
    product_name,
    SUM(sales) AS TotalSales
FROM superstore
GROUP BY product_name
ORDER BY TotalSales DESC
LIMIT 10;



SELECT
    customer_name,
    SUM(sales) AS TotalSales
FROM superstore
GROUP BY customer_name
ORDER BY TotalSales DESC
LIMIT 10;




SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(sales) AS TotalSales
FROM superstore
GROUP BY Year, Month
ORDER BY Year, Month;

Most Profitable Category

SELECT
    category,
    SUM(profit) AS TotalProfit
FROM superstore
GROUP BY category
ORDER BY TotalProfit DESC;

Best Selling Products

SELECT
    product_name,
    SUM(quantity) AS TotalQuantity
FROM superstore
GROUP BY product_name
ORDER BY TotalQuantity DESC
LIMIT 10;

--Duplicate Orders

SELECT
    order_id,
    COUNT(*) AS DuplicateCount
FROM superstore
GROUP BY order_id
HAVING COUNT(*) > 1;


SELECT COUNT(*) AS TotalRows
FROM superstore;
SELECT *
FROM superstore
WHERE customer_name IS NULL;
SELECT *
FROM superstore
WHERE sales IS NULL;
SELECT *
FROM superstore
WHERE profit < 0;

CREATE DATABASE superstore_db;

USE superstore_db;

CREATE TABLE superstore (
    row_id INT,
    order_id VARCHAR(20),
    order_date VARCHAR(20),
    ship_date VARCHAR(20),
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);


SELECT COUNT(*) FROM superstore;

ALTER TABLE superstore
ADD COLUMN order_date_new DATE,
ADD COLUMN ship_date_new DATE;
SET SQL_SAFE_UPDATES = 1;

UPDATE superstore
SET
order_date_new = STR_TO_DATE(order_date, '%m/%d/%Y'),
ship_date_new = STR_TO_DATE(ship_date, '%m/%d/%Y');

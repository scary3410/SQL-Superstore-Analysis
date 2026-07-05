INSERT INTO customers
SELECT DISTINCT
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region
FROM superstore;

INSERT INTO products
SELECT DISTINCT
    product_id,
    category,
    sub_category,
    product_name
FROM superstore;

INSERT INTO orders
SELECT
    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    product_id,
    sales,
    quantity,
    discount,
    profit
FROM superstore;
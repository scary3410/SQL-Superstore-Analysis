# Superstore Sales Analysis using SQL

## Objective

This project analyzes the Superstore sales dataset using SQL.

The analysis demonstrates the use of:

- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- JOIN Operations
- Business Queries

---

## Dataset

The project uses the Superstore dataset imported into MySQL.

Database:

```
superstore_db
```

Main Table:

```
superstore
```

---

## Project Structure

```
Superstore-SQL-Analysis/
│
├── README.md
├── schema.sql
├── insert_data.sql
├── subqueries.sql
├── ctes.sql
├── window_functions.sql
└── business_queries.sql
```

---

## SQL Concepts Used

### Subqueries

- Above average sales
- Highest order per customer
- Customers with above average total sales

### Common Table Expressions (CTEs)

- Total sales per customer
- Total profit per customer
- High-value customers

### Window Functions

- ROW_NUMBER()
- RANK()
- DENSE_RANK()

### Business Queries

- Top customers
- Lowest customers
- Single-order customers
- Orders above average sales
- Highest profit customer
- Sales by category
- Average profit by region

---

## Technologies

- MySQL
- MySQL CLI
- SQL
- Git
- GitHub

---

## Key Insights

- A small number of customers generate a significant portion of total sales.
- Some customers have placed only one order, indicating opportunities for customer retention.
- Orders with sales above the average contribute substantially to overall revenue.
- Window functions efficiently rank customers based on sales and profit.
- Product categories vary significantly in their contribution to total sales.
- Regional profit analysis highlights differences in profitability across regions.

---

## Author

Sujal Bhardwaj
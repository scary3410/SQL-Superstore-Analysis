# Sample Query Results

## Duplicate Removal

Duplicate records based on user_id and transaction_date were removed successfully.

---

## Average Sales by Product Category

| Product Category | Average Sales |
|------------------|--------------:|
| Electronics | 5120.35 |
| Furniture | 3488.60 |
| Grocery | 987.42 |

---

## City Counts

| City | Count |
|------|------:|
| Delhi | 145 |
| Mumbai | 180 |
| Bengaluru | 132 |

---

## Premium Users

Filtered users:

- Age between 18 and 30
- Subscription = Premium

---

## Price Statistics

Minimum Price : 0

Maximum Price : 9850

Average Price : 1245.76

---

## Revenue by Store

| Store ID | Total Revenue |
|----------|--------------:|
| 101 | 24500 |
| 102 | 18750 |
| 103 | 32100 |

---

# Insights

- Removed duplicate records to improve data quality.
- Filled missing values before aggregation.
- Used filtering to reduce unnecessary records.
- Applied grouping and aggregation to summarize data.
- Demonstrated schema modification using casting and renaming.
- Showed how Spark performs wide transformations through shuffle operations.
- Built a complete Spark data processing pipeline.

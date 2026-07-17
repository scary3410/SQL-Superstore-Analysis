# Week 5 Theory Answers

## Q1. What are the key limitations of traditional MapReduce that make Spark a preferred choice for modern big data processing?

Traditional MapReduce has several limitations:

- High disk I/O because intermediate data is written to disk.
- Slow execution for iterative algorithms.
- Complex programming model requiring multiple jobs.
- High latency for interactive analytics.

Spark overcomes these limitations by using in-memory processing, DAG execution, faster computation, and support for multiple workloads.

---

## Q2. Explain how Spark uses In-Memory Computing.

Spark stores intermediate datasets in RAM instead of writing them to disk after every operation. Machine learning algorithms repeatedly process the same data, so caching datasets in memory significantly reduces execution time and disk access.

---

## Q3.

See `pyspark_solutions.py`

---

## Q4.

See `pyspark_solutions.py`

---

## Q5. Difference between `.na.drop()` and `.na.fill()`

`.na.drop()` removes rows containing null values.

`.na.fill()` replaces null values with specified values while keeping the rows.

---

## Q6.

See `pyspark_solutions.py`

---

## Q7. Explain DataFrame immutability.

Spark DataFrames are immutable. Any transformation creates a new DataFrame instead of modifying the existing one.

Example operations include:

- drop()
- withColumnRenamed()
- filter()
- select()

---

## Q8.

See `pyspark_solutions.py`

---

## Q9. Why should null values be handled before aggregation?

Handling null values prevents incorrect mathematical results, improves data quality, and avoids inaccurate averages or totals.

---

## Q10.

See `pyspark_solutions.py`

---

## Q11. Explain Shuffle.

Shuffle is the redistribution of data across partitions during operations such as groupBy() and join(). Since data moves between executors, it is considered a wide transformation and is computationally expensive.

---

## Q12.

See `pyspark_solutions.py`

---

## Q13.

See `pyspark_solutions.py`

---

## Q14. Risk of inferSchema=True

When datasets contain inconsistent date formats or mixed data types, Spark may infer incorrect data types, resulting in parsing errors, null values, or inconsistent schemas.

---

## Q15.

See `pyspark_solutions.py`

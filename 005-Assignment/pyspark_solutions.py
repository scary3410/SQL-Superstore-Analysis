from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import TimestampType

spark = SparkSession.builder.appName("Week5Assignment").getOrCreate()

# Example DataFrame
df = spark.read.csv("sample.csv", header=True, inferSchema=True)

# --------------------------------------------------
# Q3
# Remove duplicates
# --------------------------------------------------

df_clean = df.dropDuplicates(["user_id", "transaction_date"])

# --------------------------------------------------
# Q4
# Region = West
# --------------------------------------------------

df_sales = spark.read.csv("sales.csv", header=True, inferSchema=True)

west_sales = (
    df_sales
    .filter(col("region") == "West")
    .groupBy("product_category")
    .agg(avg("sale_amount").alias("Average_Sales"))
)

# --------------------------------------------------
# Q5
# Fill null status
# --------------------------------------------------

status_df = df.na.fill({"status": "Unknown"})

# --------------------------------------------------
# Q6
# Count city >100
# --------------------------------------------------

city_count = (
    df.groupBy("city")
      .agg(count("*").alias("Total"))
      .filter(col("Total") > 100)
)

# --------------------------------------------------
# Q8
# Age between 18-30
# --------------------------------------------------

premium_users = df.filter(
    (col("age").between(18, 30)) &
    (col("subscription") == "Premium")
)

# --------------------------------------------------
# Q10
# Cast timestamp
# --------------------------------------------------

timestamp_df = (
    df.withColumn(
        "event_time",
        col("raw_timestamp").cast(TimestampType())
    )
    .drop("raw_timestamp")
)

# --------------------------------------------------
# Q12
# Remove invalid email/username
# --------------------------------------------------

clean_users = df.filter(
    col("email").isNotNull() &
    (trim(col("username")) != "")
)

# --------------------------------------------------
# Q13
# Multiple aggregations
# --------------------------------------------------

price_stats = df.agg(
    min("price").alias("Minimum"),
    max("price").alias("Maximum"),
    avg("price").alias("Average")
)

# --------------------------------------------------
# Q15
# Final pipeline
# --------------------------------------------------

pipeline = (
    df
    .dropDuplicates()
    .na.fill({"price": 0})
    .groupBy("store_id")
    .agg(sum("price").alias("Total_Revenue"))
)

print("Duplicates Removed")
df_clean.show()

print("West Region Average Sales")
west_sales.show()

print("Status Filled")
status_df.show()

print("City Counts")
city_count.show()

print("Premium Users")
premium_users.show()

print("Timestamp Updated")
timestamp_df.show()

print("Clean Users")
clean_users.show()

print("Price Statistics")
price_stats.show()

print("Final Revenue")
pipeline.show()

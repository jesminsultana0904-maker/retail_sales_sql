# 🛒 Retail Sales Analysis Using SQL

## 📌 Project Overview

This project focuses on analyzing retail sales data using SQL to extract meaningful business insights. It involves data cleaning, data exploration, and business analysis to understand sales performance, customer behavior, product categories, and purchasing patterns.

The project demonstrates how SQL can be used to transform raw sales data into useful information for data-driven business decisions.

## 🎯 Objectives

- Clean and prepare retail sales data for analysis.
- Analyze overall sales performance and customer activity.
- Identify sales trends across product categories.
- Understand customer purchasing behavior.
- Analyze monthly sales performance.
- Identify top customers based on sales.
- Analyze sales transactions across different time shifts.

## 🛠️ Tools & Technologies

- **SQL**
- **PostgreSQL**

## 📂 Dataset Description

The dataset contains retail transaction information with the following columns:

| Column | Description |
|---|---|
| transactions_id | Unique transaction identifier |
| sale_date | Date of sale |
| sale_time | Time of sale |
| customer_id | Customer identifier |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantiy | Quantity purchased |
| price_per_unit | Price per unit |
| cogs | Cost of goods sold |
| total_sale | Total sales amount |

## 🧹 Data Cleaning

The following data cleaning operations were performed:

- Checked for NULL values across the dataset.
- Replaced missing customer age values using the average age.
- Removed records containing NULL values in important columns.
- Prepared the dataset for further analysis.

## 🔍 SQL Analysis & Business Questions

This project answers the following business questions:

1. Retrieve all sales transactions made on a specific date.
2. Identify clothing transactions with a quantity of at least 4 during November 2022.
3. Calculate total sales for each product category.
4. Calculate the average age of customers purchasing Beauty products.
5. Identify transactions with total sales greater than 1,000.
6. Calculate the number of transactions by gender and product category.
7. Identify the best-selling month in each year based on average sales.
8. Find the top 5 customers based on total sales.
9. Calculate the number of unique customers purchasing from each category.
10. Categorize sales transactions into Morning, Afternoon, and Evening shifts.

## 📊 SQL Concepts Used

- SELECT, WHERE, ORDER BY
- GROUP BY
- Aggregate Functions (SUM, AVG, COUNT)
- COUNT DISTINCT
- UPDATE and DELETE
- NULL Value Handling
- Subqueries
- CASE Statements
- Date and Time Functions
- EXTRACT and TO_CHAR
- Window Functions (RANK)
- LIMIT

## 📈 Key Learning Outcomes

- Practiced SQL-based data cleaning and preparation.
- Developed analytical queries to solve business problems.
- Improved understanding of customer and sales analysis.
- Learned to use window functions for ranking and comparisons.
- Applied SQL concepts to real-world business scenarios.

## 📁 Project Structure

```text
Retail-Sales-Analysis-SQL/
│
├── retail_sales.sql
└── README.md
```

## 👨‍💻 Author

**Jesmin Sultana**

Aspiring Data Analyst | SQL | Power BI | Excel

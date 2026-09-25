# 📊 SQL 50 Practice Questions

A collection of **50 SQL practice questions and solutions** created as part of my journey to strengthen my SQL and data analytics skills.

The questions are based on a small employee database and cover SQL fundamentals through intermediate concepts such as filtering, aggregation, joins, subqueries, ranking, and window functions.

---

## 🎯 Objective

The goal of this practice was to improve my ability to:

* Understand SQL problem statements
* Break problems into smaller steps
* Choose the right SQL functions and clauses
* Write and test SQL queries
* Work with multiple tables
* Solve interview-style SQL problems
* Improve query logic and problem-solving skills

---

## 🗂️ Repository Structure

```text
SQL-50-Practice-Questions/
│
├── README.md
│
├── data/
│   ├── worker.csv
│   ├── title.csv
│   └── bonus.csv
│
├── schema.sql
│
├── SQL_50_Practice_Questions.sql

```

---

## 🗄️ Dataset

The practice questions use three related tables:

### `worker`

Contains employee information such as:

* Worker ID
* First Name
* Last Name
* Salary
* Joining Date
* Department

### `title`

Contains information about employee job titles.

### `bonus`

Contains bonus information associated with employees.

The original CSV files are available in the [`data/`](./data) folder.

---

## 📚 SQL Concepts Covered

### 🔹 Basic SQL

* `SELECT`
* `DISTINCT`
* Column aliases
* `WHERE`
* `ORDER BY`
* `LIMIT`

### 🔹 Filtering

* Comparison operators
* `IN`
* `NOT IN`
* `LIKE`
* `BETWEEN`
* `IS NULL`
* `IS NOT NULL`

### 🔹 String Functions

* `UPPER()`
* `LOWER()`
* `LENGTH()`
* `LEFT()`
* `TRIM()`
* `REPLACE()`
* `CONCAT()`

### 🔹 Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

### 🔹 Grouping

* `GROUP BY`
* `HAVING`

### 🔹 Joins

* `INNER JOIN`
* `LEFT JOIN`

### 🔹 Subqueries

* Scalar subqueries
* Subqueries for comparison
* Nested queries

### 🔹 Advanced SQL

* `DENSE_RANK()`
* Window functions
* Ranking problems
* Nth-highest salary problems
* Duplicate records
* Department-wise analysis

---

## 📌 Example Problems

Some of the problems included in this practice set involve:

* Finding employees with specific salary ranges
* Finding employees who joined during a particular period
* Finding duplicate records
* Finding employees without a bonus
* Finding the highest and lowest salaries
* Finding the second and nth-highest salaries
* Finding department-wise salary information
* Ranking employees based on salary
* Working with employee titles and bonuses
* Retrieving the first and last records

---

## 💡 What I Learned

Working through these problems helped me understand that SQL is not just about remembering syntax.

The main learning process was:

```text
Understand the problem
        ↓
Identify the required data
        ↓
Choose the SQL operation
        ↓
Write the query
        ↓
Test the result
        ↓
Optimize / improve the query
```

This practice especially helped me become more comfortable with **JOINs, GROUP BY, subqueries, and window functions**.

---

## 🚀 What's Next?

This repository is part of my ongoing SQL learning journey.

Next, I plan to practice:

* Common Table Expressions (CTEs)
* Advanced Window Functions
* Complex JOIN problems
* `CASE` statements
* Date & Time Analysis
* Business Analytics SQL
* SQL Interview Questions
* Real-world Data Analyst SQL problems

---

## 👨‍💻 About Me

**Roshan Kumar Mandal**

B.E. Computer Science — Data Science

Interested in:

* 📊 Data Analytics
* 🗄️ SQL
* 🐍 Python
* 📈 Power BI
* 📊 Business Intelligence

---

⭐ If you find this repository useful, feel free to explore the queries and use them for SQL practice.

# Task 5: SQL Joins (Inner, Left, Right, Full)

## 🎯 Objective
The goal of this task is to learn and demonstrate how to combine data from multiple tables using different types of SQL JOINs.

## 🛠 Tools Used
- SQLite
  
## 🧱 Tables Created
- Customers
- Orders

## 🗃 Sample Data

*Customers*
| customer_id | name    | email              |
|-------------|---------|--------------------|
| 1           | Alice   | alice@example.com  |
| 2           | Bob     | bob@example.com    |
| 3           | Charlie | charlie@example.com|

*Orders*
| order_id | customer_id | product | amount |
|----------|-------------|---------|--------|
| 101      | 1           | Laptop  | 900    |
| 102      | 2           | Phone   | 500    |
| 103      | 1           | Tablet  | 300    |

## 🧪 SQL Queries Used

- INNER JOIN — fetch records with matching customer IDs
- LEFT JOIN — include all customers even if they don’t have orders
- RIGHT JOIN — include all orders even if no matching customer (used in MySQL)
- FULL OUTER JOIN — combine LEFT and RIGHT using UNION (for SQLite)

## 📌 Output Highlights
Each JOIN type shows how different combinations of data are returned based on relationships between the Customers and Orders tables.

## 📁 Files Included
- task5.sql: SQL file with table creation, data insertion, and all join queries
- README.md: This documentation

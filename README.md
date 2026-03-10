# Retail Advanced SQL Analysis

## Project Overview
This project demonstrates advanced SQL analytics on a retail dataset. The dataset contains transactional records of an online retail store, including invoices, products, quantity, prices, customers, and countries. The goal of this project is to perform **comprehensive data analysis using SQL**, covering key concepts like aggregation, window functions, subqueries, CTEs, and handling NULL values.

This project simulates **real-world retail analytics** and can be used to showcase skills for **data analyst or business intelligence roles**.

---

## Dataset
- **Columns:**
  | Column        | Description |
  |---------------|-------------|
  | InvoiceNo     | Unique invoice number |
  | StockCode     | Product code |
  | Description   | Product description |
  | Quantity      | Number of items purchased |
  | InvoiceDate   | Date and time of invoice |
  | UnitPrice     | Price per unit |
  | CustomerID    | Unique customer identifier |
  | Country       | Customer's country |

- **Data Cleaning & Issues Handled:**
  - Removed or ignored NULL values in `CustomerID` and `Description`
  - Handled multiple product entries per invoice
  - Rounded revenue for financial clarity

---

## Project Tasks

| Task | Description | SQL Concepts |
|------|-------------|-------------|
| 1 | Total Revenue | `SUM()` |
| 2 | Top 10 Products by Revenue | `GROUP BY`, `ORDER BY`, `LIMIT` |
| 3 | Top 5 Customers by Spending | `GROUP BY`, `COUNT(DISTINCT ...)`, `SUM()` |
| 4 | Revenue by Country | `SUM()`, `COUNT(DISTINCT ...)`, `GROUP BY` |
| 5 | Monthly Revenue Trend | `EXTRACT()`, `TO_CHAR()`, `GROUP BY`, `ORDER BY` |
| 6 | Most Frequently Purchased Product | `SUM(quantity)`, `GROUP BY`, `ORDER BY` |
| 7 | Customers with >10 Orders | `HAVING`, `COUNT(DISTINCT ...)` |
| 8 | Average Order Value (AOV) | Subquery / CTE, `SUM()/COUNT(DISTINCT ...)` |
| 9 | Top Product per Country | `ROW_NUMBER() OVER(PARTITION BY ...)`, Window Functions |
| 10 | Customer Lifetime Value (CLV) | `SUM(quantity*unitprice)`, derived metrics, `AVG()` |

---

## Key SQL Concepts Practiced
- Filtering (`WHERE`) & handling NULLs  
- Aggregation (`SUM()`, `COUNT()`, `COUNT(DISTINCT ...)`)  
- Grouping (`GROUP BY`)  
- Window Functions (`ROW_NUMBER()`, `RANK()`, `PARTITION BY`)  
- Subqueries & CTEs  
- Date & Time Functions (`EXTRACT()`, `TO_CHAR()`)  
- Ordering & Ranking (`ORDER BY`, `LIMIT`)  
- Derived Metrics (Average Order Value, Lifetime Value)  

---

## How to Run
1. Download the `queries.sql` file and `retail_dataset.csv` from this repository.  
2. Open `queries.sql` in **PostgreSQL**, **pgAdmin**, or any SQL client.  
3. Run each query sequentially to see the results.  
4. Optional: Export outputs to CSV for visualization or reporting.  

---

## Optional Enhancements
- Visualize monthly revenue trends or top products using Power BI or Python.  
- Calculate growth rates, profit margins, or extended CLV metrics.  
- Create dashboards for country-wise top products and customer insights.  

---

## Author
**Mohd Riyaz**  
- Passionate about Data Analysis and SQL  

# Adventure Works SQL Analysis and Sales Dashboard

## 📊 Project Overview

The **Adventure Works SQL Analysis and Sales Dashboard** is a data analytics and business intelligence project built using **MySQL and Microsoft Excel**.

The project analyzes sales transactions from the **Adventure Works dataset** to identify important business insights related to:

* Sales performance
* Production cost
* Profitability
* Orders and customers
* Year-wise sales
* Quarter-wise sales
* Month-wise sales
* Products
* Product categories
* Product sub-categories
* Sales territories
* Countries
* Customer segments
* Top customers
* Top-selling products
* High-profit products
* Business KPIs

The final dashboard provides an interactive view of sales performance using **KPI cards, charts, slicers, and trend analysis**.

---

# 🎯 Project Objectives

The main objectives of this project are:

1. Analyze overall sales performance.
2. Calculate total sales and production cost.
3. Measure total profit.
4. Analyze sales trends by year, quarter, and month.
5. Identify top-performing products.
6. Identify customers with the highest sales.
7. Analyze sales by country and territory.
8. Analyze sales by product category and sub-category.
9. Understand customer sales based on gender and income group.
10. Calculate important business KPIs such as:

* Average Order Value
* Profit Margin %
* Total Quantity Sold
* Average Selling Price
* Revenue Per Customer

---

# 🗂️ Dataset

The project uses the **Adventure Works sales dataset**, which contains fact and dimension tables.

## Main Tables

### Fact Tables

* `factinternetsales`
* `factinternetsalesNew`
* `appendedFactSales`

### Dimension Tables

* `dimcustomer`
* `dimdate`
* `dimproduct`
* `dimSalesTerritory`
* `DimProdSubCategory`
* `DimProdCategory`

The SQL script creates the required tables and loads the corresponding CSV files into MySQL.

---

# 🏗️ Data Model

The project follows a **star-schema-style data model**, where the central sales fact table connects to multiple dimension tables.

```text
                         ┌──────────────────┐
                         │     DimDate      │
                         │──────────────────│
                         │ DateKey          │
                         │ CalendarYear     │
                         │ Quarter          │
                         │ Month            │
                         │ Day              │
                         └────────┬─────────┘
                                  │
                                  │
┌──────────────────┐      ┌───────▼─────────┐      ┌──────────────────┐
│   DimCustomer    │      │ AppendedFactSales│      │    DimProduct    │
│──────────────────│      │─────────────────│      │──────────────────│
│ CustomerKey      │─────▶│ CustomerKey     │◀─────│ ProductKey       │
│ FirstName        │      │ ProductKey      │      │ ProductName      │
│ LastName         │      │ OrderDateKey    │      │ ProductCategory  │
│ Gender           │      │ SalesAmount     │      │ StandardCost     │
│ YearlyIncome     │      │ TotalProductCost│      │ ListPrice        │
│ Occupation       │      │ OrderQuantity   │      │ SubCategoryKey   │
└──────────────────┘      │ UnitPrice       │      └──────────────────┘
                          │ SalesOrderNumber │
                          │ TerritoryKey     │
                          └───────┬─────────┘
                                  │
                         ┌────────▼─────────┐
                         │ DimSalesTerritory│
                         │──────────────────│
                         │ TerritoryKey     │
                         │ Region            │
                         │ Country           │
                         │ Group             │
                         └──────────────────┘

                 Product
                    │
                    ▼
          ┌────────────────────┐
          │ DimProdSubCategory │
          └─────────┬──────────┘
                    │
                    ▼
          ┌────────────────────┐
          │  DimProdCategory   │
          └────────────────────┘
```

---

# 🛠️ Tools & Technologies

## Database

* **MySQL**
* **MySQL Workbench**

## Data Analysis

* SQL
* Aggregations
* Joins
* `GROUP BY`
* `ORDER BY`
* `CASE` statements
* Date-based analysis
* KPI calculations

## Dashboard

* Microsoft Excel
* Pivot-style analysis
* Charts
* Slicers
* KPI cards
* Interactive filtering

## Dataset

* Adventure Works

---

# 🧹 Data Preparation

The project begins by creating the required database and tables in MySQL.

```sql
CREATE DATABASE sql_project;

USE sql_project;
```

The sales fact table contains fields such as:

* `ProductKey`
* `OrderDateKey`
* `CustomerKey`
* `SalesTerritoryKey`
* `SalesOrderNumber`
* `OrderQuantity`
* `UnitPrice`
* `TotalProductCost`
* `SalesAmount`
* `TaxAmt`
* `Freight`

The CSV files are loaded into MySQL using `LOAD DATA INFILE`.

Dimension tables are also created for:

* Customers
* Dates
* Products
* Sales territories
* Product sub-categories
* Product categories

---

# 🔗 Data Integration

The project combines sales data into an appended fact table:

```text
appendedFactSales
```

This table contains the sales transaction information used for major business analysis and dashboard calculations.

The appended fact table is loaded from:

```text
AppendedFactTable.csv
```

The integrated table allows sales transactions to be analyzed together with customer, product, date, and territory information.

---

# 📈 Key Performance Indicators

The dashboard contains the following major KPIs:

| KPI                       | Description                            |
| ------------------------- | -------------------------------------- |
| **Total Sales**           | Total revenue generated from sales     |
| **Production Cost**       | Total product production cost          |
| **Total Profit**          | Sales minus production cost            |
| **Sales Count**           | Number of sales records                |
| **Total Orders**          | Number of sales orders                 |
| **Total Customers**       | Number of unique customers             |
| **Total Quantity Sold**   | Total quantity of products sold        |
| **Average Order Value**   | Average revenue generated per order    |
| **Profit Margin %**       | Percentage of sales retained as profit |
| **Average Selling Price** | Average unit selling price             |
| **Revenue Per Customer**  | Average revenue generated per customer |

---

# 💰 Dashboard KPI Summary

The dashboard currently displays approximately:

| Metric              |  Value |
| ------------------- | -----: |
| **Total Sales**     |  29.4M |
| **Production Cost** |  17.3M |
| **Profit**          |  12.1M |
| **Sales Count**     | 60,398 |

These figures are displayed in the dashboard's KPI section.

> **Note:** Dashboard values are based on the current project dataset and dashboard calculations.

---

# 📅 Year-Wise Sales Analysis

Year-wise sales are calculated by joining the sales fact table with the date dimension.

```sql
SELECT 
    d.CalendarYear AS Year,
    ROUND(SUM(a.SalesAmount), 2) AS Sales
FROM appendedFactSales AS a
JOIN dimdate AS d
    ON a.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY d.CalendarYear;
```

### Dashboard Analysis

The dashboard shows sales performance across:

* 2010
* 2011
* 2012
* 2013
* 2014

This analysis helps identify changes in annual sales performance.

---

# 📊 Quarter-Wise Sales

Quarter-wise sales are calculated using the calendar quarter from the date dimension.

```sql
SELECT 
    d.CalendarQuarter AS Quarter,
    ROUND(SUM(a.SalesAmount), 2) AS Sales
FROM appendedFactSales AS a
JOIN dimdate AS d
    ON a.OrderDateKey = d.DateKey
GROUP BY d.CalendarQuarter
ORDER BY d.CalendarQuarter;
```

The dashboard presents this information through a **Quarter-Wise Sales** chart.

---

# 🌍 Territory Analysis

Sales can be analyzed by sales territory region.

```sql
SELECT 
    t.SalesTerritoryRegion AS Territory_Region,
    ROUND(SUM(a.SalesAmount), 2) AS Sales
FROM appendedFactSales AS a
JOIN dimsalesterritory AS t
    ON a.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryRegion
ORDER BY t.SalesTerritoryRegion;
```

This analysis helps understand how different sales territories contribute to overall revenue.

---

# 📦 Product Analysis

## Product Sub-Category Sales

The project analyzes sales at the product sub-category level.

```sql
SELECT 
    ps.EnglishProductSubcategoryName AS Product_Sub_Category,
    ROUND(SUM(a.SalesAmount), 2) AS Sales
FROM appendedFactSales AS a
JOIN dimproduct AS p
    ON a.ProductKey = p.ProductKey
JOIN dimprodsubcategory AS ps
    ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
GROUP BY ps.EnglishProductSubcategoryName;
```

This analysis helps identify which product sub-categories contribute most to sales.

---

# 🏷️ Product Category Analysis

Sales are also analyzed at the product category level.

```sql
SELECT 
    pc.EnglishProductCategoryName AS Product_Category,
    ROUND(SUM(a.SalesAmount), 2) AS Sales
FROM appendedFactSales AS a
JOIN dimproduct AS p
    ON a.ProductKey = p.ProductKey
JOIN dimprodsubcategory AS ps
    ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
JOIN dimprodcategory AS pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName;
```

The dashboard provides a **Product Category** filter containing categories such as:

* Accessories
* Bikes
* Clothing

---

# 🏆 Top-Selling Products

The project identifies the top 10 products based on sales.

```sql
SELECT 
    p.EnglishProductName,
    SUM(f.SalesAmount) AS Sales
FROM appendedFactSales f
JOIN dimproduct p
    ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY Sales DESC
LIMIT 10;
```

The dashboard also contains a **Top 10 Products with High Profit** visualization.

---

# 👥 Customer Analysis

## Top 10 Customers

The dashboard contains a **Top 10 Customers with High Sales** visualization.

Customer-level sales analysis is performed by connecting the customer dimension with the sales fact table.

### Total Unique Customers

```sql
SELECT 
    COUNT(DISTINCT CustomerKey) AS Total_Customers
FROM appendedFactSales;
```

This calculation identifies the number of unique customers contributing to sales.

---

# 🌎 Sales by Country

The project analyzes sales performance by country.

```sql
SELECT 
    t.SalesTerritoryCountry,
    ROUND(SUM(f.SalesAmount), 2) AS Sales
FROM appendedFactSales f
JOIN dimsalesterritory t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryCountry
ORDER BY Sales DESC;
```

The dashboard provides a country filter with countries including:

* Australia
* Canada
* France
* Germany
* United Kingdom
* United States

---

# 👤 Sales by Gender

Sales performance can be analyzed by customer gender.

```sql
SELECT 
    c.Gender,
    ROUND(SUM(f.SalesAmount), 2) AS Sales
FROM appendedFactSales f
JOIN dimcustomer c
    ON f.CustomerKey = c.CustomerKey
GROUP BY c.Gender;
```

This analysis helps compare sales contributions across customer gender groups.

---

# 💵 Sales by Income Group

Customers are divided into income groups using a SQL `CASE` statement.

### Income Groups

| Income Group      |   Annual Income |
| ----------------- | --------------: |
| **Low Income**    |        < 40,000 |
| **Middle Income** | 40,000 – 80,000 |
| **High Income**   |        > 80,000 |

```sql
CASE
    WHEN YearlyIncome < 40000 THEN 'Low Income'
    WHEN YearlyIncome BETWEEN 40000 AND 80000 THEN 'Middle Income'
    ELSE 'High Income'
END AS Income_Group
```

Sales are then aggregated according to the income group.

---

# 📅 Best Sales Month

The project identifies monthly sales performance.

```sql
SELECT
    d.EnglishMonthName,
    ROUND(SUM(f.SalesAmount), 2) AS Sales
FROM appendedFactSales f
JOIN dimdate d
    ON f.OrderDateKey = d.DateKey
GROUP BY d.MonthNumberOfYear, d.EnglishMonthName
ORDER BY Sales DESC;
```

The dashboard also displays a **Month-Wise Sales** trend chart.

---

# 💳 Average Order Value

Average Order Value, or **AOV**, is calculated as:

```text
Total Sales / Distinct Orders
```

SQL:

```sql
SELECT 
    ROUND(
        SUM(SalesAmount) / COUNT(DISTINCT SalesOrderNumber),
        2
    ) AS Avg_Order_Value
FROM appendedFactSales;
```

AOV represents the average revenue generated per order.

---

# 📈 Profit Margin

Profit Margin is calculated using:

```text
Profit Margin % =
((Sales Amount - Total Product Cost) / Sales Amount) × 100
```

SQL:

```sql
SELECT 
    ROUND(
        (
            SUM(SalesAmount - TotalProductCost)
            / SUM(SalesAmount)
        ) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM appendedFactSales;
```

This KPI helps measure profitability relative to total sales.

---

# 📦 Total Quantity Sold

The total quantity sold is calculated using:

```sql
SELECT 
    SUM(OrderQuantity) AS Total_Products_Sold
FROM appendedFactSales;
```

This metric represents the total number of product units sold.

---

# 💲 Average Selling Price

The project calculates the average unit selling price.

```sql
SELECT 
    ROUND(AVG(UnitPrice), 2) AS Avg_Selling_Price
FROM appendedFactSales;
```

---

# 👤 Revenue Per Customer

Revenue per customer is calculated as:

```text
Total Sales / Distinct Customers
```

SQL:

```sql
SELECT 
    ROUND(
        SUM(SalesAmount) / COUNT(DISTINCT CustomerKey),
        2
    ) AS Revenue_Per_Customer
FROM appendedFactSales;
```

This KPI represents the average revenue generated per unique customer.

---

# 📊 Dashboard Features

The final dashboard contains several interactive components.

## KPI Cards

* Sum of Sales
* Sum of Production Cost
* Sum of Profit
* Count of Sales

## Charts

* Year-Wise Sales
* Quarter-Wise Sales
* Month-Wise Sales
* Top 10 Products with High Profit
* Top 10 Customers with High Sales
* Sales Amount vs Production Cost

## Filters / Slicers

* Year
* Country
* Product Category

---

# 🔍 Business Questions Answered

This project helps answer the following business questions:

1. What is the total sales amount?
2. What is the total production cost?
3. What is the total profit?
4. How many sales transactions are recorded?
5. How many unique customers are there?
6. Which year generated the highest sales?
7. Which quarter generated the highest sales?
8. Which month generated the highest sales?
9. Which products generate the highest sales?
10. Which products have high profit?
11. Which customers generate the highest sales?
12. Which countries generate the highest sales?
13. Which product categories generate the most revenue?
14. How do sales differ across territories?
15. How does sales performance vary by gender?
16. Which income group contributes the most sales?
17. What is the average order value?
18. What is the profit margin percentage?
19. What is the average selling price?
20. What is the revenue generated per customer?

---

# 💡 Key Dashboard Insights

Based on the displayed dashboard:

* Total sales are approximately **29.4M**.
* Total production cost is approximately **17.3M**.
* Total profit is approximately **12.1M**.
* The dashboard contains **60,398 sales records**.
* Sales are analyzed across the years **2010–2014**.
* The dashboard allows users to filter results by **year, country, and product category**.
* Product performance is analyzed using both sales and high-profit views.
* Customer performance is represented through a **Top 10 Customers** visualization.
* Monthly sales trends show changes in sales performance over time.
* Sales amount and production cost are compared through a combined chart.

---

# 📁 Project Structure

```text
Adventure-Works-Sales-Dashboard/
│
├── README.md
│
├── SQL/
│   └── Project SQL.sql
│
├── Dashboard/
│   └── Adventure_Works_Sales_Dashboard.xlsx
│
├── Images/
│   └── Dashboard_Adventure_Works.png
│
└── Dataset/
    ├── FactInternetSales.csv
    ├── Fact_Internet_Sales_New.csv
    ├── AppendedFactTable.csv
    ├── DimCustomer.csv
    ├── DimDate.csv
    ├── DimProduct.csv
    ├── DimSalesTerritory.csv
    ├── DimProdSubCategory.csv
    └── DimProdCategory.csv
```

---

# 🚀 Project Workflow

```text
Raw CSV Data
      ↓
Data Loading
      ↓
MySQL Database
      ↓
Fact & Dimension Tables
      ↓
Data Integration
      ↓
SQL Analysis
      ↓
KPI Calculation
      ↓
Dashboard Creation
      ↓
Business Insights
```

---

# 🧠 SQL Concepts Used

This project demonstrates practical knowledge of:

* `CREATE DATABASE`
* `CREATE TABLE`
* `DROP TABLE`
* `LOAD DATA INFILE`
* `SELECT`
* `SUM()`
* `COUNT()`
* `COUNT(DISTINCT)`
* `AVG()`
* `ROUND()`
* `JOIN`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `CASE`
* `UNION`
* Date dimension analysis
* Fact and dimension table relationships
* Aggregate functions
* Business KPI calculations

---

# 📌 Skills Demonstrated

## Technical Skills

* SQL
* MySQL
* Data Cleaning
* Data Preparation
* Data Modeling
* Data Analysis
* Business Intelligence
* KPI Development
* Dashboard Development
* Data Visualization

## Analytical Skills

* Sales Analysis
* Profitability Analysis
* Customer Analysis
* Product Analysis
* Time-Series Analysis
* Geographic Analysis
* Revenue Analysis
* Performance Tracking

---

# 🎓 Project Learning Outcomes

Through this project, I practiced how to:

* Build a relational sales database.
* Load CSV datasets into MySQL.
* Work with fact and dimension tables.
* Join multiple tables for business analysis.
* Calculate sales and profitability KPIs.
* Perform time-based sales analysis.
* Analyze customers and products.
* Analyze sales by geography and territory.
* Create meaningful dashboard visualizations.
* Convert raw sales data into business insights.
* Present analytical results through an interactive dashboard.

---

# 💼 Business Intelligence Applications

The project demonstrates how SQL and dashboarding can be used for practical business reporting, including:

* Sales performance monitoring
* Revenue tracking
* Profitability analysis
* Customer performance analysis
* Product performance analysis
* Regional sales analysis
* Monthly and yearly trend analysis
* KPI monitoring
* Management reporting
* Data-driven decision support

---

# 👨‍💻 Author

## Ratnesh Chauhan

**B.Tech – Computer Science & Engineering**

Aspiring:

* Data Analyst
* Business Analyst
* Power BI Developer
* Business Intelligence Analyst
* Data Analytics Professional

### Connect With Me

* **GitHub:** https://github.com/Ratnesh8577
* **LinkedIn:** https://www.linkedin.com/in/ratnesh-chauhan-41a113279/
* **LeetCode:** https://leetcode.com/u/RatneshChauhan279/

---

# ⭐ Project Highlights

### Adventure Works SQL analysis and Sales Dashboard

> **Turning raw sales data into meaningful business insights using SQL, data modeling, KPI analysis, and interactive dashboard visualizations.**

### Technologies

`MySQL` `SQL` `Microsoft Excel` `Data Analysis` `Data Visualization` `Business Intelligence` `KPI Analysis` `Dashboarding`

---

# 📌 Project Summary

The **Adventure Works Sales Dashboard** demonstrates an end-to-end data analytics workflow, starting from raw CSV data and progressing through database creation, data integration, SQL analysis, KPI development, and interactive dashboard creation.

The project combines **technical SQL skills** with **business-oriented data analysis** to transform transactional sales data into a structured reporting solution that can be used to understand sales, costs, profits, customers, products, territories, and time-based performance.

---

⭐ **If you find this project useful, consider giving the repository a star!**

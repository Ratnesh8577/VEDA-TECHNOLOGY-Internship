# Superstore Sales SQL Analysis

An end-to-end **SQL data analysis project** using the Superstore retail dataset to explore sales performance, profitability, customer segments, discounts, shipping modes, and business trends.

The project uses **PostgreSQL** and progresses from basic dataset exploration to deeper profitability and root-cause analysis.

---

## 📊 Dataset

* **Dataset:** Superstore Sales Dataset
* **Source:** Kaggle
* **Database:** PostgreSQL
* **Records:** 9,994
* **Time Period:** 2011–2014
* **Regions:** South, West, East, Central
* **Categories:** Furniture, Office Supplies, Technology
* **Sub-Categories:** 17
* **Unique Products:** 1,841
* **Unique Cities:** 531

The dataset contains order details, customer information, geography, products, sales, quantity, discount, and profit.

The initial exploration also checks important fields for missing values; the examined postal code, city, sales, and profit fields contain no NULL values.

---

## 🎯 Project Objectives

* Explore the structure and quality of the dataset
* Identify top-performing regions and states
* Analyse category and sub-category sales
* Identify top products and customers
* Analyse monthly and yearly sales trends
* Calculate year-over-year sales growth
* Identify loss-making products and sub-categories
* Study the relationship between discounts and profitability
* Analyse customer segments
* Evaluate shipping modes and profitability
* Perform controlled analysis to investigate potential business drivers

---

## 🗂️ Project Structure

```text
Superstore-SQL-Analysis/
│
├── 01_exploration.sql
├── 02_sales_analysis.sql
├── 03_profit_analysis.sql
└── README.md
```

### SQL Files

**01_exploration.sql**

* Dataset size
* Date range
* Geographic coverage
* Product hierarchy
* Data quality checks

**02_sales_analysis.sql**

* Regional sales
* State-level sales
* Category and sub-category performance
* Top products
* Top customers
* Monthly sales trends
* Year-over-year growth
* Loss-making products

**03_profit_analysis.sql**

* Category profitability
* Segment profitability
* Sub-category profitability
* High-sales/low-profit products
* Loss-making products
* Discount impact
* Customer segmentation
* Shipping mode analysis
* Controlled profitability analysis

---

## 🔍 Key Findings

### 1. Geographic Sales Performance

The **West region** generates the highest sales at approximately **$725,458**.

**California** is the highest-selling state with approximately **$457,688** in sales.

The highest-selling state within each region is:

| Region  | Top State  |       Sales |
| ------- | ---------- | ----------: |
| West    | California | $457,687.68 |
| East    | New York   | $310,876.20 |
| Central | Texas      | $170,187.98 |
| South   | Florida    |  $89,473.73 |

---

### 2. Category Performance

Technology generates the highest sales:

| Category        |       Sales |
| --------------- | ----------: |
| Technology      | $836,154.10 |
| Furniture       | $741,999.98 |
| Office Supplies | $719,046.99 |

Technology also generates the highest total profit at approximately **$145,455**.

---

### 3. Top Sub-Categories by Sales

The highest-selling sub-categories include:

1. Phones — $330,007.10
2. Chairs — $328,449.13
3. Storage — $223,843.59
4. Tables — $206,965.68
5. Binders — $203,412.77

---

### 4. Customer Contribution

The top five customers by revenue are:

| Customer      |    Revenue |
| ------------- | ---------: |
| Sean Miller   | $25,043.07 |
| Tamara Chand  | $19,052.22 |
| Raymond Buch  | $15,117.35 |
| Tom Ashbrook  | $14,595.62 |
| Adrian Barton | $14,473.57 |

---

### 5. Sales Trends

Monthly analysis shows that **November and December** have the highest overall sales, followed by September.

| Month     |       Sales |
| --------- | ----------: |
| November  | $349,120.08 |
| December  | $332,177.20 |
| September | $309,770.12 |

This indicates a strong increase in sales toward the end of the year.

---

### 6. Year-over-Year Sales Growth

| Year |       Sales | YoY Growth |
| ---- | ----------: | ---------: |
| 2011 | $484,247.56 |          — |
| 2012 | $470,532.46 |     -2.83% |
| 2013 | $608,474.08 |     29.32% |
| 2014 | $733,946.97 |     20.62% |

The analysis shows a decline in 2012 followed by substantial sales growth in 2013 and 2014.

---

## 💰 Profitability Analysis

### Most Profitable Category

**Technology** is the most profitable category with approximately **$145,454.95** in total profit.

### Most Profitable Segment

The **Consumer** segment generates the highest total profit at approximately **$134,119.33**.

### Most Profitable Sub-Categories

| Sub-Category |     Profit |
| ------------ | ---------: |
| Copiers      | $55,617.90 |
| Phones       | $44,516.25 |
| Accessories  | $41,936.78 |
| Paper        | $34,053.34 |
| Binders      | $30,221.64 |

---

## ⚠️ Loss-Making Products

The analysis identifies several products that generate sales but produce negative total profit.

Examples include:

| Product                                                  |      Sales |     Profit |
| -------------------------------------------------------- | ---------: | ---------: |
| Cubify CubeX 3D Printer Double Head Print                | $11,099.96 | -$8,879.97 |
| Lexmark MX611dhe Monochrome Laser Printer                | $16,829.90 | -$4,589.97 |
| Cubify CubeX 3D Printer Triple Head Print                |  $7,999.98 | -$3,839.99 |
| Chromcraft Bull-Nose Wood Oval Conference Tables & Bases |  $9,917.64 | -$2,876.11 |

The **Tables** sub-category has the largest overall loss among the loss-making sub-categories, at approximately **-$17,725.59**.

---

## 🏷️ Discount Impact Analysis

The project investigates whether discounts are associated with profitability.

Average profit by discount level:

| Discount | Average Profit |
| -------: | -------------: |
|       0% |         $66.90 |
|      10% |         $96.06 |
|      15% |         $27.29 |
|      20% |         $24.70 |
|      30% |        -$45.68 |
|      32% |        -$88.56 |
|      40% |       -$111.93 |

The analysis shows that higher discount levels are associated with substantially lower average profit, with negative average profit at 30% and above.

---

## 👥 Customer Segment Analysis

| Segment     | Customers |         Sales |      Profit | Profit Margin |
| ----------- | --------: | ------------: | ----------: | ------------: |
| Consumer    |       409 | $1,161,401.34 | $134,119.33 |        11.55% |
| Corporate   |       236 |   $706,146.44 |  $91,979.45 |        13.03% |
| Home Office |       148 |   $429,653.29 |  $60,299.01 |        14.03% |

The Consumer segment generates the highest total sales and total profit, while the Home Office segment has the highest profit margin among the three segments.

---

## 🚚 Shipping Mode Analysis

| Shipping Mode  | Orders |         Sales |      Profit | Profit Margin |
| -------------- | -----: | ------------: | ----------: | ------------: |
| Standard Class |  5,968 | $1,358,216.08 | $164,089.45 |        12.08% |
| Second Class   |  1,945 |   $459,193.44 |  $57,446.49 |        12.51% |
| First Class    |  1,538 |   $351,428.43 |  $48,969.95 |        13.93% |
| Same Day       |    543 |   $128,363.12 |  $15,891.90 |        12.38% |

Standard Class has the highest order volume, sales, and total profit. First Class has the highest profit margin in the overall shipping-mode comparison.

To investigate whether shipping mode itself explains the difference, the analysis controls for **category and discount**. For Technology products with 0% discount, the calculated margins still differ by shipping mode.

---

## 🧠 SQL Concepts Used

This project demonstrates practical SQL skills including:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `COUNT()`
* `COUNT(DISTINCT)`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `ROUND()`
* `EXTRACT()`
* `DATE_TRUNC()`
* `TO_CHAR()`
* Subqueries
* `JOIN`
* Window functions
* `RANK()`
* Conditional aggregation
* Profit margin calculations
* Year-over-year growth analysis

---

## 📚 What I Learned

This project reinforced that SQL analysis is not only about writing queries but also about choosing the correct **level of aggregation**.

Grouping by too many variables can create noisy results. The shipping-mode analysis demonstrated why business questions sometimes need to be broken into smaller, controlled comparisons rather than combining every available dimension into one query.

The project also reinforced the importance of investigating whether an observed relationship is actually driven by another variable, such as product category or discount.

---

## 🚀 Future Improvements

* Add more advanced CTE-based analysis
* Expand window-function analysis
* Calculate customer lifetime value
* Analyse repeat-purchase behaviour
* Build cohort analysis
* Add monthly and yearly profit trends
* Analyse regional discount strategies
* Optimize SQL queries for readability and performance
* Connect the SQL analysis to Power BI for interactive reporting

---

## 🛠️ Tools

* **PostgreSQL**
* **pgAdmin**
* **SQL**
* **GitHub**
* **Kaggle Superstore Dataset**

---
---

## 👨‍💻 Author

**Ratnesh Chauhan**

**Data Analyst | Business Analyst | Power BI Developer | Business Intelligence | Data Analytics**

🔗 GitHub: https://github.com/Ratnesh8577
🔗 LinkedIn: https://www.linkedin.com/in/ratnesh-chauhan-41a113279/

---

## 👨‍💻 Project Focus

**Data Analytics | SQL | Business Intelligence | Sales Analysis | Profitability Analysis**

> Turning raw retail transaction data into meaningful business insights using SQL.

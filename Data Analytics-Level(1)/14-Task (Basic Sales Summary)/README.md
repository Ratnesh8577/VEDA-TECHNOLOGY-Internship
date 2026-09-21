# 📊 Sales Data 2019 Analysis

## 📌 About the Project

This project analyzes **2019 sales transaction data** to understand sales performance, product demand, customer purchasing patterns, monthly trends, city-wise performance, and order behavior.

The project uses **Excel-based sales data analysis** to extract meaningful business insights and present them through summaries, calculations, and visual analysis.

> **Goal:** Turn sales data into meaningful insights that can support better business and sales decisions.

---

## 📂 Dataset

The main dataset is:

**`SALES_DATA_2019`**

### Dataset Size

* **Rows:** 185,950
* **Columns:** 11
* **Unique Products:** 19
* **Unique Cities:** 9
* **States:** 7
* **Unique Orders:** 178,437
* **Total Quantity Sold:** 209,079
* **Total Sales:** **$34.49 Million**
* **Duplicate Rows:** 264

### 📋 Columns

| Column             | Description                            |
| ------------------ | -------------------------------------- |
| `Order ID`         | Unique identifier for an order         |
| `Product`          | Name of the product purchased          |
| `Quantity Ordered` | Number of units ordered                |
| `Price Each`       | Price per unit                         |
| `Date`             | Date and time of purchase              |
| `Purchase Address` | Customer purchase address              |
| `City`             | City where the order was placed        |
| `State`            | State where the order was placed       |
| `Sales`            | Total sales amount for the transaction |
| `Day of the week`  | Numerical representation of the day    |
| `Hour`             | Hour when the order was placed         |

---

## 🎯 Project Objectives

The main objectives of this project are:

1. Analyze overall sales performance.
2. Identify the highest-performing products.
3. Analyze monthly sales trends.
4. Identify cities generating the highest sales.
5. Analyze quantity ordered by product.
6. Understand customer purchasing time.
7. Identify sales patterns by day and hour.
8. Detect duplicate records.
9. Create meaningful business insights from the dataset.
10. Present the analysis through Excel reports and dashboards.

---

## 🛠️ Tools & Technologies

* **Microsoft Excel**
* Pivot Tables
* Pivot Charts
* Excel Formulas
* Data Cleaning
* Data Analysis
* Data Visualization
* Dashboard / Report Design

---

## 📑 Workbook Structure

The Excel workbook contains the following important sheets:

### 1. `PERFORMANCE OVERVIEW`

Provides a high-level overview of the sales performance and key business metrics.

### 2. `SALES OVERVIEW`

Contains summarized sales information for understanding the overall performance of the business.

### 3. `SALES_DATA_2019`

Contains the primary transaction-level sales dataset.

### 4. `Analysis`

Contains detailed analytical calculations and summaries such as:

* Sales by month
* Sales by product
* Quantity ordered by product
* Product performance
* Sales comparisons
* Other summarized metrics

---

# 📊 Key Analysis

## 💰 Overall Sales Performance

The dataset contains approximately:

* **$34.49M total sales**
* **209K+ units sold**
* **178K+ unique orders**
* **185K+ transaction records**

This provides a broad view of the company's sales performance during 2019.

---

## 📅 Monthly Sales Analysis

Monthly sales show variation throughout the year.

| Month     |      Sales |
| --------- | ---------: |
| January   |     $2.29M |
| February  |     $2.39M |
| March     |     $2.79M |
| April     |     $3.23M |
| May       |     $3.03M |
| June      |     $2.68M |
| July      |     $2.72M |
| August    |     $2.45M |
| September |     $2.41M |
| October   |     $3.48M |
| November  |     $3.09M |
| December  | **$3.93M** |

### 🔎 Finding

December recorded the highest monthly sales at approximately **$3.93M**, while January recorded the lowest at approximately **$2.29M**.

The data also shows stronger sales activity during the final quarter of the year.

---

# 🏆 Top Products by Sales

The highest-selling products by revenue include:

| Product                |  Sales |
| ---------------------- | -----: |
| Macbook Pro Laptop     | $8.04M |
| iPhone                 | $4.79M |
| ThinkPad Laptop        | $4.13M |
| Google Phone           | $3.32M |
| 27in 4K Gaming Monitor | $2.44M |

### 🔎 Finding

The **Macbook Pro Laptop** generated the highest sales among the products in the dataset, followed by the **iPhone** and **ThinkPad Laptop**.

---

# 🌎 City-Wise Sales Analysis

The leading cities by sales include:

| City          |  Sales |
| ------------- | -----: |
| San Francisco | $8.26M |
| Los Angeles   | $5.45M |
| New York City | $4.66M |
| Boston        | $3.66M |
| Atlanta       | $2.80M |

### 🔎 Finding

**San Francisco** generated the highest sales among the cities represented in the dataset.

---

# 📦 Product Quantity Analysis

The dataset contains more than **209,000 units ordered** across 19 products.

Quantity analysis can be used to identify:

* High-demand products
* Low-demand products
* Products with high sales but lower quantity
* Products with high quantity but lower revenue

This helps distinguish between **volume-driven products** and **high-value products**.

---

# ⏰ Time-Based Analysis

The dataset contains both:

* `Day of the week`
* `Hour`

These columns can be used to analyze:

* Peak purchasing hours
* Low-activity hours
* Weekday purchasing patterns
* Customer ordering behavior
* Potential promotional time windows

Time-based analysis can help businesses understand **when customers are most active**.

---

# 🧹 Data Quality Analysis

A basic data-quality check was performed on the main dataset.

### Duplicate Records

The dataset contains:

**264 duplicate rows**

Duplicate records should be reviewed before performing final business analysis to avoid potentially overstating sales, quantities, or transaction counts.

### Data Types

The dataset contains:

* Integer columns
* Decimal/numeric columns
* Text columns
* Date/time column

The `Date` column can be used for additional analysis such as:

* Month
* Quarter
* Week
* Day
* Hour

---

# 📈 Visualizations

The project can include the following visualizations:

1. 📊 Monthly Sales Trend
2. 🏆 Top Products by Sales
3. 📦 Quantity Sold by Product
4. 🌎 Sales by City
5. ⏰ Sales by Hour
6. 📅 Sales by Day of Week
7. 💰 Product Revenue Comparison
8. 📈 Monthly Quantity Trend
9. 🏙️ City-wise Sales Comparison
10. 📊 Overall Sales Performance Dashboard

---

# 💡 Business Insights

Some important insights from the analysis are:

* Total sales were approximately **$34.49M**.
* More than **209K units** were ordered.
* The dataset contains **19 different products**.
* **Macbook Pro Laptop** generated the highest product-level sales.
* **San Francisco** generated the highest city-level sales.
* **December** recorded the highest monthly sales.
* Sales increased significantly during the final months of the year.
* Time-based fields can be used to identify peak customer purchasing periods.
* Duplicate records should be handled before final reporting.

---

# 🔄 Data Analysis Process

The overall workflow followed in this project is:

```text
Raw Sales Data
      ↓
Data Inspection
      ↓
Data Cleaning
      ↓
Duplicate Detection
      ↓
Data Transformation
      ↓
Pivot Tables / Calculations
      ↓
Sales Analysis
      ↓
Data Visualization
      ↓
Business Insights
      ↓
Final Report / Dashboard
```

---

# 📌 Skills Demonstrated

This project demonstrates practical skills in:

* Excel Data Analysis
* Data Cleaning
* Duplicate Detection
* Data Transformation
* Pivot Tables
* Pivot Charts
* Sales Analysis
* KPI Analysis
* Trend Analysis
* Product Analysis
* Geographic Analysis
* Time-Series Analysis
* Business Intelligence
* Data Visualization
* Business Insight Generation

---

# 📁 Project Files

```text
SALES_DATA_2019/
│
├── SALES_DATA_2019_Report.xlsx
│
└── README.md
```

---

# 🚀 Future Improvements

The project can be further improved by:

* Creating an interactive **Power BI dashboard**
* Adding monthly and quarterly KPIs
* Adding profit and margin analysis if cost data is available
* Creating customer segmentation
* Performing product-level trend analysis
* Adding geographic maps
* Performing time-series forecasting
* Automating the analysis using Python and Pandas
* Connecting the dataset to SQL for advanced querying

---

# 🎯 Conclusion

The **Sales Data 2019 Analysis** project provides a structured view of sales performance across products, cities, months, quantities, and purchasing times.

The analysis demonstrates how raw transaction data can be transformed into useful business information through **data cleaning, Excel analysis, visualization, and KPI-based reporting**.

The project is a practical example of applying **Data Analytics and Business Intelligence techniques** to a real-world sales dataset.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

**Aspiring Data Analyst | Business Analyst | Power BI Developer | Business Intelligence**

### 🔗 Profiles

* GitHub: `https://github.com/Ratnesh8577`
* LinkedIn: `https://www.linkedin.com/in/ratnesh-chauhan-41a113279/`

---

⭐ **If you find this project useful, feel free to explore the analysis and dashboard files.**

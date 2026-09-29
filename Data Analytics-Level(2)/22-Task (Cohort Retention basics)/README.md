# 📊 Online Retail Data Analysis — Python, SQL

An end-to-end **Data Analytics project** using the **Online Retail II dataset** from the UCI Machine Learning Repository.

This project demonstrates a complete data analytics workflow, starting from raw transactional data and progressing through **data cleaning, PostgreSQL database analysis, KPI reporting, customer cohort analysis, RFM segmentation, and interactive Power BI visualization**.

The project focuses on extracting meaningful business insights related to **customer behavior, sales performance, revenue trends, customer retention, product performance, and customer segmentation**.

---

## 📌 Table of Contents

* [Project Overview](#-project-overview)
* [Business Questions](#-business-questions)
* [Dataset](#-dataset)
* [Dataset Columns](#-dataset-columns)
* [Project Structure](#-project-structure)
* [Tech Stack](#-tech-stack)
* [Project Workflow](#-project-workflow)
* [Key Analyses](#-key-analyses)

  * [1. Data Cleaning & Preparation](#1-data-cleaning--preparation)
  * [2. KPI Analysis](#2-kpi-analysis)
  * [3. Cohort Analysis](#3-cohort-analysis)
  * [4. RFM Segmentation](#4-rfm-segmentation)
  * [5. Power BI Dashboard](#5-power-bi-dashboard)
* [How to Run](#-how-to-run)
* [Results & Insights](#-results--insights)
* [Skills Demonstrated](#-skills-demonstrated)
* [Project Purpose](#-project-purpose)

---

# 📌 Project Overview

This project analyzes approximately **1 million retail transactions** from an online retail business.

The project covers the complete data analytics pipeline:

```text
Raw Excel Data
      ↓
Python Data Cleaning
      ↓
Cleaned CSV Dataset
      ↓
PostgreSQL Database
      ↓
SQL Analysis & KPI Views
      ↓
Cohort Analysis + RFM Segmentation
      ↓
Power BI Dashboard
      ↓
Business Insights
```

The analysis provides insights into:

* Customer purchasing behavior
* Customer retention
* Customer segmentation
* Revenue performance
* Product performance
* Country-level performance
* New vs. returning customers
* Cancellation trends

---

# 🎯 Business Questions

The project answers important business questions such as:

* Who are the most valuable customers?
* Which customer segments are at risk of churning?
* How well does the business retain customers over time?
* Which customer cohorts have stronger retention?
* What are the monthly revenue and order trends?
* Which countries generate the highest revenue?
* Which products generate the highest sales?
* How many customers are new versus returning?
* What is the cancellation rate over time?
* Which customer segments contribute the most revenue?

---

# 📊 Dataset

The project uses the **Online Retail II** dataset from the **UCI Machine Learning Repository**.

| Attribute              | Details                                                         |
| ---------------------- | --------------------------------------------------------------- |
| **Dataset**            | Online Retail II                                                |
| **Source**             | UCI Machine Learning Repository                                 |
| **Alternative Source** | Kaggle – Cleaned Dataset                                        |
| **Period**             | December 2009 – December 2011                                   |
| **Records**            | Approximately 1,067,371 transactions after combining both years |
| **Geography**          | UK-based retailer with customers across multiple countries      |

### Dataset Sources

**UCI Machine Learning Repository**

https://archive.ics.uci.edu/dataset/502/online+retail+ii

**Kaggle – Cleaned Dataset**

https://www.kaggle.com/datasets/shahnawaj9/online-retail

---

# 📋 Dataset Columns

| Column        | Description                                          |
| ------------- | ---------------------------------------------------- |
| `InvoiceNo`   | Invoice number. Prefix `C` indicates a cancellation. |
| `StockCode`   | Unique product code.                                 |
| `Description` | Product name or description.                         |
| `Quantity`    | Number of units purchased.                           |
| `InvoiceDate` | Date and time of the transaction.                    |
| `UnitPrice`   | Price per unit in GBP.                               |
| `CustomerID`  | Unique customer identifier.                          |
| `Country`     | Customer's country.                                  |

---

# 📁 Project Structure

```text
online-retail-data-analysis/
│
├── 01_data_cleaning_with_Python/
│   ├── retail_data_cleaning_and_preparation.ipynb
│   └── Queries.ipynb
│
├── 02_sql_scripts_in_PostgreSQL/
│   ├── kpi_test_queries.sql
│   ├── RFM_Segmentation.sql
│   └── Cohort_Analysis.sql
│
├── 03_cohort_analysis/
│   ├── README.md
│   ├── Cohort_Analysis.sql
│   ├── Cohort_Analysis_on_Revenue.csv
│   └── Cohort_analysis_on_Customer_Level.csv
│
├── 04_RFM_segmentation/
│   ├── README.md
│   ├── RFM_Segmentation.sql
│   └── rfm_final_score.csv
│
├── 05_power_bi_dashboard/
│   └── Retail_analysis.pbix
│
└── README.md
```

---

# 🛠️ Tech Stack

| Technology           | Purpose                                          |
| -------------------- | ------------------------------------------------ |
| **Python**           | Data cleaning and preprocessing                  |
| **Pandas**           | Data manipulation and analysis                   |
| **NumPy**            | Numerical operations                             |
| **SQLAlchemy**       | Database connection and data ingestion           |
| **PostgreSQL**       | Database storage and analytical SQL              |
| **Jupyter Notebook** | Exploratory analysis and workflow documentation  |
| **Power BI**         | Interactive dashboards and business intelligence |

---

# 🔄 Project Workflow

## 1. Data Cleaning

Raw Excel data is cleaned and transformed using Python.

## 2. Database Loading

The cleaned dataset is imported into PostgreSQL using SQLAlchemy.

## 3. SQL Analysis

SQL views are created to analyze:

* Revenue
* Orders
* Customers
* Products
* Countries
* Customer segments
* New vs. returning customers
* Cancellation rates

## 4. Customer Analytics

Advanced customer analytics are performed using:

* Cohort Analysis
* RFM Segmentation

## 5. Dashboard Development

The analytical outputs are connected to Power BI to create an interactive business intelligence dashboard.

---

# 🔍 Key Analyses

## 1. Data Cleaning & Preparation

**Notebook:**

```text
01_data_cleaning_with_Python/retail_data_cleaning_and_preparation.ipynb
```

### Data Cleaning Steps

* Combined the two Excel sheets covering 2009–2010 and 2010–2011
* Created an `is_cancelled` column to identify cancellation invoices
* Identified cancellation invoices using the `C` prefix
* Removed records with missing `Description`
* Standardized column names to lowercase snake_case
* Created a `total_price` column using:

```text
total_price = quantity × unit_price
```

### Dataset Transformation

| Stage                                   |       Records |
| --------------------------------------- | ------------: |
| Combined raw dataset                    | **1,067,371** |
| Rows removed due to missing Description |     **4,382** |
| Final cleaned dataset                   | **1,062,989** |

The cleaned dataset is exported as:

```text
online_retail_cleaned.csv
```

---

## PostgreSQL Data Import

**Notebook:**

```text
01_data_cleaning_with_Python/Queries.ipynb
```

This notebook is used to:

* Connect Python with PostgreSQL
* Import the cleaned CSV
* Create the `retail_data` table
* Run validation queries
* Verify the imported dataset

---

# 2. 📊 KPI Analysis

**SQL Script:**

```text
02_sql_scripts_in_PostgreSQL/kpi_test_queries.sql
```

The project contains **nine analytical SQL views** covering the major business KPIs.

| SQL View                       | Description                                       |
| ------------------------------ | ------------------------------------------------- |
| `total_orders_revenue`         | Overall revenue, order count, and customer count  |
| `yearly_revenue_order_summary` | Revenue and orders by year                        |
| `monthly_revenue`              | Monthly revenue trends and active customer counts |
| `top_customers`                | Customers ranked by total spending                |
| `country_summary`              | Revenue and orders by country                     |
| `product_sales_summary`        | Product performance by quantity and revenue       |
| `segment_revenue_summary`      | Revenue by RFM customer segment                   |
| `new_vs_returning_customers`   | Monthly split of new and returning customers      |
| `cancel_rate_summary`          | Cancellation rate trends over time                |

These views create a reusable analytical layer for SQL analysis and Power BI reporting.

---

# 3. 📈 Cohort Analysis

**Folder:**

```text
03_cohort_analysis/
```

Cohort analysis groups customers according to their **first purchase month**.

Each customer is assigned to a cohort based on the month of their first purchase.

The analysis then tracks customer activity and revenue in subsequent months from:

```text
Month 0 → Month 12
```

### Customer-Level Cohort Analysis

Measures:

* Number of customers in each cohort
* Returning customers
* Customer retention
* Retention drop-off over time

### Revenue-Level Cohort Analysis

Measures:

* Revenue generated by each cohort
* Revenue contribution in subsequent months
* Revenue retention patterns

### Output Files

```text
Cohort_Analysis_on_Revenue.csv
```

```text
Cohort_analysis_on_Customer_Level.csv
```

Cohort analysis helps identify retention patterns and understand which acquisition periods generated stronger customer engagement.

Detailed methodology:

```text
03_cohort_analysis/README.md
```

---

# 4. 👥 RFM Segmentation

**Folder:**

```text
04_RFM_segmentation/
```

RFM stands for:

* **Recency**
* **Frequency**
* **Monetary**

RFM analysis evaluates customers based on their purchasing behavior and helps classify them into actionable customer segments.

---

## RFM Metrics

| Metric        | Definition                                        |
| ------------- | ------------------------------------------------- |
| **Recency**   | Number of days since the customer's last purchase |
| **Frequency** | Number of distinct invoices                       |
| **Monetary**  | Total customer spending in GBP                    |

Each metric is scored from **1 to 4** using:

```sql
NTILE(4)
```

The three scores are combined into a three-digit RFM code.

For example:

```text
444
```

represents a customer with a high score across all three RFM dimensions.

---

## Customer Segments

| Segment                        | Description                                                |
| ------------------------------ | ---------------------------------------------------------- |
| **Loyal**                      | Customers with high scores across all three RFM dimensions |
| **Active**                     | Regularly purchasing and engaged customers                 |
| **New Customers**              | Recent first-time buyers                                   |
| **Potential Churners**         | Customers showing declining engagement                     |
| **Slipping Away, Cannot Lose** | Previously high-value customers who are becoming inactive  |
| **Churned Customer**           | Customers with low recency, frequency, and monetary values |

### Output

```text
04_RFM_segmentation/rfm_final_score.csv
```

Detailed RFM methodology:

```text
04_RFM_segmentation/README.md
```

---

# 5. 📊 Power BI Dashboard

**Power BI File:**

```text
05_power_bi_dashboard/Retail_analysis.pbix
```

The Power BI report combines the PostgreSQL analytical views and CSV outputs into an interactive business intelligence dashboard.

The dashboard provides a consolidated view of:

* Revenue performance
* Order trends
* Customer performance
* Product sales
* Country performance
* Customer segments
* New vs. returning customers
* Customer retention
* RFM analysis

The report is designed for business stakeholder reporting and interactive exploration.

---

# 🚀 How to Run

## Prerequisites

Install the following:

* Python 3.8+
* PostgreSQL
* Power BI Desktop
* Jupyter Notebook or JupyterLab

---

## 1. Clone the Repository

```bash
git clone https://github.com/Ratnesh8577/VEDA-TECHNOLOGY-Internship.git

cd VEDA-TECHNOLOGY-Internship
```

---

## 2. Install Python Dependencies

```bash
pip install pandas numpy openpyxl sqlalchemy psycopg2
```

---

## 3. Download the Dataset

Download the **Online Retail II** dataset from the UCI Machine Learning Repository or use the cleaned Kaggle version.

---

## 4. Run Data Cleaning

Open:

```text
01_data_cleaning_with_Python/retail_data_cleaning_and_preparation.ipynb
```

Run the notebook to:

1. Load the raw Excel files
2. Combine both periods
3. Identify cancellation invoices
4. Remove missing descriptions
5. Standardize column names
6. Create `total_price`
7. Export the cleaned dataset

Output:

```text
online_retail_cleaned.csv
```

---

## 5. Import Data into PostgreSQL

Open:

```text
01_data_cleaning_with_Python/Queries.ipynb
```

Update the PostgreSQL connection details.

Run the notebook to:

* Create the database connection
* Import the cleaned dataset
* Create the `retail_data` table
* Validate the imported data

---

## 6. Run SQL Scripts

Execute the SQL scripts in PostgreSQL.

### KPI Analysis

```text
02_sql_scripts_in_PostgreSQL/kpi_test_queries.sql
```

### RFM Segmentation

```text
02_sql_scripts_in_PostgreSQL/RFM_Segmentation.sql
```

### Cohort Analysis

```text
02_sql_scripts_in_PostgreSQL/Cohort_Analysis.sql
```

---

## 7. Open Power BI Dashboard

Open:

```text
05_power_bi_dashboard/Retail_analysis.pbix
```

using **Power BI Desktop**.

If prompted, update the PostgreSQL data-source connection.

---

# 📈 Results & Insights

The project provides a complete analytical view of the online retail business.

### Transaction Analysis

* More than **1 million transactions** were cleaned and analyzed.
* Data covers approximately two years of retail activity.
* The final cleaned dataset contains **1,062,989 records**.

### Customer Analysis

RFM segmentation identifies actionable customer groups including:

* Loyal
* Active
* New Customers
* Potential Churners
* Slipping Away, Cannot Lose
* Churned Customer

### Retention Analysis

Cohort analysis tracks customer activity from **Month 0 through Month 12**, helping analyze:

* Customer retention
* Customer drop-off
* Repeat purchasing behavior
* Cohort performance

### KPI Analysis

PostgreSQL analytical views provide reusable outputs for:

* Revenue
* Orders
* Customers
* Products
* Countries
* Customer segments
* New vs. returning customers
* Cancellation rates

### Business Intelligence

The Power BI dashboard transforms the analytical results into interactive business visuals for stakeholder reporting.

---

# 💡 Business Value

This project demonstrates how raw transactional data can be transformed into actionable business intelligence.

The analysis can help businesses:

* Understand customer purchasing behavior
* Identify valuable customer segments
* Monitor customer retention
* Identify customers showing signs of churn
* Analyze revenue trends
* Evaluate product performance
* Compare country-level performance
* Track new and returning customers
* Monitor cancellation trends
* Build interactive KPI dashboards

---

# 🎓 Skills Demonstrated

```text
Python
Pandas
NumPy
SQL
PostgreSQL
SQLAlchemy
Jupyter Notebook
Data Cleaning
Data Preprocessing
Exploratory Data Analysis
KPI Analysis
Cohort Analysis
RFM Segmentation
Customer Analytics
Customer Retention Analysis
Data Visualization
Business Intelligence
Business Analytics
```

---

# 📌 Project Highlights

* ✅ **1M+ transactions analyzed**
* ✅ Python-based data cleaning
* ✅ PostgreSQL database implementation
* ✅ Nine analytical SQL KPI views
* ✅ Customer-level cohort analysis
* ✅ Revenue-level cohort analysis
* ✅ 12-month retention analysis
* ✅ RFM customer segmentation
* ✅ Six customer segments
* ✅ Revenue and order analysis
* ✅ Product and country analysis
* ✅ New vs. returning customer analysis
* ✅ Cancellation-rate analysis
* ✅ Interactive Power BI dashboard
* ✅ End-to-end Data Analytics workflow

---

# 👨‍💻 Project Purpose

This project demonstrates an end-to-end **Data Analytics workflow** using Python, SQL, PostgreSQL, and Power BI.

It covers the complete journey from:

```text
Raw Data
   ↓
Data Cleaning
   ↓
Data Transformation
   ↓
Database Storage
   ↓
SQL Analysis
   ↓
Customer Analytics
   ↓
Power BI Visualization
   ↓
Business Insights
```

The project demonstrates practical application of **Data Analytics, SQL, Customer Analytics, Cohort Analysis, RFM Segmentation, Business Intelligence, and Power BI**.

# 📊 Exploratory Data Analysis (EDA) — Superstore Sales

> **Data Analytics Track | Level 1 | Day 2 | Task 2**

## 📌 Project Overview

This project performs **Exploratory Data Analysis (EDA)** on the **Sample Superstore dataset** to discover important patterns, relationships, trends, and potential outliers in sales data.

The main goal is to understand the dataset through **statistical analysis and data visualization** before making business conclusions.

---

## 🎯 Objective

* Explore and understand the dataset.
* Calculate summary statistics.
* Identify relationships between variables.
* Detect potential outliers.
* Analyze sales and profit patterns.
* Study the impact of discounts on profit.
* Generate meaningful business insights.

---

## 🛠️ Tools & Technologies

* 🐍 Python
* 🐼 Pandas
* 🔢 NumPy
* 📊 Matplotlib
* 📈 Seaborn
* 📓 Jupyter Notebook

---

## 📂 Dataset

**Dataset:** Sample Superstore

The dataset contains sales transaction information such as:

* Category
* Sub-Category
* Sales
* Quantity
* Discount
* Profit
* Region
* Customer details
* Product details

---

## 🔍 EDA Process

### 1. Data Loading & Inspection

The dataset was loaded using Pandas and examined for:

* Number of rows and columns
* Data types
* Missing values
* Duplicate records
* Basic dataset structure

### 2. Statistical Analysis

Summary statistics were generated using `describe()` to understand:

* Mean
* Median
* Standard deviation
* Minimum
* Maximum
* Quartiles

### 3. Correlation Analysis

A correlation heatmap was used to understand relationships between numerical variables such as **Sales, Quantity, Discount, and Profit**.

### 4. Outlier Analysis

Boxplots were used to identify unusual or extreme observations in numerical variables.

---

## 📊 Visualizations

The project includes **7 visualizations**, with each visualization answering a specific analytical question.

| # | Visualization          | Purpose                              |
| - | ---------------------- | ------------------------------------ |
| 1 | Sales Distribution     | Understand the distribution of sales |
| 2 | Profit Distribution    | Analyze profit distribution          |
| 3 | Sales & Profit Boxplot | Identify potential outliers          |
| 4 | Sales by Category      | Compare sales across categories      |
| 5 | Profit by Category     | Compare profitability                |
| 6 | Sales vs Profit        | Analyze their relationship           |
| 7 | Discount vs Profit     | Examine the impact of discounts      |

---

## 💡 Top 3 Insights

### 1. Sales and Profit

Sales generally show a positive relationship with profit. However, high sales do not always result in high profits.

### 2. Discount and Profit

Higher discounts can reduce profitability. This indicates that discount strategies should be carefully managed.

### 3. Category Performance

Sales and profit vary across product categories. The category generating the highest sales is not necessarily the most profitable.

---

## 📈 Key Findings

* Sales data is concentrated toward lower transaction values with some high-value transactions.
* The dataset contains both profitable and loss-making transactions.
* Several extreme values can be observed in Sales and Profit.
* Sales and Profit have a generally positive relationship.
* Discount levels appear to have an impact on profitability.
* Category-level analysis provides useful information for business decision-making.

---

## 🎤 Interview Questions

### Q1. How do you distinguish a genuine outlier from a data-entry error?

I investigate the outlier before removing it. I check the expected business range, related columns, similar records, and whether the value represents a genuine business transaction or a data-entry error.

### Q2. What is the difference between correlation and causation?

**Correlation** means two variables are related or associated, whereas **causation** means one variable directly causes a change in another.

Correlation does not necessarily mean causation.

### Q3. Which chart type would you use to show a trend over 12 months?

I would use a **line chart** because it is effective for displaying changes and trends over time.

---

## 📁 Project Structure

```text
Task-2-EDA/
│
├── EDA_Sample_Superstore.ipynb
├── SampleSuperstore.csv
├── README.md
│
└── visualizations/
    ├── sales_distribution.png
    ├── profit_distribution.png
    ├── outlier_analysis.png
    ├── sales_by_category.png
    ├── profit_by_category.png
    ├── sales_vs_profit.png
    └── discount_vs_profit.png
```

---

## 🧠 Skills Demonstrated

* Exploratory Data Analysis
* Statistical Analysis
* Data Visualization
* Outlier Detection
* Correlation Analysis
* Business Insight Generation
* Data Interpretation
* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn

---

## 🚀 Conclusion

This project demonstrates how **Exploratory Data Analysis** can be used to understand a dataset before making business decisions.

By combining statistical methods and visualizations, the analysis identifies important **sales patterns, profitability trends, relationships, and potential outliers** in the Superstore dataset.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

**Aspiring Data Analyst**
Python | SQL | Power BI | Excel | Data Visualization

# 📊 Sample Superstore Sales Analysis

## 📌 Project Overview

The **Sample Superstore Sales Analysis** project focuses on analyzing sales and profitability data to identify important business trends, performance patterns, and areas of improvement. The project uses **Python, Pandas, Matplotlib, and Seaborn** to perform data cleaning, exploratory data analysis (EDA), KPI analysis, and data visualization.

The analysis covers sales, profit, quantity, discount, customer segments, product categories, sub-categories, regions, states, cities, and shipping modes. Multiple charts and statistical analyses are used to convert raw sales data into meaningful business insights.

---

## 🎯 Objectives

* Analyze overall sales and profit performance.
* Calculate important business KPIs.
* Identify high-performing and low-performing categories.
* Analyze sub-category sales and profitability.
* Compare sales and profit across regions.
* Analyze customer segment performance.
* Evaluate shipping mode performance.
* Identify top-performing states and cities.
* Analyze quantity and discount patterns.
* Study the relationship between sales and profit.
* Study the relationship between discount and profit.
* Analyze sales, profit, quantity, and discount distributions.
* Identify profitable and loss-making sub-categories.
* Perform monthly sales analysis when a valid date column is available.

---

## 🗂️ Dataset

The project uses the **Sample Superstore** dataset.

### Main Columns

* `Ship Mode`
* `Segment`
* `Country`
* `City`
* `State`
* `Postal Code`
* `Region`
* `Category`
* `Sub-Category`
* `Sales`
* `Quantity`
* `Discount`
* `Profit`

The dataset contains sales transaction-level information that can be used to understand product and business performance.

---

## 🛠️ Technologies Used

| Technology       | Purpose                        |
| ---------------- | ------------------------------ |
| Python           | Data analysis                  |
| Pandas           | Data cleaning and manipulation |
| NumPy            | Numerical operations           |
| Matplotlib       | Data visualization             |
| Seaborn          | Statistical visualization      |
| Jupyter Notebook | Analysis environment           |

---

## 🧹 Data Cleaning

The following data-cleaning steps were performed:

1. Loaded the CSV dataset using Pandas.
2. Cleaned column names by removing unnecessary spaces.
3. Checked the dataset structure and data types.
4. Checked for missing values.
5. Identified duplicate records.
6. Removed duplicate records.
7. Performed descriptive statistical analysis.
8. Prepared the cleaned data for exploratory analysis.

---

## 📈 Key Performance Indicators

The project calculates the following KPIs:

* **Total Sales**
* **Total Profit**
* **Total Quantity**
* **Average Sales**
* **Average Profit**
* **Average Discount**
* **Overall Profit Margin**

### Profit Margin Formula

```text
Profit Margin (%) = (Total Profit / Total Sales) × 100
```

---

## 📊 Analysis & Visualizations

### 1. Category Analysis

Sales and profit are analyzed across major product categories to understand which categories contribute most to overall business performance.

### 2. Sub-Category Analysis

Sub-categories are compared based on:

* Sales
* Profit
* Quantity
* Average Discount

This helps identify both high-performing and loss-making product groups.

### 3. Regional Analysis

Sales and profit are compared across different regions to understand geographical business performance.

### 4. Customer Segment Analysis

The project analyzes performance across customer segments and compares their sales and profitability.

### 5. Shipping Analysis

Different shipping modes are analyzed based on sales and profit to understand their contribution to overall performance.

### 6. State Analysis

The project identifies the **Top 10 States by Sales** and **Top 10 States by Profit**.

### 7. City Analysis

The **Top 10 Cities by Sales** and **Top 10 Cities by Profit** are analyzed using horizontal bar charts.

### 8. Quantity Analysis

Quantity sold is analyzed across categories and sub-categories to identify products with higher sales volume.

### 9. Discount Analysis

Average discounts are analyzed across categories and sub-categories to understand discounting patterns.

### 10. Sales vs Profit Analysis

A scatter plot is used to study the relationship between sales and profit.

### 11. Discount vs Profit Analysis

A scatter plot is used to examine how discount levels relate to profitability.

### 12. Distribution Analysis

Histograms are created to understand the distribution of:

* Sales
* Profit
* Quantity
* Discount

### 13. Profitability Analysis

Sub-categories are ranked according to their total profit to identify profitable and loss-making products.

### 14. Profit Matrix

A heatmap is used to visualize profitability across sub-categories and product categories.

---

## 📅 Monthly Sales Trend

The Python code includes functionality for calculating:

* Monthly Sales
* Monthly Profit
* Monthly Quantity
* Month-over-Month Sales Growth
* Best-performing month
* Lowest-performing month

However, the current Sample Superstore CSV used in this project **does not contain an Order Date or Sales Date column**. Therefore, a genuine monthly sales trend cannot be calculated from the current dataset.

If an `Order Date` column is added, the analysis can create a monthly trend using:

```python
df["Order Date"] = pd.to_datetime(df["Order Date"])

df["Month"] = df["Order Date"].dt.to_period("M")

monthly_sales = (
    df.groupby("Month")["Sales"]
    .sum()
)
```

---

## 📌 Dataset Results

After removing duplicate records, the dataset contains approximately **9,977 records**.

Key results from the analysis:

* **Total Sales:** $2,296,195.59
* **Total Profit:** $286,241.42
* **Total Quantity:** 37,790
* **Profit Margin:** 12.47%

These metrics provide an overall view of the business performance represented by the dataset.

---

## 📁 Project Structure

```text
Sample-Superstore-Sales-Analysis/
│
├── SampleSuperstore(1)(1).csv
├── Superstore_Sales_Analysis.ipynb
├── Superstore_Sales_Analysis.py
├── SampleSuperstore_All_Analysis_Graphs.pdf
└── README.md
```

---

## ▶️ How to Run the Project

### 1. Clone the repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### 2. Navigate to the project folder

```bash
cd Sample-Superstore-Sales-Analysis
```

### 3. Install required libraries

```bash
pip install pandas numpy matplotlib seaborn
```

### 4. Run the Python script

```bash
python Superstore_Sales_Analysis.py
```

Or open the Jupyter Notebook:

```bash
jupyter notebook
```

---

## 📊 Business Insights

The analysis helps businesses understand which products, categories, regions, customer segments, and locations contribute to sales and profitability. Comparing sales with profit is particularly useful because high sales do not necessarily mean high profitability. Discount analysis also helps identify patterns that may affect profit performance. The state, city, regional, and sub-category analyses provide additional perspectives for understanding business performance.

---

## 🚀 Future Improvements

* Add `Order Date` for complete monthly and yearly trend analysis.
* Add Year-over-Year growth analysis.
* Add Month-over-Month growth analysis.
* Build an interactive **Power BI dashboard**.
* Add customer-level analysis.
* Perform RFM customer segmentation.
* Add sales forecasting.
* Analyze seasonal trends.
* Add profit-margin analysis by product.
* Create an automated reporting dashboard.

---

## 👨‍💻 Skills Demonstrated

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Data Cleaning
* Exploratory Data Analysis
* KPI Analysis
* Business Analytics
* Data Visualization
* Statistical Analysis
* Profitability Analysis
* Sales Analysis
* Insight Generation

---
---

## 👨‍💻 Author

**Ratnesh Chauhan**

**Data Analyst | Business Analyst | Power BI Developer | Business Intelligence | Data Analytics**

🔗 GitHub: https://github.com/Ratnesh8577
🔗 LinkedIn: https://www.linkedin.com/in/ratnesh-chauhan-41a113279/

---


## 📝 Conclusion

The **Sample Superstore Sales Analysis** project demonstrates how Python-based data analysis can be used to transform raw sales data into meaningful business insights. Through data cleaning, KPI calculation, exploratory analysis, and multiple visualizations, the project provides a detailed understanding of sales, profit, quantity, discount, product, regional, customer, and shipping performance. The analysis also establishes a foundation for future development of an interactive **Power BI Business Intelligence dashboard** and time-series sales analysis when date information is available.

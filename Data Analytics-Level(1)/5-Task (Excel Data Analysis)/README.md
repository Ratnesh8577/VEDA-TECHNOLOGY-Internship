# SuperStore Dataset — MS Excel Analysis

## 📊 Project Overview

This project focuses on analyzing the **SuperStore Dataset using Microsoft Excel**. The dataset contains detailed information about customer orders, products, sales, profit, shipping, regions, categories, discounts, returns, and managers.

The main objective of this project is to apply **Excel formulas, data filtering, conditional formatting, lookup functions, and Pivot Tables** to solve practical data-analysis questions and generate meaningful business insights.

This project is also designed as a practical learning resource for beginners who want to improve their **Microsoft Excel and data-analysis skills**.

---

## 🎯 Problem Statement

The SuperStore dataset contains order-level information for different products and customers across multiple regions.

As a data analyst, the task is to analyze the available data and solve a set of business-oriented questions using **Microsoft Excel**.

The analysis covers:

* Order-level profit analysis
* Shipping time calculation
* Manager name extraction
* Return-order identification
* Profit classification
* Filtering and sorting
* Regional and category-level sales analysis
* Conditional formatting for identifying important records

---

## 🛠️ Tools & Technologies

### Software

* **Microsoft Excel**

### Excel Functions & Features

* `SUMIF`
* `LEFT`
* `RIGHT`
* `MID`
* `FIND`
* `XLOOKUP`
* `DATEDIF`
* `IFS`
* `FILTER`
* Sorting & Filtering
* Conditional Formatting
* Pivot Tables
* Pivot Charts

---

# 📌 Analysis & Solutions

## Q1: Calculate Total Profit for Each Order ID

### Objective

Calculate the **total profit for each Order ID** by adding the profit values of all rows belonging to the same order.

### Approach

The `SUMIF` function is used to calculate the total profit for each Order ID.

### Formula

```excel
=SUMIF(Order_ID_Range, Order_ID, Profit_Range)
```

This approach is useful when a single order contains multiple product or transaction rows.

---

## Q2: Calculate Shipping Days

### Objective

Calculate the number of days between the **Order Date** and **Ship Date** for the required orders.

Orders that were shipped in **less than 3 days** are highlighted using Conditional Formatting.

### Approach

The `DATEDIF` function is used to calculate the difference between the Order Date and Ship Date.

### Formula

```excel
=DATEDIF(Order_Date, Ship_Date, "D")
```

Here:

* `D` = Difference in days
* `M` = Difference in months
* `Y` = Difference in years

### Conditional Formatting

To highlight orders shipped in less than 3 days:

**Home → Conditional Formatting → Highlight Cells Rules → Less Than → 3**

---

## Q3: Extract Manager Name Abbreviations

### Objective

Extract the **first two letters of each Manager name** from the Managers sheet and create a separate table containing the abbreviations.

### Approach

Excel text functions such as:

* `LEFT`
* `MID`
* `FIND`

can be combined to extract the required characters from manager names.

This demonstrates how Excel can be used for **text manipulation and data standardization**.

---

## Q4: Identify Returned Orders

### Objective

Use the **Returns sheet** to identify whether the specified orders were returned.

A new **Returned?** column is added to the Orders sheet with:

* `Yes`
* `No`

### Approach

The `XLOOKUP` function is used to search for the Order ID in the Returns sheet.

### Logic

* **Lookup Value:** Order ID
* **Lookup Array:** Order ID column from Returns
* **Return Array:** Returned column from Returns
* Appropriate `XLOOKUP` options are used to handle unavailable records.

This helps connect information between different Excel sheets.

---

## Q5: Classify Orders Based on Profit

### Objective

Classify the first 500 orders into three profit categories:

| Profit Condition        | Classification |
| ----------------------- | -------------- |
| Profit > $150           | High Profit    |
| Profit ≥ $50 and ≤ $150 | Medium Profit  |
| Profit < $50            | Low Profit     |

### Approach

The `IFS` function is used to apply multiple conditions.

### Formula Logic

```text
If Profit > 150 → High Profit
If Profit >= 50 → Medium Profit
Otherwise → Low Profit
```

This provides an easy way to categorize orders according to their profitability.

---

## Q6: Filter High-Profit Orders and Sort by Date

### Objective

Identify orders with **Profit greater than $1,000** and sort the resulting records from the **oldest Order Date to the newest**.

### Approach

The required columns are extracted from the Orders sheet, followed by filtering and sorting.

### Steps

1. Select the required data.
2. Enable Excel Filters.
3. Open the **Profit** filter.
4. Select **Number Filters → Greater Than**.
5. Enter `1000`.
6. Apply the filter.
7. Open the **Order Date** filter.
8. Select **Sort Oldest to Newest**.

This makes it easier to analyze high-value profitable orders chronologically.

---

## Q7: Sales Analysis by Region and Category

### Objective

Create a **Pivot Table** showing total Sales by:

* Region
* Category

The Pivot Table is then used to identify the **highest-grossing category in each region**.

A chart is also created to visually compare category-level sales across regions.

### Pivot Table Configuration

| Pivot Table Area | Field    |
| ---------------- | -------- |
| Rows             | Region   |
| Columns          | Category |
| Values           | Sales    |

### Pivot Chart

A **Clustered Column/Bar Chart** is created using the Pivot Table data.

### Business Use

This analysis helps understand:

* Which regions generate the highest sales
* Which product categories perform best
* Differences in category performance across regions
* Regional sales patterns

---

## Q8: Highlight Negative Profit and High Discount

### Objective

Analyze the first 2,000 orders and highlight records where:

* **Profit is negative**
* **Discount is greater than 0.5**

### Condition 1 — Negative Profit

Select the Profit column:

**Home → Conditional Formatting → Highlight Cells Rules → Less Than → 0**

### Condition 2 — High Discount

Select the Discount column:

**Home → Conditional Formatting → Highlight Cells Rules → Greater Than → 0.5**

This makes potentially problematic or low-profit transactions easier to identify.

---

# 📈 Key Excel Skills Demonstrated

Through this project, the following practical Excel skills are demonstrated:

* Data cleaning and preparation
* Conditional formatting
* Text extraction
* Lookup operations
* Profit classification
* Date calculations
* Data filtering
* Data sorting
* Pivot Table creation
* Pivot Chart creation
* Business-oriented data analysis

---

# 💡 Business Insights

The analysis can help a business understand:

* Order-level profitability
* Shipping performance
* Returned orders
* High-profit and low-profit orders
* Regional sales performance
* Category-wise sales performance
* Orders affected by high discounts
* Orders generating negative profit

These insights can support better **sales, operations, pricing, and profitability decisions**.

---

# 🏁 Conclusion

This project demonstrates a practical **SuperStore data-analysis workflow using Microsoft Excel**. Different Excel formulas and features were applied to analyze orders, calculate profit, identify returns, measure shipping time, classify profitability, filter important transactions, and analyze sales across regions and categories.

The project helped strengthen practical knowledge of **Excel formulas, data analysis, Conditional Formatting, XLOOKUP, Pivot Tables, Pivot Charts, filtering, sorting, and business data interpretation**.

Overall, the project provides hands-on experience in converting raw SuperStore data into structured analysis and useful business insights using **Microsoft Excel**.

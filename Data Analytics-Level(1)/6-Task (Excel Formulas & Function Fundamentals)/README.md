# 📊 Microsoft Excel Data Analyst Training & Analysis

![Microsoft Excel](https://img.shields.io/badge/Microsoft%20Excel-Data%20Analysis-217346?style=for-the-badge\&logo=microsoftexcel\&logoColor=white)
![Excel 365](https://img.shields.io/badge/Excel-365%20%2F%202021-blue?style=for-the-badge)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-orange?style=for-the-badge)

## 📌 Project Overview

This repository contains my practical **Microsoft Excel Data Analyst Training and Analysis** work.

The project focuses on using Excel for:

* Data Cleaning
* Data Transformation
* Data Validation
* Logical Analysis
* Statistical Analysis
* Lookup Operations
* Dynamic Filtering
* Sorting
* Pivot Tables
* Pivot Charts
* Slicers
* Data Visualization
* Dashboard Development
* Business Intelligence Analysis
* Business Reporting

All formulas and techniques included in this project have been practically implemented on structured datasets.

---

# 🎯 Objectives

The main objectives of this project are:

* Understand Excel as a practical Data Analysis tool.
* Clean and prepare raw datasets for analysis.
* Standardize inconsistent text and categorical data.
* Remove duplicate records.
* Remove unwanted spaces and special characters.
* Apply data validation rules.
* Use logical and conditional formulas.
* Perform statistical calculations.
* Retrieve information using lookup functions.
* Build dynamic filtering and sorting solutions.
* Analyze data using Pivot Tables.
* Create Pivot Charts and interactive Slicers.
* Build Excel-based dashboards.
* Generate meaningful business insights.
* Develop practical skills required for **Data Analyst, Business Analyst, MIS, Reporting, and BI roles**.

---

# 🛠️ Tools & Technologies

| Tool / Feature         | Purpose                              |
| ---------------------- | ------------------------------------ |
| Microsoft Excel        | Data analysis and reporting          |
| Excel 365 / Excel 2021 | Advanced Excel functionality         |
| Excel Formulas         | Calculations and data transformation |
| Pivot Tables           | Data summarization                   |
| Pivot Charts           | Data visualization                   |
| Slicers                | Interactive filtering                |
| Conditional Formatting | Visual analysis                      |
| Data Validation        | Data quality control                 |
| Named Ranges           | Dynamic formulas                     |
| Excel Dashboard        | Business reporting                   |

The project specifically covers Excel 365 / Excel 2021 and advanced Excel functions for data analysis, validation, and reporting.

---

# 📂 Repository Structure

```text
Excel Data Analyst Training
│
├── 📊 Excel_Data_Analysts_Training.xlsx
├── 📊 CH6-Excel_Data_Analysts_Training.xlsx
├── 📊 CH7-Excel_Data_Analysts_Training.xlsx
│
├── 📄 EXCEL_NOTES.md
├── 📄 PIVOT TABLE.md
├── 📄 VLookUp.md
├── 📄 VLoopUpCopy.md
├── 📄 README.md
│
└── 📁 assets
    └── excel_dashboard.png
```

---

# 📚 Training Topics

## 1️⃣ Data Cleaning

Data cleaning is the first major step in the Excel Data Analyst workflow.

### Text Standardization

#### PROPER

Converts text into proper capitalization.

```excel
=PROPER(C2)
```

Example:

```text
elecTronics → Electronics
```

#### UPPER

Converts text into uppercase.

```excel
=UPPER(A2)
```

#### LOWER

Converts text into lowercase.

```excel
=LOWER(A2)
```

These functions are included in the project's data-cleaning section.

---

## 2️⃣ Removing Duplicates

Duplicate records can produce incorrect analysis.

### Process

```text
Select Complete Table
        ↓
Data
        ↓
Remove Duplicates
        ↓
Select Required Columns
        ↓
Confirm
```

The training notes demonstrate using Excel's **Remove Duplicates** feature for cleaning structured data.

---

## 3️⃣ Removing Extra Spaces

### TRIM

```excel
=TRIM(A2)
```

Used to remove unnecessary spaces from text.

### SUBSTITUTE

Special spaces can also be handled using:

```excel
=SUBSTITUTE(A2,CHAR(160),"")
```

These techniques are included in the data-cleaning exercises.

---

# 4️⃣ Text Extraction & Splitting

The project covers extracting information from cells containing multiple values.

### LEFT

```excel
=LEFT(A2,5)
```

### FIND

```excel
=FIND("-",A2,1)
```

`FIND` is used to locate a specific character or separator.

### LEFT + FIND

Separator-based extraction can be performed using a combination of `LEFT` and `FIND`.

The project includes `LEFT`, `FIND`, and separator-based text splitting.

---

# 5️⃣ Flash Fill

Flash Fill can be used when information follows a recognizable pattern.

Shortcut:

```text
Ctrl + E
```

Example:

```text
sahil-18
yati-16
```

Information can be separated into different columns by identifying the required pattern.

---

# 6️⃣ Data Validation

Data Validation helps ensure that users enter data in the correct format.

### Examples

* Dropdown lists
* Numeric validation
* Text-length validation
* Restricted input
* Custom error messages

### Workflow

```text
Select Column
      ↓
Data
      ↓
Data Validation
      ↓
Select Allow
      ↓
Set Validation Rule
      ↓
Configure Error Alert
```

The project includes dropdown lists, numeric/text-length validation, and custom error messages.

---

# 7️⃣ Conditional Formatting

Conditional Formatting is used to visually identify important records.

### Applications

* Highlight specific values
* Highlight complete rows
* Highlight categories
* Highlight values based on conditions

Example:

```excel
=$C2=$J$2
```

This can be used to highlight rows according to a selected category.

---

# 8️⃣ Logical Functions

## IF

```excel
=IF(D2>=32,"Pass","Fail")
```

Used to evaluate a condition and return different results.

## Nested IF

```excel
=IF(D2>75000,D2*20%,IF(D2>50000,D2*15%,D2*10%))
```

Used when multiple conditions need to be evaluated.

## IFS

Used for evaluating multiple conditions without repeatedly nesting IF statements.

## AND / OR

Example:

```excel
=IF(AND(D2="Finance",F2>=5),"Yes","No")
```

These logical functions are included in the project's conditional analysis section.

---

# 9️⃣ Sorting & Filtering

## Sorting

The project covers:

* Single-column sorting
* Multi-column sorting
* Ascending order
* Descending order

```text
Select Table
    ↓
Data
    ↓
Sort
    ↓
Select Column
    ↓
Select Order
```

---

## FILTER

Dynamic filtering can be performed using:

```excel
=FILTER(A2:H1001,D2:D1001=K2,"Not Found")
```

This allows records to be returned automatically according to a selected condition.

---

## SORT + FILTER

Multiple dynamic functions can be combined.

```excel
=SORT(FILTER(A2:I1001,C2:C1001=K2,"NotFound"),9,-1)
```

This approach filters the data and then sorts the resulting records.

The project includes `FILTER`, `SORT`, and combined `SORT + FILTER` formulas.

---

# 🔟 Dynamic Dropdown Lists

The project demonstrates creating dropdowns containing unique values.

### Process

```text
Copy Required Column
        ↓
Remove Duplicates
        ↓
Select Target Cell
        ↓
Data Validation
        ↓
List
        ↓
Select Unique Values
```

Example:

```excel
=$D:$D
```

Dropdowns can be used for:

* State
* Region
* Department
* Category

---

# 1️⃣1️⃣ Statistical & Aggregation Functions

The project covers the following functions:

### COUNTIF

```excel
=COUNTIF(range,criteria)
```

Counts records according to a condition.

### COUNTIFS

```excel
=COUNTIFS(range1,criteria1,range2,criteria2)
```

Counts records using multiple conditions.

### SUMIF

```excel
=SUMIF(range,criteria,sum_range)
```

Calculates totals according to a condition.

### SUMIFS

Calculates totals using multiple criteria.

### AVERAGEIF

```excel
=AVERAGEIF(range,criteria,average_range)
```

Calculates an average according to a condition.

### AVERAGEIFS

Calculates averages using multiple criteria.

### MAXIFS

```excel
=MAXIFS(max_range,criteria_range,criteria)
```

Returns the maximum value according to specified criteria.

These aggregation and statistical functions are explicitly included in the project.

---

# 1️⃣2️⃣ VLOOKUP

VLOOKUP is used to retrieve information from a table by searching vertically.

### Syntax

```excel
=VLOOKUP(lookup_value,table_array,col_index_num,range_lookup)
```

Example:

```excel
=VLOOKUP($H$2,$A$1:$E$13,ROW()-1,FALSE)
```

The project contains dedicated VLOOKUP exercises and practical examples.

---

# 1️⃣3️⃣ Absolute & Relative References

The `$` symbol is used to fix a cell or range.

Example:

```excel
$H$2
$A$1:$E$13
```

### Absolute Reference

The reference remains fixed when the formula is copied.

### Relative Reference

The reference changes according to the new location of the formula.

The project specifically covers absolute and relative cell referencing.

---

# 1️⃣4️⃣ Exact & Approximate Lookup

VLOOKUP can be used for different lookup requirements.

### Exact Match

Useful when working with fixed values such as:

* Employee ID
* Name
* Age

### Approximate Match

Useful when working with ranges such as:

* Salary bands
* Performance ranges
* Classification ranges

The training notes distinguish exact and approximate lookup use cases and discuss the ordering requirement for approximate lookup.

---

# 1️⃣5️⃣ Named Ranges

A complete table can be assigned a meaningful name and then referenced inside formulas.

### Benefits

* Easier formulas
* Better readability
* Easier table selection
* Useful for dynamic analysis

Named ranges and tables are included in the lookup and reference training.

---

# 1️⃣6️⃣ MATCH Function

MATCH identifies the position of a value within a range.

### Syntax

```excel
=MATCH(lookup_value,lookup_array,match_type)
```

Example:

```excel
=MATCH(H4,$A$1:$E$1,0)
```

MATCH can be combined with VLOOKUP to dynamically identify a column number.

---

# 1️⃣7️⃣ VLOOKUP + MATCH

Combining VLOOKUP and MATCH creates a more dynamic lookup.

```excel
=VLOOKUP($I$3,$A$1:$E$13,MATCH(H4,$A$1:$E$1,0),0)
```

Instead of manually entering the column number, MATCH identifies the required column.

---

# 1️⃣8️⃣ INDEX Function

INDEX returns a value based on a row and column position.

### Syntax

```excel
=INDEX(TableData,RowNumber,ColumnNumber)
```

Example:

```excel
=INDEX(A1:J9,C17,C18)
```

INDEX can be combined with MATCH to dynamically identify row and column positions.

---

# 1️⃣9️⃣ Pivot Tables

Pivot Tables are one of the most important Excel tools for Data Analysts.

They can be used for:

* Filtering
* Sorting
* Counting
* Summarizing
* Comparing categories
* Sales analysis
* Profit analysis
* Regional analysis
* Product analysis

### Creating a Pivot Table

```text
Insert
   ↓
PivotTable
   ↓
Select Data
   ↓
New Sheet / Existing Sheet
   ↓
Create
```

The training notes cover Pivot Tables as an automated method for filtering, sorting, counting, and summarizing data.

---

# 2️⃣0️⃣ Pivot Table Analysis

The project uses Pivot Tables to analyze:

* Country
* Year
* Sales
* Profit
* Order Count
* Product
* Region
* Category

### Example Analysis

The provided Pivot Table contains yearly sales and profit analysis for countries including:

* Australia
* Brazil
* China
* France
* Germany
* India
* Indonesia
* Mexico
* United Kingdom
* United States

The displayed Grand Total is approximately:

```text
Sales  : $7,917,828
Profit : $1,146,828.62
```

---

# 2️⃣1️⃣ Pivot Table Filters

Pivot Tables can be filtered according to required fields.

The project also demonstrates creating separate worksheets for filtered Pivot Table results.

This can be useful for:

* Region-wise reports
* State-wise reports
* Category reports
* Department reports
* Management reports

---

# 2️⃣2️⃣ Slicers

Slicers provide an interactive way to filter Pivot Table data.

### Workflow

```text
PivotTable Analyze
        ↓
Slicer
        ↓
Select Required Field
        ↓
Interactive Filter
```

Slicers are included in the Pivot Table training.

---

# 2️⃣3️⃣ Pivot Charts

Pivot Charts convert summarized Pivot Table information into visual reports.

### Workflow

```text
Select Data
    ↓
Insert
    ↓
PivotChart
    ↓
Select Chart Type
```

The project also demonstrates changing an existing chart type without creating a new chart.

---

# 2️⃣4️⃣ Data Visualization

The `Visualization_Data` worksheet contains monthly:

* Sales
* Profit

information.

Possible visualizations include:

* Column Charts
* Bar Charts
* Line Charts
* Sales vs Profit comparisons
* Trend analysis

The repository also contains a sample sales-performance dashboard created using Excel charts, Pivot Tables, and Macros.

---

# 2️⃣5️⃣ Business Intelligence Analysis

The `BI_Data` worksheet is designed for business-oriented analysis.

The data includes fields such as:

* Order ID
* Customer
* Region
* Amount
* Order Date

Possible analysis:

* Regional sales
* Customer performance
* Revenue
* Order trends
* Time-based performance
* KPI reporting

---

# 2️⃣6️⃣ Case Study Analysis

The `Case_Study` worksheet contains fields such as:

* State
* City
* Population
* Internet Penetration (%)
* E-Commerce Sales

The dataset can be used to analyze relationships between:

```text
Population
     ↓
Internet Penetration
     ↓
E-Commerce Sales
```

### Possible Questions

* Which state has the highest population?
* Which city has higher internet penetration?
* Which areas have higher e-commerce sales?
* Which cities perform strongly in e-commerce?
* Is higher internet penetration associated with higher e-commerce activity?

---

# 2️⃣7️⃣ Sales Data Analysis

The Chapter 7 workbook contains a `Sales_Data` worksheet with fields such as:

* Sale Date
* Customer Name
* City
* State
* Region
* Product Category
* Product Name
* Quantity

The workbook also includes regional analysis such as:

* North
* West

and additional sales/category analysis.

---

# 📊 Complete Excel Skills

## Data Cleaning

* PROPER
* UPPER
* LOWER
* TRIM
* SUBSTITUTE
* FIND
* LEFT
* Remove Duplicates
* Flash Fill

## Logical Functions

* IF
* Nested IF
* IFS
* AND
* OR

## Statistical & Aggregation Functions

* COUNTIF
* COUNTIFS
* SUMIF
* SUMIFS
* AVERAGEIF
* AVERAGEIFS
* MAXIFS

## Lookup & Reference

* VLOOKUP
* MATCH
* INDEX
* VLOOKUP + MATCH
* Absolute References
* Relative References
* Named Ranges

## Dynamic Data Functions

* FILTER
* SORT
* SORT + FILTER

## Excel Data Tools

* Data Validation
* Conditional Formatting
* Sorting
* Filtering
* Pivot Tables
* Pivot Charts
* Slicers
* Dashboards

This feature set corresponds to the functions and tools documented in the original project README.

---

# 🔄 Data Analyst Workflow

```text
                     RAW DATA
                        │
                        ▼
                Data Inspection
                        │
                        ▼
                 Data Cleaning
                        │
          ┌─────────────┼─────────────┐
          ▼             ▼             ▼
     Text Cleaning   Duplicates   Data Validation
          │             │             │
          └─────────────┼─────────────┘
                        ▼
                  Clean Dataset
                        │
                        ▼
                  Data Analysis
                        │
       ┌────────────────┼────────────────┐
       ▼                ▼                ▼
    Formulas          Lookups       Pivot Tables
       │                │                │
       └────────────────┼────────────────┘
                        ▼
                  Data Visualization
                        │
                        ▼
                  Business Insights
                        │
                        ▼
                  Final Reporting
```

---

# 💼 Business Questions Answered Through Excel

The project demonstrates how Excel can be used to answer questions such as:

* Which region has the highest sales?
* Which category performs best?
* Which products generate the highest revenue?
* Which department has specific employees?
* Which employees fall within a salary range?
* How many records satisfy a condition?
* What is the total sales for a selected region?
* What is the average value for a category?
* What is the maximum value under a condition?
* Which countries generate higher sales?
* How does sales performance change over time?
* Which products or customers contribute most to performance?
* Which regions require further business attention?

---

# 📈 Analysis Process

## Data Cleaning

```text
Raw Data
   ↓
Data Inspection
   ↓
Remove Duplicates
   ↓
Clean Text
   ↓
Remove Extra Spaces
   ↓
Standardize Data
   ↓
Validate Data
   ↓
Clean Dataset
```

## Data Analysis

```text
Clean Dataset
     ↓
Excel Formulas
     ↓
Filtering & Sorting
     ↓
Lookup Analysis
     ↓
Pivot Tables
     ↓
Pivot Charts
     ↓
Dashboard
     ↓
Business Insights
```

---

# 📊 Sample Dashboard

The repository includes a sample **Excel Sales Performance Dashboard** using Excel charts, Pivot Tables, and Macros.

<p align="center">
  <img src="assets/excel_dashboard.png" alt="Excel Dashboard" width="800">
</p>

---

# 🎯 Learning Outcomes

After completing this training, I developed practical knowledge of:

* Excel data cleaning
* Data transformation
* Text manipulation
* Logical formulas
* Statistical formulas
* Lookup functions
* Dynamic filtering
* Data validation
* Conditional formatting
* Sorting and filtering
* Pivot Table analysis
* Pivot Chart creation
* Interactive Slicers
* Sales analysis
* Business Intelligence reporting
* Dashboard preparation
* Business-focused data interpretation

---

# 🚀 Real-World Applications

The skills developed through this project can be applied to:

* 📊 Sales Reporting
* 👥 Customer Analysis
* 👨‍💼 Employee Analytics
* 💰 Financial Reporting
* 📦 Inventory Analysis
* 📈 Business Dashboards
* 🎯 KPI Tracking
* ⚙️ Operational Reporting
* 🌎 Regional Performance Analysis
* 🏢 Management Reporting
* 📋 MIS Reporting
* 💼 Business Intelligence

---

# ⭐ Key Takeaways

This project demonstrates that **Microsoft Excel can be used as a powerful entry-level Data Analysis and Business Intelligence tool**.

The complete workflow covered in this project is:

**Data Cleaning → Data Transformation → Data Analysis → Data Visualization → Business Insights → Reporting**

I gained practical experience working with important Excel functions such as:

```text
VLOOKUP
MATCH
INDEX
IF
IFS
AND
OR
SUMIF
SUMIFS
COUNTIF
COUNTIFS
AVERAGEIF
AVERAGEIFS
MAXIFS
FILTER
SORT
```

along with:

```text
Pivot Tables
Pivot Charts
Slicers
Conditional Formatting
Data Validation
Named Ranges
Dashboards
```

---

# 🏁 Conclusion

This project demonstrates a complete practical **Microsoft Excel Data Analyst workflow** using structured datasets and business-oriented analysis.

I practiced cleaning and preparing raw data, standardizing text, removing duplicates, handling unwanted spaces, validating data, applying logical and statistical formulas, performing lookup operations, dynamically filtering and sorting datasets, and summarizing information through Pivot Tables.

I also practiced creating Pivot Charts, Slicers, visual reports, dashboards, and business-focused analysis.

Overall, this training strengthened my practical Excel skills and provided a strong foundation for working in **Data Analyst, Business Analyst, MIS, Reporting, and Business Intelligence** roles.

---

# 👨‍💻 Author

**Ratnesh Chauhan**

**B.Tech – Computer Science & Engineering**

📍 Bhopal, Madhya Pradesh, India

---

# 🔗 Connect With Me

* GitHub: https://github.com/Ratnesh8577
* LinkedIn: https://www.linkedin.com/in/ratnesh-chauhan-41a113279/
* LeetCode: https://leetcode.com/u/RatneshChauhan279/

---

⭐ **If you find this project useful, please consider giving the repository a star!**

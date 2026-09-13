# 📊 Microsoft Excel Data Analyst Training & Analysis

## 📌 Project Overview

This repository contains my practical **Microsoft Excel Data Analyst Training and Analysis** work.

The project focuses on using Microsoft Excel for **data cleaning, data transformation, lookup operations, logical analysis, statistical analysis, Pivot Tables, Pivot Charts, data visualization, reporting, and business analysis**.

The workbook contains multiple practical datasets and exercises designed to develop the core Excel skills required for a **Data Analyst / Business Analyst / BI Analyst** role.

All formulas and techniques included in this project have been practically implemented on structured datasets.

---

# 🎯 Objectives

The main objectives of this project are:

* Learn Excel fundamentals required for Data Analytics.
* Clean and prepare raw datasets.
* Standardize inconsistent text and categorical data.
* Remove duplicate records.
* Handle unwanted spaces and characters.
* Apply data validation.
* Use logical and conditional formulas.
* Perform statistical analysis.
* Retrieve information using lookup functions.
* Use VLOOKUP, MATCH, and INDEX.
* Create dynamic filtering and sorting solutions.
* Build Pivot Tables and Pivot Charts.
* Analyze sales and business data.
* Create dashboards and reports.
* Generate meaningful business insights from data.

---

# 🛠️ Tools & Technologies

* **Microsoft Excel**
* **Excel 365 / Excel 2021**
* Excel Formulas & Functions
* Pivot Tables
* Pivot Charts
* Conditional Formatting
* Data Validation
* Named Ranges
* Data Visualization
* Business Intelligence concepts

The project specifically uses advanced Excel functions for data analysis, validation, and reporting.

---

# 📂 Workbook Structure

The main training workbook contains the following worksheets:

```text
Excel_Data_Analysts_Training.xlsx
│
├── Basic_Data
├── Remove_duplicate
├── RD-2
├── Remove Space
├── Data_Cleaning
├── Data_Cleaning (2)
├── Logical_Functions
├── Visualization_Data
├── Pivot_Data
├── BI_Data
└── Case_Study
```

Additional workbooks contain dedicated exercises for:

```text
CH6-Excel_Data_Analysts_Training.xlsx
│
├── V-Lookup
├── V-Lookup (2)
├── V-Lookup With Match
└── Match and Index
```

and:

```text
CH7-Excel_Data_Analysts_Training.xlsx
│
├── North
├── West
├── Sheet1
└── Sales_Data
```

---

# 1️⃣ Basic Data Analysis

The `Basic_Data` worksheet contains employee-related information such as:

* Employee ID
* Employee Name
* Department
* Salary
* Joining Date

Example departments include:

* Finance
* Operations
* Sales
* IT

This dataset is used for practicing Excel formulas, filtering, sorting, logical operations, and lookup techniques.

---

# 2️⃣ Data Cleaning

Data cleaning is one of the most important steps in a Data Analyst workflow.

This project covers several practical data-cleaning techniques.

## 🔹 PROPER

Used to convert text into proper capitalization.

```excel
=PROPER(C2)
```

Example:

```text
elecTronics → Electronics
```

---

## 🔹 UPPER

Converts text into uppercase.

```excel
=UPPER(A2)
```

Example:

```text
electronics → ELECTRONICS
```

---

## 🔹 LOWER

Converts text into lowercase.

```excel
=LOWER(A2)
```

Example:

```text
ELECTRONICS → electronics
```

These text-cleaning functions are part of the implemented data-cleaning workflow.

---

# 3️⃣ Removing Duplicate Records

Duplicate records can affect analysis and produce incorrect results.

The project demonstrates how to remove duplicates using:

```text
Data → Remove Duplicates
```

### Process

1. Select the complete table.
2. Open the **Data** tab.
3. Select **Remove Duplicates**.
4. Select the columns that should be checked.
5. Confirm the operation.

The training notes specifically cover selecting the complete table and using the **Remove Duplicates** option.

---

# 4️⃣ Removing Extra Spaces

Unwanted spaces can cause incorrect matching and inconsistent text length.

## 🔹 TRIM

```excel
=TRIM(A2)
```

TRIM removes unnecessary spaces from text.

---

## 🔹 SUBSTITUTE

For special non-breaking spaces, the project also demonstrates:

```excel
=SUBSTITUTE(A2,CHAR(160),"")
```

This technique is included in the training notes for removing extra/special spaces.

---

# 5️⃣ Data Cleaning Using Text Functions

The project also demonstrates:

* Text standardization
* Text length checking
* Character searching
* Text extraction
* Splitting information from a single cell

Important functions include:

```excel
LEFT()
FIND()
TRIM()
SUBSTITUTE()
PROPER()
UPPER()
LOWER()
```

The repository documents these functions as part of its data-cleaning and text-extraction features.

---

# 6️⃣ Splitting Data

Sometimes multiple pieces of information are stored inside a single cell.

Example:

```text
sahil-12
yati-13
anuj-38
```

The project demonstrates Flash Fill as one method:

```text
Ctrl + E
```

Flash Fill can identify the pattern and automatically populate the remaining values.

---

# 7️⃣ FIND Function

The `FIND` function is used to locate a specific character or separator within text.

```excel
=FIND("-",A2,1)
```

It returns the position of the specified character.

The training also demonstrates using `LEFT` together with `FIND` for separator-based text extraction.

---

# 8️⃣ Data Validation

Data Validation helps control the type of data users can enter.

Examples:

* Dropdown lists
* Numeric values
* Text length
* Restricted input
* Custom error messages

### Process

```text
Select Column
      ↓
Data
      ↓
Data Validation
      ↓
Select Allow
      ↓
Configure Rule
      ↓
Add Error Alert
```

The project includes dropdown lists, numeric/text-length validation, and custom error messages.

---

# 9️⃣ Conditional Formatting

Conditional Formatting is used to visually highlight important information.

Examples include:

* Highlighting values
* Highlighting complete rows
* Category-based highlighting
* Identifying specific conditions

A formula can be used for row-based highlighting, for example:

```excel
=$C2=$J$2
```

This allows an entire row to be highlighted according to a selected category.

---

# 🔟 Logical Functions

The project contains practical exercises using logical functions.

## IF

```excel
=IF(D2>=32,"Pass","Fail")
```

This evaluates a condition and returns one result when TRUE and another when FALSE.

---

## Nested IF

Example:

```excel
=IF(D2>75000,D2*20%,IF(D2>50000,D2*15%,D2*10%))
```

Nested IF is useful when multiple conditions need to be evaluated.

---

## IFS

IFS can be used when multiple conditions are required without repeatedly nesting IF statements.

The project also covers the use of logical conditions with **AND** and **OR**.

---

# 1️⃣1️⃣ AND / OR Functions

Example:

```excel
=IF(AND(D2="Finance",F2>=5),"Yes","No")
```

This checks whether multiple conditions are satisfied.

The same approach can be used with:

```excel
OR()
```

when any one of multiple conditions can satisfy the requirement.

---

# 1️⃣2️⃣ Sorting

The project covers sorting:

* One column
* Multiple columns
* Ascending order
* Descending order

### Process

```text
Select Complete Table
        ↓
Data
        ↓
Sort
        ↓
Select Column
        ↓
Select Order
```

Multi-column sorting is included as one of the implemented Excel analysis techniques.

---

# 1️⃣3️⃣ FILTER Function

The FILTER function is used to dynamically retrieve records based on a condition.

Example:

```excel
=FILTER(A2:H1001,D2:D1001=K2,"Not Found")
```

This allows data to be filtered dynamically without manually applying Excel filters.

---

# 1️⃣4️⃣ SORT + FILTER

Multiple Excel functions can be combined to create dynamic analysis.

Example:

```excel
=SORT(FILTER(A2:I1001,C2:C1001=K2,"NotFound"),9,-1)
```

This first filters the data and then sorts the resulting records.

The project specifically includes combined `SORT` and `FILTER` formulas.

---

# 1️⃣5️⃣ Dynamic Dropdown Lists

The project demonstrates creating dropdown lists containing unique values.

### Process

1. Copy the required column.
2. Remove duplicate values.
3. Select the target cell.
4. Open **Data Validation**.
5. Select **List**.
6. Select the unique-value range.

Example:

```excel
=$D:$D
```

This can be used for selecting items such as:

```text
State
Region
Department
Category
```

---

# 1️⃣6️⃣ Statistical Functions

The project contains several statistical and aggregation functions.

## COUNTIF

```excel
=COUNTIF(range,criteria)
```

Used to count records based on a condition.

---

## COUNTIFS

```excel
=COUNTIFS(range1,criteria1,range2,criteria2)
```

Used when multiple conditions are required.

---

## SUMIF

```excel
=SUMIF(range,criteria,sum_range)
```

Used to calculate totals based on a condition.

---

## SUMIFS

Used to calculate totals using multiple conditions.

---

## AVERAGEIF

```excel
=AVERAGEIF(range,criteria,average_range)
```

Used to calculate an average based on a condition.

---

## AVERAGEIFS

Used to calculate averages using multiple criteria.

---

## MAXIFS

```excel
=MAXIFS(max_range,criteria_range,criteria)
```

Used to find the maximum value according to a specific condition.

These aggregation functions are included in the training repository.

---

# 1️⃣7️⃣ VLOOKUP

VLOOKUP is used to search for a value vertically in a table and return related information.

### Syntax

```excel
=VLOOKUP(lookup_value,table_array,col_index_num,range_lookup)
```

Example:

```excel
=VLOOKUP($H$2,$A$1:$E$13,ROW()-1,FALSE)
```

The training workbook includes dedicated VLOOKUP exercises.

---

# 1️⃣8️⃣ Absolute and Relative References

The `$` symbol is used to create an absolute reference.

Example:

```excel
$H$2
$A$1:$E$13
```

Absolute references prevent a cell or range from changing when a formula is copied.

Relative references change according to the formula's new location.

The project specifically practices absolute and relative cell referencing.

---

# 1️⃣9️⃣ Exact Match and Approximate Match

VLOOKUP supports two important lookup approaches:

### Exact Match

```excel
FALSE
```

Used when searching for fixed values such as:

* Employee ID
* Name
* Age

### Approximate Match

```excel
TRUE
```

Used when working with ranges such as salary bands.

For approximate matching, the lookup data needs to be arranged in ascending order according to the training notes.

---

# 2️⃣0️⃣ Named Ranges

Instead of repeatedly selecting a large table, the table can be given a name.

Example:

```text
Emp_Type
```

Then it can be referenced directly inside formulas.

Named ranges and tables are included in the project's lookup and reference exercises.

---

# 2️⃣1️⃣ MATCH Function

MATCH is used to find the position of a value within a range.

### Syntax

```excel
=MATCH(lookup_value,lookup_array,match_type)
```

Example:

```excel
=MATCH(H4,$A$1:$E$1,0)
```

MATCH can be combined with VLOOKUP to dynamically determine the column number.

---

# 2️⃣2️⃣ VLOOKUP + MATCH

Combining VLOOKUP and MATCH makes the lookup more dynamic.

Example:

```excel
=VLOOKUP($I$3,$A$1:$E$13,MATCH(H4,$A$1:$E$1,0),0)
```

This avoids manually entering the column index number.

The project includes a dedicated **V-Lookup With Match** worksheet.

---

# 2️⃣3️⃣ INDEX Function

INDEX returns a value based on a row and column position.

### Syntax

```excel
=INDEX(TableData,RowNumber,ColumnNumber)
```

Example:

```excel
=INDEX(A1:J9,C17,C18)
```

INDEX can be combined with MATCH to dynamically identify both the row and column positions.

---

# 2️⃣4️⃣ Pivot Tables

Pivot Tables are used for summarizing and analyzing large datasets.

They can be used for:

* Filtering
* Sorting
* Counting
* Summarizing
* Comparing categories
* Sales analysis
* Profit analysis

The training notes describe Pivot Tables as an automated table for purposes such as filtering, sorting, and counting.

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
Create Pivot Table
```

---

# 2️⃣5️⃣ Pivot Table Analysis

The project uses Pivot Tables to analyze business information such as:

* Country
* Year
* Sales
* Profit
* Order Count
* Product
* Region
* Category

For example, the provided Pivot Table analysis contains yearly sales and profit values for countries such as Australia, Brazil, China, France, Germany, India, Mexico, the United Kingdom, and the United States.

The overall data shown in the Pivot Table includes a Grand Total of approximately:

```text
Sales  : $7,917,828
Profit : $1,146,828.62
```

---

# 2️⃣6️⃣ Pivot Table Filters

Pivot Tables can be filtered to display only the required information.

The project also demonstrates creating separate worksheets from filtered Pivot Table results.

This is useful when creating:

* Region-wise reports
* State-wise reports
* Category reports
* Department reports
* Management summaries

---

# 2️⃣7️⃣ Slicers

Slicers provide an interactive way to filter Pivot Table information.

### Process

```text
PivotTable Analyze
       ↓
Slicer
       ↓
Select Required Field
```

The training material demonstrates using Slicers as explicit filters for Pivot Table analysis.

---

# 2️⃣8️⃣ Pivot Charts

Pivot Charts convert Pivot Table information into visual reports.

### Process

```text
Select Data
     ↓
Insert
     ↓
PivotChart
     ↓
Select Chart Type
```

The project also demonstrates changing the chart type without creating a new chart.

---

# 2️⃣9️⃣ Data Visualization

The `Visualization_Data` worksheet contains monthly:

* Sales
* Profit

information.

This data can be used to create charts such as:

* Column Chart
* Bar Chart
* Line Chart
* Sales vs Profit comparison

The repository also includes a sample sales-performance dashboard created using Excel charts, Pivot Tables, and Macros.

---

# 3️⃣0️⃣ Business Intelligence Analysis

The `BI_Data` worksheet contains business transaction information including:

* Order ID
* Customer
* Region
* Amount
* Order Date

This dataset can be used for:

* Regional sales analysis
* Customer analysis
* Revenue analysis
* Order analysis
* Time-based analysis
* KPI reporting

---

# 3️⃣1️⃣ Case Study Analysis

The `Case_Study` worksheet contains information such as:

* State
* City
* Population
* Internet Penetration (%)
* E-Commerce Sales

This dataset can be analyzed to understand relationships between:

```text
Population
     ↓
Internet Penetration
     ↓
E-Commerce Sales
```

Possible analysis includes:

* State-wise population comparison
* Internet penetration comparison
* E-commerce sales comparison
* High-performing cities
* Low-performing cities
* Relationship between internet penetration and e-commerce activity

---

# 3️⃣2️⃣ Sales Data Analysis

The Chapter 7 workbook contains a `Sales_Data` worksheet with sales-related fields such as:

* Sale Date
* Customer Name
* City
* State
* Region
* Product Category
* Product Name
* Quantity

This dataset is used for practical Pivot Table and business-analysis exercises.

The workbook also contains regional Pivot Table summaries such as **North** and **West**, along with category-wise sales analysis.

---

# 📈 Key Analysis Areas

Throughout this training, the following analysis areas are covered:

### Data Cleaning

```text
Raw Data
   ↓
Check Data
   ↓
Remove Duplicates
   ↓
Clean Text
   ↓
Remove Extra Spaces
   ↓
Standardize Categories
   ↓
Validated Data
```

### Data Analysis

```text
Clean Data
    ↓
Formulas
    ↓
Filtering
    ↓
Sorting
    ↓
Pivot Tables
    ↓
Charts
    ↓
Business Insights
```

---

# 📊 Excel Skills Demonstrated

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

## Lookup Functions

* VLOOKUP
* MATCH
* INDEX
* VLOOKUP + MATCH

## Dynamic Functions

* FILTER
* SORT
* SORT + FILTER

## Excel Data Tools

* Data Validation
* Conditional Formatting
* Sorting
* Filtering
* Named Ranges
* Pivot Tables
* Pivot Charts
* Slicers

The complete feature set aligns with the functions documented in the project README.

---

# 💼 Data Analyst Workflow

This project demonstrates a practical Excel-based Data Analyst workflow:

```text
                 RAW DATA
                    │
                    ▼
             Data Inspection
                    │
                    ▼
              Data Cleaning
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
     Text       Duplicates   Validation
    Cleaning      Removal       Rules
        │           │           │
        └───────────┼───────────┘
                    ▼
              Clean Dataset
                    │
                    ▼
              Data Analysis
                    │
       ┌────────────┼────────────┐
       ▼            ▼            ▼
    Formulas     Lookups     Pivot Tables
       │            │            │
       └────────────┼────────────┘
                    ▼
              Visualization
                    │
                    ▼
             Business Insights
                    │
                    ▼
              Final Reporting
```

---

# 📌 Business Insights

The Excel exercises demonstrate how an analyst can answer business questions such as:

* Which region has the highest sales?
* Which category performs best?
* Which products generate higher revenue?
* Which employees belong to a specific department?
* Which employees fall into a particular salary range?
* How many records satisfy a particular condition?
* What is the total sales for a particular region?
* What is the average value for a selected category?
* What is the maximum value under a specific condition?
* Which countries have higher sales?
* How does sales performance change over time?
* Which products or customers contribute most to business performance?

---

# 🎯 Learning Outcomes

After completing this training, I developed practical knowledge of:

* Excel data cleaning
* Data transformation
* Excel formulas
* Conditional logic
* Statistical analysis
* Lookup operations
* Dynamic filtering
* Data validation
* Conditional formatting
* Pivot Table analysis
* Pivot Chart creation
* Interactive filtering using Slicers
* Sales analysis
* Business Intelligence reporting
* Dashboard preparation
* Business-focused data interpretation

---

# 🚀 Project Applications

The skills demonstrated in this project can be applied to real-world Data Analyst tasks such as:

* Sales reporting
* Customer analysis
* Employee analytics
* Financial reporting
* Inventory analysis
* Business dashboards
* KPI tracking
* Operational reporting
* Regional performance analysis
* Management reporting

---

# 📁 Repository Files

```text
📁 Excel Data Analyst Training
│
├── 📊 Excel_Data_Analysts_Training.xlsx
├── 📊 CH6-Excel_Data_Analysts_Training.xlsx
├── 📊 CH7-Excel_Data_Analysts_Training.xlsx
│
├── 📄 EXCEL_NOTES.md
├── 📄 PIVOT TABLE.md
├── 📄 VLookUp.md
├── 📄 VLoopUpCopy.md
└── 📄 README.md
```

---

# 🧰 Tools Used

| Tool                   | Purpose                          |
| ---------------------- | -------------------------------- |
| Microsoft Excel        | Data analysis and reporting      |
| Excel Formulas         | Calculations and transformations |
| Pivot Tables           | Data summarization               |
| Pivot Charts           | Data visualization               |
| Slicers                | Interactive filtering            |
| Conditional Formatting | Visual analysis                  |
| Data Validation        | Data quality control             |
| Named Ranges           | Dynamic formulas                 |
| Excel Dashboard        | Business reporting               |

---

# ⭐ Key Takeaways

This project demonstrates that Excel is more than a spreadsheet tool. It can be used as a complete entry-level **data analysis and reporting platform**.

The training covers the complete process from:

**Data Cleaning → Data Transformation → Data Analysis → Data Visualization → Business Reporting**

It also provides practical experience with important Excel functions such as **VLOOKUP, MATCH, INDEX, IF, SUMIFS, COUNTIFS, AVERAGEIFS, FILTER, and SORT**, along with Pivot Tables and Pivot Charts.

---

# 🏁 Conclusion

This project successfully demonstrates a practical **Microsoft Excel Data Analyst workflow** using structured datasets and real-world-style business scenarios.

I practiced cleaning raw data, standardizing values, removing duplicates, handling unwanted spaces, validating data, applying logical and statistical formulas, performing lookup operations, creating dynamic filters, and analyzing data through Pivot Tables and Pivot Charts.

The project also helped build an understanding of how raw Excel data can be transformed into meaningful **business insights, visual reports, dashboards, and decision-support information**.

Overall, this training strengthened my practical Excel skills and created a strong foundation for working on **Data Analyst, Business Analyst, MIS, Reporting, and Business Intelligence** tasks.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

**B.Tech – Computer Science & Engineering**

📍 Bhopal, Madhya Pradesh, India

---

## 🔗 Connect With Me

* GitHub: https://github.com/Ratnesh8577
* LinkedIn: https://www.linkedin.com/in/ratnesh-chauhan-41a113279/
* LeetCode: https://leetcode.com/u/RatneshChauhan279/

---

⭐ **If you find this project useful, consider giving the repository a star!**

# 🔍 Data Quality Audit

## 📌 Project Overview

The **Data Quality Audit** project focuses on identifying, measuring, documenting, and resolving common data quality issues in a dataset.

The audit checks the dataset for:

* Missing values
* Duplicate records
* Invalid or unexpected ranges
* Data type issues
* Inconsistent values
* Formatting inconsistencies
* Invalid categorical values
* Potential data-entry errors

The goal is to create a **repeatable and structured data quality checklist** that can be applied to different datasets.

---

## 🎯 Objective

The main objective of this project is to:

1. Understand the structure and quality of a dataset.
2. Create validation rules for important data fields.
3. Identify missing, duplicate, invalid, and inconsistent records.
4. Quantify each data quality issue.
5. Document identified issues in an issue log.
6. Clean or correct a sample of problematic records.
7. Create a repeatable data quality audit process.
8. Generate insights that can support reliable analysis and reporting.

---

## 🛠️ Tools & Technologies

* **Python**
* **Pandas**
* **Jupyter Notebook**
* **Matplotlib** *(for visualization, if applicable)*

---

## 📂 Project Structure

```text
Data-Quality-Audit/
│
├── Data/
│   ├── raw_dataset.csv
│   └── cleaned_sample.csv
│
├── Notebook/
│   └── Data_Quality_Audit.ipynb
│
├── Reports/
│   ├── audit_report.csv
│   └── issue_log.csv
│
└── README.md
```

---

## 📊 Data Quality Checks

The audit follows a structured checklist to identify common data problems.

### 1. Missing Value Check

Identify columns containing null or missing values.

```python
missing_values = df.isnull().sum()

missing_percentage = (
    df.isnull().mean() * 100
).round(2)

missing_summary = pd.DataFrame({
    "Missing Count": missing_values,
    "Missing Percentage": missing_percentage
})

missing_summary = missing_summary[
    missing_summary["Missing Count"] > 0
]

print(missing_summary)
```

This helps identify fields that may require:

* Imputation
* Removal
* Additional data collection
* Business validation

---

### 2. Duplicate Record Check

Identify duplicate rows in the dataset.

```python
duplicate_count = df.duplicated().sum()

print("Duplicate Records:", duplicate_count)
```

Duplicate records can lead to:

* Incorrect totals
* Inflated sales
* Incorrect customer counts
* Duplicate transactions
* Misleading analysis

---

### 3. Data Type Validation

Check whether columns contain the expected data types.

```python
print(df.dtypes)
```

Examples:

| Column      | Expected Type |
| ----------- | ------------- |
| Order Date  | Datetime      |
| Sales       | Numeric       |
| Quantity    | Integer       |
| Customer ID | String        |
| Category    | String        |

Incorrect data types can cause calculation and analysis problems.

---

### 4. Range Validation

Check whether numerical values fall within reasonable business ranges.

Example:

```python
invalid_sales = df[df["Sales"] < 0]

print("Invalid Sales Records:", len(invalid_sales))
```

Other possible validation rules include:

```text
Quantity > 0
Sales >= 0
Discount between 0 and 1
Profit should be within a reasonable range
Rating between 1 and 5
```

Range rules should be based on the actual business meaning of the field.

---

### 5. Consistency Check

Check for inconsistent categorical or text values.

For example:

```python
print(df["Category"].unique())
```

Possible inconsistent values:

```text
Technology
technology
TECHNOLOGY
Tech
```

These values may represent the same category but can produce incorrect grouping and reporting.

---

### 6. Whitespace and Formatting Check

Check for unwanted leading or trailing spaces.

```python
df["Category"] = df["Category"].str.strip()
```

For text fields, standardization may also include:

```python
df["Category"] = df["Category"].str.title()
```

---

### 7. Unique Value Validation

Inspect categorical columns to identify unexpected values.

```python
for column in df.select_dtypes(include="object").columns:
    print(f"\n{column}")
    print(df[column].unique())
```

This helps identify spelling errors, unexpected categories, and inconsistent labels.

---

## 🧪 Validation Rules

A repeatable quality checklist can contain rules such as:

| Rule ID | Validation Rule                                     | Issue Type  |
| ------- | --------------------------------------------------- | ----------- |
| DQ001   | Required fields should not be null                  | Missing     |
| DQ002   | Records should be unique                            | Duplicate   |
| DQ003   | Sales should not be negative                        | Range       |
| DQ004   | Quantity should be greater than zero                | Range       |
| DQ005   | Dates should be valid                               | Consistency |
| DQ006   | Category values should follow an approved list      | Consistency |
| DQ007   | Text fields should not contain unnecessary spaces   | Formatting  |
| DQ008   | Numeric columns should contain numeric values       | Data Type   |
| DQ009   | IDs should follow the expected format               | Consistency |
| DQ010   | Percentage fields should remain within valid limits | Range       |

---

## 📈 Quantifying Data Quality Issues

Each issue should be measured rather than simply identified.

For example:

```python
total_records = len(df)

missing_records = df["Sales"].isnull().sum()

missing_percentage = (
    missing_records / total_records
) * 100

print(f"Missing Sales: {missing_records}")
print(f"Missing Percentage: {missing_percentage:.2f}%")
```

This provides a measurable understanding of the severity of the problem.

---

# 📋 Audit Report

The audit report summarizes the overall quality of the dataset.

Example structure:

| Quality Check      | Issue Count | Issue % | Status |
| ------------------ | ----------: | ------: | ------ |
| Missing Values     |           X |      X% | Review |
| Duplicate Records  |           X |      X% | Review |
| Invalid Ranges     |           X |      X% | Review |
| Data Type Issues   |           X |      X% | Review |
| Consistency Issues |           X |      X% | Review |

The report provides a quick overview of the dataset's quality before analysis.

---

# 📝 Issue Log

The issue log records each identified data quality problem.

| Issue ID | Column   | Issue Type  | Description                      | Count | Severity | Action        |
| -------- | -------- | ----------- | -------------------------------- | ----: | -------- | ------------- |
| DQ001    | Sales    | Missing     | Sales value is null              |     X | High     | Investigate   |
| DQ002    | Order ID | Duplicate   | Duplicate transaction found      |     X | High     | Remove/Review |
| DQ003    | Quantity | Range       | Quantity contains invalid values |     X | Medium   | Correct       |
| DQ004    | Category | Consistency | Inconsistent category names      |     X | Medium   | Standardize   |

### Severity Levels

**High**

* Directly affects key business metrics
* Can significantly change analysis results
* Requires immediate investigation

**Medium**

* Can affect specific analyses
* Should be corrected before final reporting

**Low**

* Formatting or minor consistency issues
* Limited analytical impact

---

# 🧹 Cleaned Sample

After identifying issues, a cleaned sample can be created for validation.

Example:

```python
cleaned_df = df.copy()

# Remove duplicate records
cleaned_df = cleaned_df.drop_duplicates()

# Remove unnecessary whitespace
for column in cleaned_df.select_dtypes(include="object").columns:
    cleaned_df[column] = cleaned_df[column].str.strip()
```

Additional cleaning actions should be applied only when they are supported by the data and business rules.

---

# 🔄 Data Quality Audit Workflow

```text
Load Dataset
      ↓
Understand Dataset Structure
      ↓
Create Validation Rules
      ↓
Check Missing Values
      ↓
Check Duplicates
      ↓
Check Data Types
      ↓
Check Value Ranges
      ↓
Check Consistency
      ↓
Quantify Issues
      ↓
Create Issue Log
      ↓
Clean Sample Data
      ↓
Re-run Validation
      ↓
Generate Audit Report
```

---

# 🔁 Repeatable Quality Checklist

The following checklist can be reused for future datasets:

### Dataset Understanding

* [ ] Load dataset
* [ ] Check number of rows and columns
* [ ] Review column names
* [ ] Review data types
* [ ] Understand business meaning of columns

### Missing Values

* [ ] Identify null values
* [ ] Calculate missing percentage
* [ ] Identify critical missing fields
* [ ] Decide whether to remove or impute

### Duplicates

* [ ] Check complete-row duplicates
* [ ] Check duplicate IDs
* [ ] Investigate duplicate transactions

### Range Validation

* [ ] Check minimum values
* [ ] Check maximum values
* [ ] Identify impossible values
* [ ] Validate business limits

### Consistency

* [ ] Check unique categorical values
* [ ] Standardize text formatting
* [ ] Check spelling variations
* [ ] Check date formats

### Final Validation

* [ ] Re-run all quality checks
* [ ] Compare before and after results
* [ ] Create issue log
* [ ] Create audit report
* [ ] Save cleaned sample

---

# 📁 Suggested Datasets

This project can be performed using datasets such as:

### 🛒 Superstore Dataset

Useful for checking:

* Order IDs
* Customer information
* Product categories
* Sales
* Profit
* Quantity
* Discounts
* Dates

### 🏪 Retail Sales Dataset

Useful for checking:

* Transaction IDs
* Customer IDs
* Product information
* Quantity
* Price
* Sales
* Dates
* Customer attributes

---

# 💡 Key Learning Outcomes

Through this project, I practiced:

* Data quality assessment
* Data validation
* Missing-value analysis
* Duplicate detection
* Range validation
* Data consistency checks
* Data cleaning
* Issue documentation
* Quality reporting
* Python and Pandas
* Repeatable data-quality workflows

---

# 🎤 Interview Questions

## 1. What makes a quality rule useful?

A quality rule is useful when it is **clear, measurable, relevant to the business, and repeatable**.

For example:

> "Sales should not be negative."

This is better than a vague rule such as:

> "Sales should look correct."

A good quality rule should clearly define:

* What is being checked
* What is considered valid
* How the issue is measured
* What action should be taken

---

## 2. How do you prioritize data quality issues?

I would prioritize issues based on their **business impact, frequency, and risk**.

For example:

1. Issues affecting important business metrics
2. Issues affecting a large number of records
3. Issues that can lead to incorrect reports or decisions
4. Issues affecting critical fields
5. Minor formatting issues

For example, incorrect sales values would generally require more attention than inconsistent capitalization in a category name.

---

# 🚀 Future Improvements

Possible future improvements include:

* Automated data quality reports
* Data quality scoring
* Automated validation pipelines
* Rule-based anomaly detection
* Email alerts for critical issues
* Power BI data quality dashboard
* Scheduled quality checks
* Integration with ETL pipelines
* Automated issue tracking

---

# 👨‍💻 Author

**Ratnesh Chauhan**

**Data Analyst | Business Analyst | Power BI Developer | Business Intelligence | Data Analytics**

### 🔗 Connect With Me

* GitHub: https://github.com/Ratnesh8577
* LinkedIn: https://www.linkedin.com/in/ratnesh-chauhan-41a113279/
* LeetCode: https://leetcode.com/u/RatneshChauhan279/

---

## ⭐ Project Summary

The **Data Quality Audit** project demonstrates a structured approach to identifying and documenting data quality problems before performing analysis.

The project follows a repeatable process:

**Validate → Quantify → Document → Clean → Revalidate**

This ensures that analytical results are based on data that has been systematically checked for common quality issues.

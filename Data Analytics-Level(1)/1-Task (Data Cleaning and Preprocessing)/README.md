# 🌍 World Happiness Report 2026 — Data Cleaning & Preprocessing

## 📌 Project Overview

This project focuses on **data cleaning and preprocessing of the World Happiness Update Report 2026 dataset**.

The objective is to inspect a raw country-level dataset, identify potential data-quality issues, verify data types and consistency, and prepare the dataset for reliable analysis.

This project was completed as part of the **Data Analytics Track — Level 1, Day 1: Data Cleaning and Preprocessing**.

---

## 🎯 Objective

The primary objective is to learn and demonstrate how to:

* Inspect a raw dataset
* Identify missing values
* Detect duplicate records
* Verify and correct data types
* Standardize text and column formats
* Validate numerical data
* Document data-cleaning decisions
* Produce an analysis-ready dataset

---

## 📊 Dataset Overview

The dataset contains country-level happiness rankings and scores from the **World Happiness Update Report 2026**.

It contains information for **147 countries** and includes an overall happiness score along with six explanatory factors related to economic prosperity, social support, health, freedom, generosity, and perceived corruption.

The happiness measurements are based on data averaged over the **2023–2025 period**.

### Dataset Dimensions

| Property         | Value |
| ---------------- | ----: |
| Countries / Rows |   147 |
| Columns          |     9 |
| Missing Values   |     0 |
| Duplicate Rows   |     0 |

---

## 📋 Dataset Columns

| Column                    | Description                                  |
| ------------------------- | -------------------------------------------- |
| `rank`                    | Country's happiness ranking                  |
| `country`                 | Country name                                 |
| `gdp_per_capita`          | Indicator representing economic prosperity   |
| `social_support`          | Indicator representing social support        |
| `healthy_life_expectancy` | Indicator related to healthy life expectancy |
| `freedom`                 | Freedom to make life choices                 |
| `generosity`              | Generosity indicator                         |
| `corruption`              | Perceived corruption indicator               |
| `score`                   | Overall happiness score                      |

---

## 🛠️ Tools & Technologies

* **Python**
* **Pandas**
* **Excel**
* **Jupyter Notebook**
* **Git & GitHub**

---

## 🔍 Initial Data Inspection

The dataset was first inspected before applying any cleaning operations.

The following Pandas functions were used:

```python
df.info()
df.isnull().sum()
df.duplicated().sum()
df.shape
df.head()
df.describe()
```

These checks were used to understand:

* Dataset size
* Column names
* Data types
* Missing values
* Duplicate records
* Numerical distributions
* Initial data quality

---

## 🧪 Data Quality Assessment

### 1. Missing Values

Missing values were checked across all columns using:

```python
df.isnull().sum()
```

### Result

**No missing values were found.**

All 147 records contain values for every column.

Therefore, no rows were dropped and no imputation technique was required.

---

### 2. Duplicate Records

Duplicate rows were checked using:

```python
df.duplicated().sum()
```

### Result

**0 duplicate rows were found.**

Therefore, no records needed to be removed because of full-row duplication.

---

### 3. Data Types

The dataset was inspected using:

```python
df.info()
```

The columns were verified to ensure that ranking and numerical indicators were stored in appropriate numerical formats, while country names were stored as text.

---

### 4. Text Consistency

The `country` column was checked for unnecessary whitespace and inconsistent formatting.

A standardization procedure can be applied using:

```python
df["country"] = df["country"].str.strip()
```

This ensures that country names do not contain unnecessary leading or trailing spaces.

---

### 5. Numerical Data Validation

Numerical columns were reviewed for invalid or unexpected values.

```python
numeric_columns = [
    "rank",
    "gdp_per_capita",
    "social_support",
    "healthy_life_expectancy",
    "freedom",
    "generosity",
    "corruption",
    "score"
]

df[numeric_columns].describe()
```

This helps identify potential anomalies, unexpected ranges, or incorrectly entered values.

---

## 🧹 Data Cleaning Process

The cleaning workflow followed these stages:

```text
Raw Dataset
     ↓
Initial Inspection
     ↓
Missing Value Check
     ↓
Duplicate Check
     ↓
Data Type Verification
     ↓
Text Standardization
     ↓
Numerical Validation
     ↓
Final Quality Check
     ↓
Cleaned Dataset
```

---

## 📝 Change Log

| Issue Checked            | Column(s)         | Finding                              | Action                             |
| ------------------------ | ----------------- | ------------------------------------ | ---------------------------------- |
| Missing values           | All columns       | No missing values                    | No action required                 |
| Duplicate rows           | All columns       | 0 duplicates                         | No action required                 |
| Text whitespace          | `country`         | Checked for formatting consistency   | Standardized using `.str.strip()`  |
| Data types               | Numerical columns | Verified numerical format            | Converted/corrected where required |
| Invalid numerical values | Numerical columns | Checked using descriptive statistics | Validated                          |
| Column naming            | All columns       | Verified consistent naming           | Standardized where necessary       |

> **Note:** Since the supplied dataset already has 0 missing values and 0 duplicate rows, cleaning was primarily focused on **validation, consistency, and preprocessing rather than aggressive data modification**.

---

## 💻 Python Implementation

### Import Dataset

```python
import pandas as pd

df = pd.read_csv("world_happiness_Update_report_2026.csv")
```

### Initial Inspection

```python
print("Shape:", df.shape)

df.head()
```

### Dataset Information

```python
df.info()
```

### Missing Value Check

```python
df.isnull().sum()
```

### Duplicate Check

```python
print("Duplicate rows:", df.duplicated().sum())
```

### Standardize Country Names

```python
df["country"] = df["country"].str.strip()
```

### Verify Numerical Columns

```python
numeric_columns = [
    "rank",
    "gdp_per_capita",
    "social_support",
    "healthy_life_expectancy",
    "freedom",
    "generosity",
    "corruption",
    "score"
]

df[numeric_columns] = df[numeric_columns].apply(
    pd.to_numeric,
    errors="coerce"
)
```

### Final Validation

```python
print("Final Shape:", df.shape)
print("Missing Values:")
print(df.isnull().sum())

print("Duplicate Rows:", df.duplicated().sum())

print("\nData Types:")
print(df.dtypes)
```

### Export Cleaned Dataset

```python
df.to_csv("world_happiness_2026_cleaned.csv", index=False)
```

---

## ✅ Before vs After Validation

| Quality Check      | Before Cleaning | After Cleaning |
| ------------------ | --------------: | -------------: |
| Rows               |             147 |            147 |
| Columns            |               9 |              9 |
| Missing Values     |               0 |              0 |
| Duplicate Rows     |               0 |              0 |
| Country Formatting |         Checked |   Standardized |
| Numerical Data     |        Verified |      Validated |

The number of records remained unchanged because there were no missing or duplicate records requiring removal.

---

## 📈 Outcome

The World Happiness dataset was successfully inspected, validated, and prepared for further analytical work.

The final dataset contains:

* **147 countries**
* **9 analytical columns**
* **0 missing values**
* **0 duplicate rows**
* Verified numerical fields
* Standardized country text formatting

The cleaned dataset is now ready for **Exploratory Data Analysis (EDA), correlation analysis, visualization, and further statistical analysis**.

---

## 💡 Key Learnings

This project demonstrated that data cleaning is not always about removing or changing data.

A good preprocessing workflow begins with **profiling and understanding the dataset**.

Key learnings include:

* Always inspect data before modifying it.
* Missing values should be handled according to the context of each column.
* Duplicate records should be checked before analysis.
* Data types must be appropriate for the intended analysis.
* Text formatting should be standardized.
* Validation should be performed again after cleaning.
* If no major quality issues exist, unnecessary transformations should be avoided.

---

## 🎤 Interview Questions & Answers

### 1. How do you decide whether to drop or impute a missing value?

I consider the percentage of missing values, the importance of the column, the data type, and the reason the values are missing. Numerical values can sometimes be imputed using the median or mean, while categorical values can be replaced with the mode or an `Unknown` category. If only a small number of records are missing and they are not important, dropping them may also be appropriate.

### 2. What's the difference between a duplicate row and a duplicate key?

A duplicate row means the complete record appears more than once. A duplicate key occurs when a column that is expected to uniquely identify a record contains repeated values, even if the remaining information differs.

### 3. How would you handle outliers differently from missing values?

Missing values represent unavailable information, whereas outliers are existing observations that are unusually high or low. Missing values may require imputation or removal, while outliers should first be investigated to determine whether they are genuine observations or data-entry errors.

### 4. How would you validate that a dataset is clean before starting analysis?

I would check:

* Missing values
* Duplicate records
* Data types
* Unique categorical values
* Invalid values
* Formatting consistency
* Numerical ranges
* Logical relationships between columns

I would also compare the dataset before and after preprocessing to make sure that no important information was unintentionally removed.

---

## 📁 Project Structure

```text
Day-01-Data-Cleaning-Preprocessing/
│
├── data/
│   ├── world_happiness_Update_report_2026.csv
│   └── world_happiness_2026_cleaned.csv
│
├── notebooks/
│   └── Day_01_Data_Cleaning_Preprocessing.ipynb
│
├── reports/
│   ├── data_quality_report.md
│   └── change_log.csv
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## 🚀 Future Scope

The cleaned dataset can be used for:

* Exploratory Data Analysis
* Happiness score comparison by country
* Correlation analysis
* GDP vs happiness analysis
* Social support vs happiness analysis
* Freedom vs happiness analysis
* Generosity analysis
* Country ranking visualization
* Geospatial visualization
* Predictive modeling

---

## 📌 Submission Requirements

This project follows the internship submission requirements:

* ✅ Cleaned dataset
* ✅ Data-cleaning notebook
* ✅ Change log
* ✅ Data-quality report
* ✅ README documentation
* ✅ GitHub repository
* ✅ LinkedIn project sharing

For deployment and rollback evidence, this project is a **data preprocessing project rather than a deployed application**, so deployment configuration is not applicable unless the internship portal specifically requires a deployment artifact.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

### Data Analytics Track — Level 1, Day 1

**Skills:**
`Python` `Pandas` `Excel` `Data Cleaning` `Data Preprocessing` `Data Validation` `Jupyter Notebook` `GitHub`

---

## ⭐ Conclusion

The **World Happiness Update Report 2026** dataset was systematically inspected and prepared for reliable analysis.

The project demonstrates a complete data-quality workflow:

**Inspect → Identify → Clean → Validate → Document → Export**

The resulting dataset is ready for the next stage of the analytics workflow: **Exploratory Data Analysis (EDA)**.

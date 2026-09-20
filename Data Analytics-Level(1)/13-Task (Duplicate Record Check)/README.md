# 🔍 Duplicate Record Check — Sample Superstore

## 📌 Project Overview

This project focuses on identifying and removing **duplicate records** from the Sample Superstore dataset using **Python and Pandas**.

The main objective is to understand how duplicate records can be detected, analyzed, documented, and removed while preserving the original data.

---

## 🎯 Objective

* Identify duplicate records in the dataset.
* Check duplicates across the **full row**.
* Check duplicates using important **key columns**.
* Analyze the number and percentage of duplicate records.
* Create a duplicate report.
* Remove unnecessary duplicate records.
* Create a cleaned copy of the dataset.
* Maintain an audit note for the cleaning process.
* Verify that no exact duplicates remain after cleaning.

---

## 🛠️ Tools & Technologies

* 🐍 Python
* 🐼 Pandas
* 📊 Matplotlib
* 📓 Jupyter Notebook
* 📁 CSV

---

## 📂 Dataset

**Dataset:** Sample Superstore

The dataset contains information related to orders, customers, products, locations, sales, and other business-related fields.

### Dataset Size

| Metric                    | Value |
| ------------------------- | ----: |
| Original Records          | 9,994 |
| Columns                   |    13 |
| Duplicate Groups          |    17 |
| Duplicate Records Removed |    17 |
| Duplicate Percentage      | 0.17% |
| Cleaned Records           | 9,977 |

---

## 🔎 Duplicate Detection

The analysis checked duplicate records using the complete row.

```python
duplicate_count = df.duplicated().sum()

print("Total duplicate records:", duplicate_count)
```

### Result

```text
Total duplicate records: 17
```

To display both the original and duplicate copies:

```python
duplicates = df[df.duplicated(keep=False)]

duplicates
```

This identified **34 rows belonging to duplicate groups**, representing **17 extra duplicate records**.

---

## 🔑 Key Column Analysis

Important columns were also checked for repeated values, including:

* `Order ID`
* `Product ID`
* `Customer ID`

Repeated values in these columns do not automatically indicate an error because the same customer or product can legitimately appear in multiple transactions.

Therefore, **full-row matching** was used as the primary rule for identifying exact duplicate records.

---

## 📊 Duplicate Percentage

The duplicate percentage was calculated using:

```python
duplicate_percentage = (
    df.duplicated().sum() / len(df)
) * 100

print(f"Duplicate Percentage: {duplicate_percentage:.3f}%")
```

### Result

**Duplicate Percentage = 0.170%**

This indicates that duplicate records represent only a very small portion of the dataset.

---

## 🧹 Data Cleaning

Exact duplicate records were removed using:

```python
cleaned_df = df.drop_duplicates(keep="first")
```

The first occurrence of each duplicate was retained, while additional identical copies were removed.

### Cleaning Result

```text
Original Records : 9,994
Records Removed  : 17
Cleaned Records  : 9,977
```

---

## ✅ Verification

After removing duplicates, the dataset was checked again:

```python
remaining_duplicates = cleaned_df.duplicated().sum()

print("Remaining duplicates:", remaining_duplicates)
```

### Result

```text
Remaining duplicates: 0
```

Therefore, no exact full-row duplicates remained in the cleaned dataset.

---

## 📈 Graph Analysis

The following graphs were created to understand the duplicate records:

### 1. Unique vs Duplicate Records

Shows the difference between unique records and duplicate records.

### 2. Unique vs Duplicate Percentage

Shows the proportion of duplicate records in the complete dataset.

### 3. Duplicate Groups

Shows the number of records present in each duplicate group.

### 4. Original vs Cleaned Dataset

Compares the number of records before and after duplicate removal.

### 5. Duplicate Removal Impact

Shows the percentage of records retained and removed during cleaning.

---

## 📋 Deliverables

The project produces the following files:

| File                                    | Description                                     |
| --------------------------------------- | ----------------------------------------------- |
| `SampleSuperstore_Cleaned.csv`          | Cleaned dataset with duplicates removed         |
| `SampleSuperstore_Duplicate_Report.csv` | Report containing duplicate records             |
| `SampleSuperstore_Audit_Note.csv`       | Documentation of the duplicate-cleaning process |

---

## 📝 Audit Note

The audit process follows these rules:

* **Detection rule:** All columns must match exactly.
* **Duplicate handling:** Keep the first occurrence.
* **Removal:** Remove subsequent identical copies.
* **Original data:** Values are not modified.
* **Verification:** Check the cleaned dataset again for duplicates.

---

## 💻 Project Workflow

```text
Load Dataset
     ↓
Check Dataset Structure
     ↓
Check Full-Row Duplicates
     ↓
Identify Duplicate Records
     ↓
Check Key Columns
     ↓
Calculate Duplicate Percentage
     ↓
Create Duplicate Report
     ↓
Remove Exact Duplicates
     ↓
Save Cleaned Dataset
     ↓
Verify Remaining Duplicates
     ↓
Create Audit Note
```

---

## 📌 Key Findings

* The dataset contains **9,994 records**.
* There are **13 columns**.
* **17 exact duplicate records** were identified.
* **17 duplicate groups** were found.
* Duplicate records represent approximately **0.17%** of the dataset.
* **17 extra records** were removed.
* The cleaned dataset contains **9,977 records**.
* No exact duplicate records remain after cleaning.

---

## 🏁 Conclusion

The **Duplicate Record Check** was successfully completed using Python and Pandas. The analysis identified and documented **17 exact duplicate records** in the Sample Superstore dataset.

After removing the unnecessary duplicate copies, the dataset was reduced from **9,994 to 9,977 records**. A final verification confirmed that **no exact duplicates remained**.

The cleaned dataset and supporting duplicate report provide a reliable starting point for further **Exploratory Data Analysis (EDA)** and business analysis.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

**Skills Used:** • Excel • Python • Pandas • Data Cleaning • Data Analysis • Matplotlib • Jupyter Notebook

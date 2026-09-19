# 🧹 Missing Value Identification & Data Cleaning

## 📌 Project Overview

This project focuses on identifying and handling **missing values and duplicate records** in the Titanic dataset using Python and Pandas. The analysis examines where missing data occurs, measures the amount of missing information, and applies suitable data-cleaning techniques without unnecessarily removing useful records.

The cleaned dataset can then be used for further **Exploratory Data Analysis (EDA), visualization, and machine learning**.

---

## 🎯 Objective

The main objectives of this project are:

* Identify missing values in the dataset.
* Count missing values by column.
* Calculate the percentage of missing values.
* Identify rows containing missing values.
* Analyze columns with high and low missingness.
* Identify duplicate records.
* Remove duplicate rows.
* Handle missing values using appropriate methods.
* Verify that the cleaned dataset contains no missing values or duplicate rows.
* Prepare the dataset for further analysis.

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

The project uses the **Titanic dataset** containing passenger information.

### Dataset Dimensions

* **Rows:** 891
* **Columns:** 12
* **Total Cells:** 10,692

### Main Columns

| Column        | Description                            |
| ------------- | -------------------------------------- |
| `PassengerId` | Unique passenger identification number |
| `Survived`    | Survival status                        |
| `Pclass`      | Passenger class                        |
| `Name`        | Passenger name                         |
| `Sex`         | Passenger gender                       |
| `Age`         | Passenger age                          |
| `SibSp`       | Number of siblings/spouses aboard      |
| `Parch`       | Number of parents/children aboard      |
| `Ticket`      | Ticket number                          |
| `Fare`        | Passenger fare                         |
| `Cabin`       | Cabin information                      |
| `Embarked`    | Port of embarkation                    |

---

## 🔍 Missing Value Analysis

The initial analysis identified missing values in three columns:

| Column     | Missing Values | Missing % |
| ---------- | -------------: | --------: |
| `Age`      |            177 |    19.87% |
| `Cabin`    |            687 |    77.10% |
| `Embarked` |              2 |     0.22% |

### Key Findings

* `Cabin` had the highest missing-value percentage.
* `Age` had a moderate amount of missing data.
* `Embarked` had only two missing records.
* The remaining columns contained no missing values.
* Overall, the dataset contained **866 missing cells**.

---

## 🧹 Data Cleaning

Different methods were used depending on the type and amount of missing data.

### 1. Age

Missing `Age` values were replaced with the **median age**.

```python
df["Age"] = df["Age"].fillna(df["Age"].median())
```

The median was selected because it is less affected by extreme values than the mean.

### 2. Embarked

Missing `Embarked` values were replaced with the **mode**, which represents the most frequently occurring category.

```python
df["Embarked"] = df["Embarked"].fillna(
    df["Embarked"].mode()[0]
)
```

### 3. Cabin

Because a large proportion of `Cabin` values were missing, the missing entries were labeled as `Unknown` rather than inventing cabin numbers.

```python
df["Cabin"] = df["Cabin"].fillna("Unknown")
```

---

## 🔄 Duplicate Value Analysis

Duplicate records were checked before cleaning.

```python
duplicate_count = df.duplicated().sum()

print("Duplicate Rows:", duplicate_count)
```

Duplicate rows were removed using:

```python
df = df.drop_duplicates()
```

The dataset was then checked again to verify that duplicate records had been removed.

---

## 📊 Missing Value Visualizations

The project includes visual analysis such as:

* Missing-value bar chart
* Missing-percentage chart
* Missing-value heatmap
* Missing vs. available values comparison

Example:

```python
sns.heatmap(
    df.isnull(),
    cbar=False,
    yticklabels=False
)

plt.title("Missing Values Heatmap")
plt.show()
```

---

## ✅ Data Validation After Cleaning

After handling missing values and duplicate records, the dataset was checked again.

```python
print("Missing Values:")
print(df.isnull().sum())

print("\nDuplicate Rows:")
print(df.duplicated().sum())
```

### Expected Result

```text
Missing Values: 0
Duplicate Rows: 0
```

---

## 📈 Key Insights

1. The Titanic dataset originally contained **891 records and 12 columns**.
2. Missing values were present in `Age`, `Cabin`, and `Embarked`.
3. `Cabin` had the highest missing percentage at **77.10%**.
4. `Age` had **177 missing values**, representing **19.87%** of records.
5. Only **2 Embarked values** were missing.
6. Missing values were handled according to the nature of each column.
7. Duplicate records were identified and removed.
8. The cleaned dataset contains no remaining missing values.
9. The cleaned dataset is ready for further EDA and visualization.

---

## 📝 Conclusion

The Titanic dataset was successfully inspected and cleaned using Python and Pandas. Missing values were identified and handled using suitable methods: median imputation for `Age`, mode imputation for `Embarked`, and an `Unknown` category for missing `Cabin` information. Duplicate records were also checked and removed. The final dataset is more consistent and suitable for further **exploratory data analysis, visualization, and machine-learning tasks**.

---

## 🚀 Future Analysis

After completing the data-cleaning process, the dataset can be used for:

* 📊 Exploratory Data Analysis
* 📈 Data Visualization
* 👥 Passenger Demographic Analysis
* 🚢 Survival Analysis
* 💰 Fare Analysis
* 🎫 Passenger Class Analysis
* 🤖 Machine Learning
* 📉 Survival Prediction

---

## 👨‍💻 Author

**Ratnesh Chauhan**

**Focus:** Data Analytics | Python | SQL | Power BI | Business Intelligence

---

⭐ If you find this project useful, consider giving the repository a star!

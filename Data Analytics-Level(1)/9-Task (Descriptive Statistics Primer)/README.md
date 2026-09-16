# 🚢 Titanic Dataset — Descriptive Statistics & Data Visualization

## 📌 Project Overview

This project performs **descriptive statistical analysis and exploratory data analysis (EDA)** on the Titanic dataset using Python. The main objective is to understand the distribution, central tendency, spread, relationships, and patterns within important passenger-related variables. The analysis uses statistical measures such as **mean, median, mode, standard deviation, percentiles, minimum, maximum, and interquartile range (IQR)** along with colourful visualizations to make the results easier to understand.

---

## 📊 About the Dataset

The Titanic dataset contains information about **891 passengers and 12 columns** who travelled on the RMS Titanic. It includes passenger ID, survival status, passenger class, name, gender, age, number of siblings or spouses, number of parents or children, ticket number, fare, cabin, and embarkation port. The dataset contains both numerical and categorical variables, making it useful for learning **Data Analysis, Descriptive Statistics, and Data Visualization**. Missing values are present in the `Age`, `Cabin`, and `Embarked` columns.

---

## 🎯 Objective

The primary objective of this project is to build intuition about descriptive statistics and understand what different statistical measures reveal about a dataset.

### Key objectives:

* Calculate and interpret **Mean**
* Calculate and interpret **Median**
* Identify the **Mode**
* Calculate **Standard Deviation**
* Analyze **Percentiles**
* Calculate **Interquartile Range (IQR)**
* Compare **Mean vs Median** to identify skewness
* Understand the spread of numerical variables
* Identify potential outliers using boxplots
* Analyze relationships between variables
* Create visualizations to communicate insights

---

## 🛠️ Technologies & Libraries

* 🐍 Python
* 🐼 Pandas
* 🔢 NumPy
* 📊 Matplotlib
* 📓 Jupyter Notebook

---

## 📁 Project Structure

```text
Titanic-Descriptive-Statistics/
│
├── titanic.csv
├── Titanic_Descriptive_Statistics.ipynb
└── README.md
```

---

## 🔍 Dataset Information

| Property            | Details    |
| ------------------- | ---------- |
| Rows                | 891        |
| Columns             | 12         |
| Numerical Columns   | 7          |
| Categorical Columns | 5          |
| Target Variable     | `Survived` |
| File Format         | CSV        |

---

## 📋 Column Description

| Column        | Description                                             |
| ------------- | ------------------------------------------------------- |
| `PassengerId` | Unique passenger identification number                  |
| `Survived`    | Survival status: `0 = Did Not Survive`, `1 = Survived`  |
| `Pclass`      | Passenger class: `1 = First`, `2 = Second`, `3 = Third` |
| `Name`        | Passenger name                                          |
| `Sex`         | Passenger gender                                        |
| `Age`         | Passenger age                                           |
| `SibSp`       | Number of siblings/spouses aboard                       |
| `Parch`       | Number of parents/children aboard                       |
| `Ticket`      | Passenger ticket number                                 |
| `Fare`        | Passenger fare                                          |
| `Cabin`       | Passenger cabin number                                  |
| `Embarked`    | Port where passenger boarded                            |

---

## ⚠️ Missing Value Analysis

The dataset contains missing values in three columns:

| Column     | Missing Values | Percentage |
| ---------- | -------------: | ---------: |
| `Age`      |            177 |     19.87% |
| `Cabin`    |            687 |     77.10% |
| `Embarked` |              2 |      0.22% |

For the descriptive-statistics analysis, missing `Age` values are not artificially filled. Pandas automatically ignores `NaN` values while calculating most statistical measures.

---

# 📈 Descriptive Statistics

The following key numerical variables are analyzed:

```python
numeric_columns = [
    "Age",
    "Fare",
    "SibSp",
    "Parch",
    "Pclass"
]
```

### Summary Statistics

| Variable |  Mean | Median | Std. Dev. |    Q1 |    Q3 |   IQR |
| -------- | ----: | -----: | --------: | ----: | ----: | ----: |
| Age      | 29.70 |  28.00 |     14.53 | 20.12 | 38.00 | 17.88 |
| Fare     | 32.20 |  14.45 |     49.69 |  7.91 | 31.00 | 23.09 |
| SibSp    |  0.52 |   0.00 |      1.10 |  0.00 |  1.00 |  1.00 |
| Parch    |  0.38 |   0.00 |      0.81 |  0.00 |  0.00 |  0.00 |
| Pclass   |  2.31 |   3.00 |      0.84 |  1.00 |  3.00 |  2.00 |

> **Note:** Age statistics are calculated using the 714 available age observations.

---

# 📊 20 Data Analyses & Visualizations

## 1️⃣ Survival Count

A bar chart compares the number of passengers who survived with those who did not.

**Insight:** 549 passengers did not survive, while 342 survived.

---

## 2️⃣ Survival Percentage

A pie chart shows the percentage distribution of survival status.

**Insight:** Approximately **38.38% survived**, while **61.62% did not survive**.

---

## 3️⃣ Passenger Class Distribution

A bar chart displays the number of passengers in each passenger class.

**Insight:** Third class contains the largest number of passengers.

---

## 4️⃣ Survival by Passenger Class

A grouped bar chart compares survivors and non-survivors across passenger classes.

**Insight:** The number of non-survivors is particularly high among third-class passengers.

---

## 5️⃣ Survival Rate by Passenger Class

This visualization calculates the percentage of passengers who survived within each class.

| Class | Survival Rate |
| ----- | ------------: |
| 1st   |        62.96% |
| 2nd   |        47.28% |
| 3rd   |        24.24% |

**Insight:** The observed survival rates vary substantially by passenger class.

---

## 6️⃣ Gender Distribution

A bar chart compares the number of male and female passengers.

**Insight:** The dataset contains more male passengers than female passengers.

---

## 7️⃣ Survival by Gender

This visualization compares survival outcomes between male and female passengers.

**Insight:** The number of female survivors was substantially higher than female non-survivors, while male non-survivors substantially outnumbered male survivors.

---

## 8️⃣ Survival Rate by Gender

The survival percentage is calculated separately for each gender.

| Gender | Survival Rate |
| ------ | ------------: |
| Female |        74.20% |
| Male   |        18.89% |

**Insight:** There is a substantial difference in observed survival rates between the two groups.

---

## 9️⃣ Age Distribution

A histogram displays the distribution of passenger ages.

**Insight:** Most recorded ages are concentrated approximately between 20 and 40 years.

---

## 🔟 Fare Distribution

A histogram shows how passenger fares are distributed.

**Insight:** Most fares are relatively low, while a small number of very high fares create a strong right-skewed distribution.

---

## 1️⃣1️⃣ Age Boxplot

A boxplot is used to understand the spread and potential outliers of passenger age.

**Insight:** The median age is approximately **28 years**, with some observations at the upper end of the age distribution.

---

## 1️⃣2️⃣ Fare Boxplot

A boxplot visualizes the distribution and extreme values of passenger fares.

**Insight:** Fare contains several high-value observations. The mean fare is considerably higher than the median, indicating strong right skew.

---

## 1️⃣3️⃣ Average Age by Passenger Class

Average passenger age is compared across passenger classes.

| Class | Average Age |
| ----- | ----------: |
| 1st   |       38.23 |
| 2nd   |       29.88 |
| 3rd   |       25.14 |

**Insight:** The average recorded age decreases across the passenger classes.

---

## 1️⃣4️⃣ Average Fare by Passenger Class

Average fare is compared across passenger classes.

| Class | Average Fare |
| ----- | -----------: |
| 1st   |        84.15 |
| 2nd   |        20.66 |
| 3rd   |        13.68 |

**Insight:** First-class passengers had a substantially higher average fare.

---

## 1️⃣5️⃣ Family Size Distribution

Family size is calculated using:

```python
df["FamilySize"] = df["SibSp"] + df["Parch"] + 1
```

A bar chart shows the distribution of family sizes.

**Insight:** A family size of 1 is the most common, indicating many passengers travelled without another family member represented by `SibSp` or `Parch`.

---

## 1️⃣6️⃣ Survival Rate by Family Size

A line chart compares survival rates across different family sizes.

**Insight:** Survival rates vary across family sizes. Rates for very large family groups should be interpreted cautiously because they contain relatively few observations.

---

## 1️⃣7️⃣ Siblings/Spouses Aboard

The `SibSp` variable is visualized using a bar chart.

**Insight:** `SibSp = 0` is the most common value, indicating that most passengers had no sibling or spouse aboard.

---

## 1️⃣8️⃣ Parents/Children Aboard

The `Parch` variable is visualized using a bar chart.

**Insight:** `Parch = 0` is overwhelmingly the most common value.

---

## 1️⃣9️⃣ Fare vs Age

A scatter plot compares passenger age with fare.

**Insight:** Most passengers are concentrated at relatively low fare values, while a small number of high-fare observations appear as extreme points.

---

## 2️⃣0️⃣ Correlation Heatmap

A correlation heatmap is used to examine relationships between important numerical variables.

Important correlations include:

| Variables             | Correlation |
| --------------------- | ----------: |
| `Survived` – `Pclass` |       -0.34 |
| `Survived` – `Fare`   |        0.26 |
| `Survived` – `Age`    |       -0.08 |
| `Pclass` – `Fare`     |       -0.55 |
| `Age` – `Pclass`      |       -0.37 |
| `SibSp` – `Parch`     |        0.41 |

**Insight:** The correlation between `Pclass` and `Fare` is moderately negative. `Pclass` also has a negative association with `Survived`. Correlation indicates association and does not establish causation.

---

# 📐 Understanding Descriptive Statistics

## Mean

The **mean** represents the average value of a numerical variable.

```python
df["Age"].mean()
```

It is useful when the distribution is reasonably balanced but can be affected by extreme values.

---

## Median

The **median** is the middle value after sorting the observations.

```python
df["Age"].median()
```

Median is particularly useful when the data contains outliers or is strongly skewed.

---

## Mode

The **mode** is the most frequently occurring value.

```python
df["Age"].mode()
```

It is especially useful for identifying the most common value or category.

---

## Standard Deviation

Standard deviation measures how much observations vary around the mean.

```python
df["Age"].std()
```

Standard deviation should always be considered together with the mean because the same standard deviation can represent very different levels of variability depending on the scale of the data.

---

## Percentiles

Percentiles help understand where observations fall within a distribution.

```python
df["Age"].quantile(0.25)
df["Age"].quantile(0.50)
df["Age"].quantile(0.75)
```

* **25th percentile (Q1)** → 25% of observations are at or below this value.
* **50th percentile (Q2)** → Median.
* **75th percentile (Q3)** → 75% of observations are at or below this value.

---

## IQR

The Interquartile Range measures the spread of the middle 50% of observations.

```python
IQR = Q3 - Q1
```

For example, the Fare IQR is approximately:

```text
31.00 - 7.91 = 23.09
```

---

# 📌 Mean vs Median and Skewness

A useful way to identify skewness is to compare the mean and median:

```text
Mean ≈ Median
       ↓
Approximately Symmetric

Mean > Median
       ↓
Right / Positive Skew

Mean < Median
       ↓
Left / Negative Skew
```

### Titanic Dataset

* **Age:** Mean > Median → slight right skew.
* **Fare:** Mean >> Median → strong right skew.
* **SibSp:** Mean > Median → concentrated around zero with a right tail.
* **Parch:** Mean > Median → concentrated around zero with a right tail.

The difference between the mean and median is especially noticeable for **Fare**, showing the influence of high-fare observations.

---

# 💡 Key Insights

1. The dataset contains **891 passenger records**.
2. There are **12 variables** describing passenger information.
3. `Age` contains **177 missing values**.
4. `Cabin` contains **687 missing values**.
5. `Embarked` contains only **2 missing values**.
6. **38.38%** of passengers survived.
7. **61.62%** did not survive.
8. Third class has the largest number of passengers.
9. The observed survival rate varies substantially across passenger classes.
10. The observed survival rate also differs substantially between male and female passengers.
11. Fare is strongly right-skewed.
12. The mean Fare is substantially higher than its median.
13. Most passengers had no sibling or spouse aboard.
14. Most passengers had no parent or child aboard.
15. First-class passengers had the highest average fare.
16. First-class passengers also had the highest average recorded age.
17. Many passengers travelled alone according to the `FamilySize` definition used.
18. Family-size survival rates vary, but large-family groups contain fewer observations.
19. High-fare observations appear as potential outliers.
20. Correlation analysis reveals associations among passenger class, fare, age, family variables, and survival.

---

# 🎨 Visualization Techniques Used

The project uses multiple visualization techniques:

```text
📊 Bar Chart
🥧 Pie Chart
📈 Line Chart
📉 Histogram
📦 Boxplot
🔵 Scatter Plot
🔥 Correlation Heatmap
```

These graphs help transform numerical statistics into easily understandable visual patterns.

---

# 📚 Key Learning Outcomes

Through this project, I learned how to:

* Load datasets using Pandas
* Inspect rows, columns, and data types
* Identify missing values
* Select numerical variables
* Calculate descriptive statistics
* Understand mean, median, and mode
* Interpret standard deviation
* Use percentiles and IQR
* Detect skewness
* Identify potential outliers
* Perform group-wise analysis using `groupby()`
* Create multiple types of visualizations
* Analyze correlations
* Communicate data-driven insights

---

# 🏁 Conclusion

The Titanic dataset provides a practical example of how **descriptive statistics and visualization can be used to understand real-world data**. Comparing the mean and median helps identify skewness, while standard deviation and IQR provide information about data spread. Percentiles help describe the middle portion of the distribution, and boxplots help identify potential outliers. The additional survival, passenger-class, gender, family-size, and correlation analyses provide deeper exploratory insights into the dataset. Overall, this project demonstrates a complete workflow from **data understanding and statistical analysis to visualization and insight generation**.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

### Skills Demonstrated

`Python` • `Pandas` • `NumPy` • `Matplotlib` • `EDA` • `Descriptive Statistics` • `Data Visualization` • `Data Analysis`

# 📊 First Chart Story: Turning Numbers into a Narrative

## 📌 About

This project focuses on **data visualization and storytelling** using the **World Happiness Update Report 2026** dataset.

The goal is to convert numerical data into meaningful visual stories using different types of charts such as **Bar Charts, Line Charts, Pie Charts, Scatter Plots, and Heatmaps**.

Each visualization answers a specific analytical question and provides a simple takeaway that helps understand differences in happiness across countries.

---

## 🎯 Objective

The main objectives of this project are:

* Analyze happiness scores across different countries.
* Identify the happiest countries.
* Compare **GDP per capita** with happiness scores.
* Study the relationship between **social support** and happiness.
* Analyze the relationship between **healthy life expectancy** and happiness.
* Understand correlations between important happiness factors.
* Categorize countries according to their happiness levels.
* Select the appropriate chart for different analytical questions.
* Practice creating clear and meaningful visualizations.
* Turn numerical results into an understandable data story.

---

## 📂 Dataset

**Dataset:** World Happiness Update Report 2026

The dataset contains information about countries and several factors related to their happiness.

### Important Columns

| Column                    | Description                      |
| ------------------------- | -------------------------------- |
| `rank`                    | Happiness ranking of the country |
| `country`                 | Name of the country              |
| `score`                   | Overall happiness score          |
| `gdp_per_capita`          | GDP per capita                   |
| `social_support`          | Level of social support          |
| `healthy_life_expectancy` | Healthy life expectancy          |

---

## 🛠️ Technologies Used

* 🐍 **Python**
* 📊 **Pandas**
* 🔢 **NumPy**
* 📈 **Matplotlib**
* 🎨 **Seaborn**
* 📓 **Jupyter Notebook**

---

# 📊 Data Visualizations

## 1️⃣ Top 10 Happiest Countries — Bar Chart

### Question

**Which countries have the highest happiness scores?**

A bar chart is used to compare the happiness scores of the top 10 countries.

### Takeaway

The chart clearly identifies the countries with the highest overall happiness scores.

---

## 2️⃣ Top 10 Countries by GDP per Capita — Bar Chart

### Question

**Which countries have the highest GDP per capita?**

A bar chart is used to compare the economic strength of the selected countries.

### Takeaway

The visualization highlights countries with the highest GDP per capita and helps compare economic conditions.

---

## 3️⃣ Happiness Score Across Top 20 Countries — Line Chart

### Question

**How does the happiness score change as the country ranking increases?**

A line chart is used to show the trend in happiness scores across the top 20 ranked countries.

### Takeaway

Happiness scores generally decrease as the ranking number increases.

---

## 4️⃣ Countries by Happiness Level — Pie Chart

### Question

**How are countries distributed across different happiness levels?**

Countries are grouped into four categories:

* 🟢 Very High
* 🔵 High
* 🟠 Moderate
* 🔴 Low

### Takeaway

The pie chart provides an overall view of how countries are distributed across different happiness levels.

---

## 5️⃣ GDP per Capita vs Happiness — Scatter Plot

### Question

**Is there a relationship between economic strength and happiness?**

A scatter plot compares GDP per capita with happiness scores.

### Takeaway

Countries with stronger GDP per capita generally tend to have higher happiness scores, although GDP alone does not determine happiness.

---

## 6️⃣ Social Support vs Happiness — Scatter Plot

### Question

**Does social support have a relationship with happiness?**

The visualization compares social support levels with happiness scores.

### Takeaway

Higher social support generally appears to be associated with higher happiness scores.

---

## 7️⃣ Healthy Life Expectancy vs Happiness — Scatter Plot

### Question

**Is better healthy life expectancy associated with greater happiness?**

A scatter plot is used to compare healthy life expectancy with happiness scores.

### Takeaway

Countries with better healthy life expectancy generally tend to have higher happiness scores.

---

## 8️⃣ Correlation Heatmap

### Question

**How strongly are the major happiness-related variables related to each other?**

The heatmap compares correlations among:

* Happiness Score
* GDP per Capita
* Social Support
* Healthy Life Expectancy

### Takeaway

The heatmap helps identify which factors have stronger or weaker relationships with the overall happiness score.

---

## 9️⃣ Average Happiness Factors — Bar Chart

### Question

**What are the average values of the major happiness-related factors?**

The average values of important numerical variables are compared using a bar chart.

### Takeaway

The chart provides a simple overview of the average characteristics of the countries in the dataset.

---

## 🔟 Top 15 Happiest Countries — Horizontal Bar Chart

### Question

**Which 15 countries have the highest happiness scores?**

A horizontal bar chart is used to make country names easier to read and compare.

### Takeaway

The visualization provides a clear ranking of the 15 happiest countries.

---

# 🔍 Key Insights

Based on the visual analysis:

1. 🏆 The top-ranked countries have the highest happiness scores.
2. 💰 GDP per capita shows a positive relationship with happiness in general.
3. 🤝 Social support is an important factor associated with happiness.
4. ❤️ Healthy life expectancy is also positively related to happiness.
5. 📉 Happiness scores generally decline as ranking moves away from the top.
6. 🌍 Countries show considerable differences in happiness levels.
7. 📊 No single factor completely explains happiness.
8. 🔗 Multiple social, economic, and health-related factors contribute to happiness.
9. 📈 Scatter plots help identify relationships between happiness and individual factors.
10. 🔥 The correlation heatmap provides a quick summary of relationships among major variables.

---

# 📖 Data Story

The visualizations tell a simple story about **global happiness**.

First, the bar charts identify the countries with the highest happiness scores and compare their economic conditions. The line chart then shows how happiness scores change across the top-ranked countries.

The pie chart provides an overall view of happiness categories, while the scatter plots explore relationships between happiness and important factors such as **GDP per capita, social support, and healthy life expectancy**.

Finally, the correlation heatmap brings these relationships together and helps identify which factors are more closely associated with happiness.

Overall, the analysis shows that **happiness is influenced by multiple factors**, including economic conditions, social relationships, and health. Data visualization makes these relationships easier to understand and communicate.

---

# 📁 Project Structure

```text
First-Chart-Story/
│
├── World_Happiness_Update_Report_2026.csv
├── First_Chart_Story.ipynb
├── README.md
│
└── charts/
    ├── top_10_happiest.png
    ├── top_10_gdp.png
    ├── happiness_line_chart.png
    ├── happiness_pie_chart.png
    ├── gdp_vs_happiness.png
    ├── social_support_vs_happiness.png
    ├── life_expectancy_vs_happiness.png
    ├── correlation_heatmap.png
    ├── average_factors.png
    └── top_15_happiest.png
```

---

# 🚀 How to Run

### 1. Install required libraries

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### 2. Open Jupyter Notebook

```bash
jupyter notebook
```

### 3. Open

```text
First_Chart_Story.ipynb
```

### 4. Run the cells

Execute the notebook cells sequentially to load the dataset, perform analysis, and generate the visualizations.

---

# 🏁 Conclusion

This project demonstrates how **data visualization can transform numerical data into a meaningful story**.

Using the World Happiness Update Report 2026 dataset, multiple visualization techniques were used to explore happiness rankings and their relationships with **GDP per capita, social support, and healthy life expectancy**.

The project also demonstrates the importance of choosing the **right chart for the right question**. Bar charts are useful for comparisons, line charts show trends, pie charts show proportions, scatter plots show relationships, and heatmaps show correlations.

Overall, the project provides practical experience in **exploratory data analysis, visualization, and data storytelling using Python**.

---

## 👨‍💻 Skills Demonstrated

* Data Visualization
* Exploratory Data Analysis
* Data Storytelling
* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Statistical Correlation
* Chart Selection
* Business Insight Generation
* Analytical Thinking

---
## ⭐ Project Highlight

> **Turning Numbers into a Narrative — using charts to understand what the data is really saying.**
> ## Ratnesh Chauhan 

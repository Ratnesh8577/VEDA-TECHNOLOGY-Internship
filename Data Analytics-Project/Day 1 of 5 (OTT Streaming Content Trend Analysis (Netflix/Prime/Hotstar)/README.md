# 🎬 Netflix User Analytics – Data Analysis Project

<p align="center">

**SQL • Python • Power BI • Excel**

</p>

<p align="center">
  <b>End-to-End Data Analytics Project for Netflix User Behavior, Revenue & Engagement Analysis</b>
</p>

---

## 📌 Project Overview

**Netflix User Analytics** is an end-to-end data analytics project developed to analyze user behavior, subscription revenue, viewing patterns, content popularity, customer engagement, devices, internet connectivity, and user ratings.

The project demonstrates a complete data analytics workflow using:

* 🗄️ **MySQL** – Database management, SQL analysis, business queries, views, procedures, functions, and indexes
* 🐍 **Python** – Data cleaning, exploratory data analysis, KPI analysis, and visualization
* 📊 **Power BI** – Interactive business intelligence dashboard
* 📗 **Excel** – Synthetic dataset preparation
* 🐙 **GitHub** – Project documentation and portfolio

> **Dataset Note:** The dataset used in this project is **synthetic and AI-generated** for educational and portfolio purposes. It does not contain real Netflix customer or company data.

---

# 🎯 Project Objectives

The main objectives of this project are to:

* Analyze Netflix user behavior
* Measure subscription revenue and customer value
* Analyze viewing patterns and engagement
* Identify popular content and genres
* Identify high-value and highly engaged users
* Analyze subscription plans and revenue contribution
* Analyze device and operating-system usage
* Study internet connection types
* Analyze country and city-level performance
* Track monthly viewing trends
* Build an interactive Power BI dashboard
* Demonstrate an end-to-end data analytics workflow

---

# 📊 Dataset Information

| Attribute    | Details                   |
| ------------ | ------------------------- |
| Dataset      | Netflix User Analytics    |
| Records      | **20,000**                |
| Unique Users | **3,239**                 |
| Columns      | **39**                    |
| Time Period  | **July 2025 – July 2026** |
| Format       | Excel                     |
| Data Type    | Synthetic / AI-generated  |

### Dataset Includes

* 👤 User Information
* 💳 Subscription Plans
* 💰 Revenue
* ⏱️ Watch Time
* 🎬 Content Details
* ⭐ User Ratings
* 📱 Devices
* 🌍 Countries
* 🏙️ Cities
* 🌐 Internet Types
* ▶️ Viewing Sessions

---

# 🛠️ Tools & Technologies

| Tool          | Purpose                                            |
| ------------- | -------------------------------------------------- |
| 🗄️ MySQL     | Data storage, SQL queries, business analysis       |
| 🐍 Python     | Data cleaning, EDA, KPI analysis and visualization |
| 🐼 Pandas     | Data manipulation and analysis                     |
| 🔢 NumPy      | Numerical analysis                                 |
| 📈 Matplotlib | Data visualization                                 |
| 📊 Power BI   | Interactive dashboard and business intelligence    |
| 📗 Excel      | Synthetic dataset preparation                      |
| 🐙 GitHub     | Version control and project documentation          |

---

# 📁 Project Structure

```text
Netflix-User-Analytics/
│
├── Dataset/
│   └── Netflix_User_Analytics.xlsx
│
├── SQL/
│   ├── Netflix_User_Analytics.sql
│   ├── Database.sql
│   ├── Business_Queries.sql
│   ├── Views.sql
│   ├── Stored_Procedures.sql
│   ├── Functions.sql
│   └── Indexes.sql
│
├── Python/
│   └── Netflix_User_Analytics.ipynb
│
├── Power BI/
│   └── Netflix Dashboard.pbix
│
├── Images/
│   ├── Dashboard.png
│   ├── Revenue_by_Subscription_Plan.png
│   ├── Revenue_by_Country_Chart.png
│   ├── Top_Cities_By_Revenue_Chart.png
│   ├── Genre_Watch_Time.png
│   ├── Device_Usage.png
│   ├── Monthly_Trend.png
│   ├── Average_User_Rating.png
│   ├── Internet_Connection_Type.png
│   ├── Movies_and_TV_Show_Distribution.png
│   ├── Top_Countries_By_Active_Users.png
│   ├── Top_Users.png
│   └── Top_Watched_Titles.png
│
├── README.md
└── LICENSE
```

---

# 🗄️ SQL Analysis

The SQL analysis focuses on database querying, aggregation, business analysis, views, stored procedures, user-defined functions, and indexing.

## SQL Concepts Covered

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate Functions
* `CASE`
* `JOIN`
* Views
* Stored Procedures
* User Defined Functions
* Indexes

---

# 🔍 SQL Business Questions

The project answers **21 SQL business questions**, including:

1. Which subscription plan generates the highest total revenue?
2. How many users are in each subscription plan?
3. What is the average monthly subscription fee by plan?
4. Which content type is watched the most?
5. What are the top 10 most-watched titles?
6. Which genres are most popular?
7. Which device is used the most?
8. Which operating system is used the most?
9. Which age rating has the highest average watch time?
10. What are the top 10 countries by total watch time?
11. Which language has the highest watch time?
12. Which payment method is most popular?
13. What is the average completion percentage by genre?
14. What is the churn-risk distribution?
15. How can users be ranked by total watch time?
16. What is the running total revenue by watch date?
17. How can users be categorized by watch time?
18. What is the monthly watch-time trend?
19. Who are the top 3 users in each country?
20. What is the average revenue per user by subscription plan?
21. Which titles receive the highest average user ratings?

---

# 🐍 Python Data Analysis

Python was used to perform data cleaning, exploratory analysis, KPI calculations, and visualization.

## 🧹 Data Cleaning

The Python workflow includes:

* Converting date columns
* Fixing data types
* Removing formatting issues
* Checking missing values
* Checking duplicate records

## 🔎 Exploratory Data Analysis

The analysis covers:

* User analysis
* Revenue analysis
* ARPU calculation
* Subscription analysis
* Country and city revenue
* Genre watch time
* Monthly viewing trends
* Movie vs TV Show distribution
* Device usage
* Top users
* Top watched titles
* Active users by country
* Genre ratings
* Internet connection analysis

---

# 📊 Key KPIs

| KPI                         |                   Result |
| --------------------------- | -----------------------: |
| 👥 Unique Users             |                **3,239** |
| 💰 Total Revenue            |       **$21,336,179.46** |
| 💵 Average Revenue Per User |            **$6,587.27** |
| ⭐ Average User Rating       | **3.79 – 3.88 by genre** |
| 📺 Dataset Records          |               **20,000** |

The revenue and ARPU figures are calculated from the synthetic dataset used in this project.

---

# ⭐ Average User Rating by Genre

The analysis shows relatively close average ratings across the different genres.

| Rank | Genre       | Average Rating |
| ---: | ----------- | -------------: |
|    1 | Mystery     |       **3.88** |
|    2 | Thriller    |       **3.87** |
|    3 | Biography   |       **3.86** |
|    4 | Action      |       **3.86** |
|    5 | Documentary |       **3.85** |
|    6 | Animation   |       **3.84** |
|    7 | Adventure   |       **3.84** |
|    8 | Fantasy     |       **3.84** |
|    9 | Drama       |       **3.83** |
|   10 | Horror      |       **3.83** |
|   11 | Romance     |       **3.82** |
|   12 | Comedy      |       **3.82** |
|   13 | Family      |       **3.82** |
|   14 | Sci-Fi      |       **3.81** |
|   15 | Crime       |       **3.79** |

The difference between the highest and lowest genre average is relatively small, ranging from **3.79 to 3.88**.

### Visualization

<p align="center">
  <img src="Images/Average_User_Rating.png" alt="Average User Rating by Genre" width="900">
</p>

---

# 💰 Revenue Analysis

## Total Revenue

### **$21.34 Million**

The **Premium** subscription plan contributes the highest revenue in the dataset.

### Premium Revenue

**$15,422,400.40**

This analysis helps examine the contribution of different subscription plans to overall revenue.

---

# 🌍 Geographic Analysis

The top revenue-generating countries identified in the analysis include:

1. South Korea
2. Japan
3. India
4. United States
5. Brazil
6. Canada
7. United Kingdom
8. France
9. Australia
10. Germany

### Major Revenue-Contributing Cities

* Seoul
* Busan
* Incheon
* Daegu
* Sapporo
* Osaka
* Tokyo
* Yokohama
* Delhi
* Kolkata

---

# 🎬 Genre & Viewing Analysis

The genres ranked by total watch time are:

1. Fantasy
2. Action
3. Adventure
4. Biography
5. Horror
6. Romance
7. Crime
8. Family
9. Animation
10. Documentary
11. Thriller
12. Comedy
13. Sci-Fi
14. Drama
15. Mystery

The analysis also identifies monthly fluctuations in viewing activity, providing a way to examine changes in user engagement over time.

---

# 📱 Device Usage

The most commonly used streaming devices in the dataset include:

* 📱 Mobile
* 📺 Smart TV
* 💻 Laptop
* 📱 Tablet
* 🖥️ Desktop
* 🎮 Gaming Console

This analysis provides a basis for understanding device-specific streaming behavior.

---

# 👥 Top 10 Users by Watch Time

| Rank | User ID   |    Watch Time |
| ---: | --------- | ------------: |
|    1 | USR101349 | **2,822 min** |
|    2 | USR102171 | **2,637 min** |
|    3 | USR101133 | **2,546 min** |
|    4 | USR100861 | **2,539 min** |
|    5 | USR101510 | **2,401 min** |
|    6 | USR102042 | **2,260 min** |
|    7 | USR102720 | **2,176 min** |
|    8 | USR103063 | **2,161 min** |
|    9 | USR103346 | **2,116 min** |
|   10 | USR103411 | **2,103 min** |

These represent the highest watch-time users in the analyzed dataset.

---

# 🎥 Top 10 Most-Watched Titles

| Rank | Title                        |  Views |
| ---: | ---------------------------- | -----: |
|    1 | Ancient Ascension            | **43** |
|    2 | House of Obsidian            | **41** |
|    3 | Sacred Ascension: Redemption | **41** |
|    4 | Quiet Skyline: Redemption    | **40** |
|    5 | Sons of Ember                | **39** |
|    6 | Sons of Ravens               | **39** |
|    7 | Quiet Requiem Reborn         | **39** |
|    8 | Shattered Legacy Awakens     | **39** |
|    9 | Daughters of Wolves          | **38** |
|   10 | Broken Paradox: Redemption   | **38** |

---

# 🌎 Top Countries by Active Users

| Rank | Country        | Active Users |
| ---: | -------------- | -----------: |
|    1 | United States  |      **711** |
|    2 | India          |      **656** |
|    3 | United Kingdom |      **319** |
|    4 | Canada         |      **271** |
|    5 | France         |      **248** |
|    6 | Germany        |      **240** |
|    7 | Japan          |      **223** |
|    8 | South Korea    |      **197** |
|    9 | Brazil         |      **193** |
|   10 | Australia      |      **181** |

---

# 🌐 Internet Connection Analysis

| Connection Type |  Sessions |     Share |
| --------------- | --------: | --------: |
| Wi-Fi           | **8,184** | **40.9%** |
| Broadband       | **5,934** | **29.7%** |
| Mobile Data     | **5,882** | **29.4%** |

Wi-Fi represents the largest share of streaming sessions, while Broadband and Mobile Data have relatively similar usage levels.

---

# 📊 Power BI Dashboard

The Power BI dashboard provides an interactive view of Netflix user behavior and business performance.

## Key KPIs

* 💰 Total Revenue
* 👥 Total Users
* 💵 ARPU
* ⭐ Average Rating
* ⏱️ Total Watch Time

## Dashboard Features

* Revenue by Subscription Plan
* Revenue by Country
* Monthly Watch Trend
* Device Distribution
* Genre Analysis
* Top Watched Titles
* Interactive Filters
* Drill-through Analysis

### Dashboard Preview

<p align="center">
  <img src="Images/Dashboard.png" alt="Netflix User Analytics Power BI Dashboard" width="1000">
</p>

---

# 💡 Key Insights

Based on the analysis:

* The dataset contains **20,000 streaming records** from **3,239 unique users**.
* Total subscription revenue is approximately **$21.3 million**.
* Premium subscriptions contribute the largest portion of revenue.
* Revenue is concentrated across selected countries and cities.
* Fantasy and Action are among the highest-watch-time genres.
* Genre ratings are relatively consistent, ranging from **3.79 to 3.88**.
* Mobile and Smart TV are leading streaming devices.
* Wi-Fi accounts for **40.9%** of streaming sessions.
* A small group of users accounts for the highest individual watch times.

---

# 💡 Business Recommendations

Based on the analysis, the following potential business actions can be explored:

### 💳 Subscription Strategy

Use targeted offers to encourage users to explore higher-tier subscription plans.

### 🎬 Content Strategy

Monitor high-performing genres and popular titles when planning content and promotional activities.

### 👥 Customer Retention

Identify highly engaged and high-value users for targeted retention initiatives.

### 🌍 Geographic Marketing

Analyze high-revenue countries and cities to support market-specific campaigns.

### 📱 Streaming Experience

Optimize the streaming experience for frequently used devices and internet connection types.

### 🤖 Personalization

Use viewing behavior, genre preferences, and watch history to improve personalized recommendations.

---

# 🚀 How to Run the Project

## 1️⃣ SQL Analysis

Create the MySQL database and import the dataset.

Execute the SQL files in the following order:

```text
Database.sql
Business_Queries.sql
Views.sql
Stored_Procedures.sql
Functions.sql
Indexes.sql
```

---

## 2️⃣ Python Analysis

Open:

```text
Python/Netflix_User_Analytics.ipynb
```

Install the required libraries:

```bash
pip install pandas numpy matplotlib openpyxl
```

Run the notebook from top to bottom.

---

## 3️⃣ Power BI Dashboard

Open:

```text
Power BI/Netflix Dashboard.pbix
```

Then:

1. Refresh the data source if required.
2. Check the data model.
3. Explore the dashboard.
4. Use interactive filters.
5. Explore drill-through functionality.

---

# 📚 Skills Demonstrated

This project demonstrates practical experience in:

* SQL Data Analysis
* MySQL
* Python
* Pandas
* NumPy
* Exploratory Data Analysis
* Data Cleaning
* Data Visualization
* KPI Development
* Revenue Analysis
* Customer Analytics
* User Engagement Analysis
* Business Intelligence
* Power BI
* Dashboard Development
* Business Insights
* Data Storytelling

---

# 🎯 Project Outcome

This project demonstrates how raw streaming data can be transformed into analytical outputs through a complete data analytics workflow:

```text
Raw Data
   ↓
Data Cleaning
   ↓
SQL Analysis
   ↓
Python EDA
   ↓
KPI & Business Analysis
   ↓
Power BI Dashboard
   ↓
Business Insights
   ↓
Recommendations
```

The project combines **SQL, Python, Power BI, and Excel** to demonstrate an end-to-end approach to data analysis and business intelligence.

---

# 👨‍💻 Author

## **Ratnesh Chauhan**

🎯 **Aspiring Data Analyst | Business Analyst | Power BI Developer | Business Intelligence**

### Connect With Me

* 🔗 **GitHub:** https://github.com/Ratnesh8577
* 🔗 **LinkedIn:** https://www.linkedin.com/in/ratnesh-chauhan-41a113279/
* 💻 **LeetCode:** https://leetcode.com/u/RatneshChauhan279/

---

## ⭐ If you find this project useful

Feel free to **star ⭐ the repository** and explore the SQL queries, Python analysis, and Power BI dashboard.

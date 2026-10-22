# 🛒 E-Commerce Customer Segmentation (RFM Analysis)

<p align="center">

**Python • Pandas • Scikit-learn • K-Means • Excel • Power BI**

</p>

<p align="center">
  <b>End-to-End Customer Segmentation, Purchasing Behavior Analysis & Data-Driven Marketing Strategies</b>
</p>

---

## 📌 Project Overview

**E-Commerce Customer Segmentation (RFM Analysis)** is an end-to-end data analytics project focused on understanding customer purchasing behavior, identifying valuable customer groups, and developing targeted marketing strategies using real-world transactional e-commerce data.

The project applies **RFM Analysis (Recency, Frequency, Monetary)**, an industry-standard customer segmentation technique widely used in retail, e-commerce, and marketing analytics.

Customers are evaluated based on:

- **Recency (R):** How recently a customer made a purchase.
- **Frequency (F):** How frequently a customer purchases.
- **Monetary (M):** How much money a customer spends.

Using these metrics, customers can be classified into meaningful business segments such as **Champions, Loyal Customers, Potential Loyalists, At-Risk Customers, and Lost Customers**.

The project also explores **K-Means Clustering** to identify groups with similar purchasing behavior and uses **Power BI** to visualize customer segments, sales trends, and key business performance indicators.

The primary goal is to transform customer transaction data into actionable marketing recommendations rather than simply generating clusters.

---

## 🎯 Project Objectives

- Analyze real-world e-commerce transaction data.
- Clean and preprocess transactional records using Python.
- Calculate customer-level Recency, Frequency, and Monetary values.
- Generate RFM scores for all eligible customers.
- Identify high-value, loyal, inactive, and at-risk customers.
- Apply K-Means clustering to explore customer purchasing patterns.
- Assign meaningful business names to customer segments.
- Analyze customer spending behavior and sales performance.
- Develop an interactive Power BI dashboard.
- Recommend personalized marketing campaigns for different customer groups.
- Support customer retention, loyalty, and revenue optimization.

---

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| Python | Data Processing & Analytics |
| Pandas | Data Cleaning & RFM Calculations |
| NumPy | Numerical Analysis |
| Scikit-learn | K-Means Clustering |
| Matplotlib & Seaborn | Data Visualization |
| Excel | Data Validation & Reporting |
| Power BI | Interactive Dashboard Development |
| Power Query | Data Transformation |
| DAX | Business KPI Calculations |

---

## 📂 Dataset Information

**Dataset:** E-Commerce Transactional Data

**Suggested Source:** UCI Online Retail Dataset

The dataset contains customer transaction records that can be used to analyze purchasing patterns, spending behavior, and customer engagement.

### Important Dataset Features

| Column | Description |
|---|---|
| InvoiceNo | Unique Transaction Number |
| StockCode | Product Identification Code |
| Description | Product Description |
| Quantity | Number of Products Purchased |
| InvoiceDate | Transaction Date |
| UnitPrice | Price per Product |
| CustomerID | Unique Customer Identifier |
| Country | Customer Location |

### Revenue Calculation

**Total Sales = Quantity × Unit Price**

The dataset supports customer-level analysis, revenue calculations, and time-based sales reporting.

---

## 🔄 Project Workflow

### 1️⃣ Data Cleaning & Preprocessing

Prepare the transactional dataset using Python and Pandas.

Key activities include:

- Handling missing customer identifiers.
- Identifying duplicate transactions.
- Converting transaction dates into datetime format.
- Handling canceled orders and returns.
- Removing invalid quantities and prices where appropriate.
- Calculating transaction-level sales.
- Preparing customer-level data for RFM analysis.

### 2️⃣ Exploratory Data Analysis (EDA)

Analyze important business metrics, including:

- Total sales revenue.
- Total active customers.
- Customer purchase frequency.
- Customer spending patterns.
- Monthly and quarterly sales trends.
- Geographic sales distribution.
- Customer purchasing activity.

### 3️⃣ RFM Analysis

Calculate three customer behavior metrics.

| Metric | Description | Business Meaning |
|---|---|---|
| Recency | Days Since Last Purchase | Customer Engagement |
| Frequency | Number of Purchases | Customer Loyalty |
| Monetary | Total Customer Spending | Customer Value |

### 4️⃣ RFM Scoring

Assign scores from **1 to 5** based on customer purchasing behavior.

- **Score 5:** Strongest purchasing behavior.
- **Score 4:** High engagement.
- **Score 3:** Moderate engagement.
- **Score 2:** Low engagement.
- **Score 1:** Weakest purchasing behavior.

For Recency, customers with fewer days since their last purchase receive higher scores.

### 5️⃣ Customer Segmentation

Classify customers into meaningful business categories based on their RFM scores.

### 6️⃣ K-Means Clustering

Apply K-Means clustering to explore additional customer groups based on their purchasing behavior.

The workflow includes feature scaling, cluster evaluation, model fitting, and cluster interpretation.

### 7️⃣ Power BI Dashboard

Create an interactive dashboard to visualize customer segmentation and business performance.

### 8️⃣ Business Recommendations

Translate customer segments into actionable marketing campaigns.

---

## 👥 Customer Segmentation

| Customer Segment | Customer Behavior | Marketing Strategy |
|---|---|---|
| 🏆 Champions | Recent, Frequent, High-Spending | VIP Loyalty Rewards |
| 💎 Loyal Customers | Consistent Repeat Purchases | Loyalty Programs |
| 🌱 Potential Loyalists | Recent Customers with Growth Potential | Personalized Offers |
| 🆕 New Customers | Recently Acquired Customers | Welcome Campaigns |
| ⚠️ At-Risk Customers | Previously Active, Now Inactive | Win-Back Campaigns |
| 😴 Hibernating Customers | Low Purchasing Activity | Re-Engagement Campaigns |
| ❌ Lost Customers | Long-Term Inactive Customers | Selective Reactivation |

**Important:** These are business-friendly segment categories. Actual customer classifications depend on the RFM scoring rules and the observed data.

---

## 📊 Power BI Dashboard

The interactive Power BI dashboard provides an overview of customer purchasing behavior, sales performance, and RFM segmentation.

### 📌 Key Performance Indicators

- 💰 **Total Sales:** Overall revenue generated.
- 👥 **Active Customers:** Number of active customers.
- 📦 **Sales Volume:** Overall sales activity.

### 📈 Dashboard Visualizations

**1. Sales Trend Analysis**
- Year-wise sales.
- Quarter-wise sales.
- Month-wise sales.

**2. Customer Segment Distribution**
- Customer distribution across RFM segments.
- Comparison of customer groups.

**3. Customer-Level Sales Analysis**
- Customer ID.
- Total sales.
- Sales volume.

**4. RFM Score Analysis**
- Recency score.
- Frequency score.
- Monetary score.

**5. Day-of-Week Sales Analysis**
- Sales performance across weekdays.
- Purchasing activity patterns.

**6. Active Customer Trends**
- Customer activity over time.
- Monthly and quarterly customer trends.

### 🎛️ Interactive Filters

- Country
- Year
- Quarter
- Month

---

## 💡 Key Business Insights

### 1. High-Value Customer Identification

RFM analysis helps identify customers who purchase frequently, spend more, and remain actively engaged.

**Business Application:** VIP loyalty programs and personalized rewards.

### 2. Customer Retention Opportunities

Customers with declining purchasing activity can be identified through Recency and Frequency analysis.

**Business Application:** Targeted retention and win-back campaigns.

### 3. Customer Loyalty Analysis

Frequent purchasing behavior helps identify loyal customer groups.

**Business Application:** Loyalty rewards, cross-selling, and personalized recommendations.

### 4. Sales Performance Monitoring

Time-based analysis helps businesses monitor revenue and purchasing trends.

**Business Application:** Promotional planning and sales optimization.

### 5. Marketing Personalization

Customer segments provide a foundation for differentiated marketing strategies.

**Business Application:** More relevant offers for different customer groups.

---

## 🎯 Marketing Campaign Recommendations

### 🏆 Champions — VIP Loyalty Campaign

**Target:** High-value customers with recent and frequent purchases.

**Strategy:**
- Exclusive rewards.
- Early product access.
- Personalized recommendations.
- Referral benefits.

**Goal:** Retain valuable customers and encourage continued engagement.

### 💎 Loyal Customers — Rewards Campaign

**Target:** Customers with consistent repeat purchases.

**Strategy:**
- Loyalty points.
- Personalized discounts.
- Cross-selling opportunities.
- Membership benefits.

**Goal:** Increase repeat purchases and customer lifetime value.

### ⚠️ At-Risk Customers — Win-Back Campaign

**Target:** Previously valuable customers whose purchasing activity has declined.

**Strategy:**
- Personalized reactivation emails.
- Limited-time offers.
- Relevant product recommendations.
- Customer feedback surveys.

**Goal:** Recover customer engagement and reduce customer loss.

### 🆕 New Customers — Welcome Campaign

**Target:** Recently acquired customers.

**Strategy:**
- Welcome messages.
- First-to-second-purchase incentives.
- Personalized product suggestions.

**Goal:** Encourage repeat purchasing and early customer loyalty.

### ❌ Lost Customers — Reactivation Campaign

**Target:** Customers with extended periods of inactivity.

**Strategy:**
- Selective reactivation offers.
- Personalized reminders.
- Low-cost re-engagement campaigns.

**Goal:** Recover customers where reactivation is commercially worthwhile.

---

## 📋 One-Page Business Recommendation

### Recommended Target: High-Value At-Risk Customers

**Business Problem**

Some customers who previously contributed meaningful revenue may have stopped purchasing recently.

Losing these customers can reduce repeat sales and future revenue opportunities.

**Recommended Solution**

Launch a targeted **Customer Win-Back Campaign** for high-value At-Risk customers.

**Proposed Actions**

1. Identify customers with high historical Monetary and Frequency values but poor recent engagement.
2. Create personalized reactivation messages.
3. Offer relevant products or carefully selected incentives.
4. Monitor customer responses and repeat purchases.
5. Compare campaign performance against a control group.

**Success Metrics**

- Customer Reactivation Rate
- Repeat Purchase Rate
- Campaign Conversion Rate
- Revenue Recovered
- Customer Retention Rate
- Incremental Campaign Profit

**Expected Business Benefit**

The campaign aims to improve customer retention, recover purchasing activity, and use marketing resources more efficiently.

Actual impact should be measured through campaign testing.

---

## 📦 Project Deliverables

### 1️⃣ RFM Score Table

Customer-level table containing:

- CustomerID
- Recency
- Frequency
- Monetary
- R_Score
- F_Score
- M_Score
- RFM_Score
- Customer_Segment

### 2️⃣ Customer Segmentation

- RFM-based customer categories.
- K-Means clustering analysis.
- Cluster visualizations.
- Business-friendly customer segment labels.

### 3️⃣ Power BI Dashboard

- Sales KPIs.
- Customer segment distribution.
- RFM score analysis.
- Sales performance trends.
- Interactive dashboard filters.

### 4️⃣ Business Recommendation

A one-page marketing strategy explaining:

- Which customer segment to target.
- Why the segment matters.
- Which campaign to implement.
- How campaign performance should be measured.

---

## 📂 Project Structure

```text
E-Commerce-Customer-Segmentation/
│
├── data/
│   ├── online_retail.csv
│   ├── cleaned_data.csv
│   └── rfm_customer_scores.csv
│
├── notebooks/
│   ├── Data_Cleaning.ipynb
│   ├── EDA.ipynb
│   ├── RFM_Analysis.ipynb
│   └── KMeans_Clustering.ipynb
│
├── dashboard/
│   └── RFM_Dashboard.pbix
│
├── reports/
│   └── Marketing_Recommendations.pdf
│
├── screenshots/
│   └── Dashboard.png
│
├── requirements.txt
└── README.md
```

*The structure above is suggested. Include only files that exist in the completed repository.*

---

## 📚 Key Learnings

- Real-world e-commerce transaction analysis.
- Data cleaning and preprocessing.
- Exploratory Data Analysis.
- Customer-level RFM calculations.
- Customer segmentation techniques.
- K-Means clustering.
- Machine learning feature scaling.
- Customer purchasing behavior analysis.
- Power BI dashboard development.
- Business KPI reporting.
- Customer retention analytics.
- Marketing campaign recommendations.
- Translating analytical results into business decisions.

---

## 🔮 Future Enhancements

- Customer Lifetime Value Analysis.
- Customer Churn Prediction.
- Cohort Retention Analysis.
- Market Basket Analysis.
- Product Recommendation Systems.
- Predictive Customer Segmentation.
- Marketing Campaign ROI Analysis.
- Automated Dashboard Refresh.

---

## 🏁 Conclusion

The **E-Commerce Customer Segmentation (RFM Analysis)** project demonstrates how customer transaction data can be used to understand purchasing behavior and develop targeted marketing strategies.

By combining **Python, RFM Analysis, K-Means Clustering, and Power BI**, the project provides a practical framework for identifying customer segments, monitoring sales performance, and supporting customer retention decisions.

The primary focus is not simply to create customer clusters but to translate analytical findings into **meaningful business recommendations and measurable marketing actions**.

---

## 👨‍💻 Author

**Ratnesh Chauhan**

*Data Analyst | Power BI Developer | Business Intelligence Enthusiast*

**Skills:** Python | SQL | Power BI | Excel | Machine Learning | Data Analytics

**GitHub:** Ratnesh8577

**LinkedIn:** ratnesh-chauhan-41a113279

---

<p align="center">
  <b>⭐ If you find this project useful, consider starring the repository!</b>
</p>

<p align="center">
  <i>Turning data into insights, and insights into better decisions.</i>
</p>

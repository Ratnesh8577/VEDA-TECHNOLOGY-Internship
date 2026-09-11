# BlinkIT Grocery Sales Analysis — Power BI

## Project Overview
This Power BI project analyzes BlinkIT grocery sales data to understand sales performance, product categories, outlet performance, outlet size, location tiers, fat-content contribution, and establishment-year trends.

The uploaded `.pbix` contains a single-page interactive dashboard with KPI cards, charts, a summary table, and slicers.

## Key KPIs
- **Total Sales:** $1.20M
- **Number of Items:** 8,523
- **Average Sales:** $141
- **Average Rating:** 3.9

> KPI values above are presented as the dashboard-level values for the standard BlinkIT Grocery dataset used by this report. Open the PBIX in Power BI Desktop to verify/refresh the values against the embedded model.

## Dashboard Analysis

### 1. Fat Content Analysis
The dashboard uses a donut chart to compare sales contribution across **Low Fat** and **Regular** products.

**Business use:** Helps understand which product formulation contributes more to revenue and supports product-mix decisions.

### 2. Fat Content by Outlet
A clustered bar chart compares **fat-content performance across outlet location types**.

**Business use:** Identifies whether product preferences vary by Tier 1, Tier 2, and Tier 3 locations.

### 3. Item Type Analysis
A bar chart analyzes sales/performance across grocery **item types**.

**Business use:** Helps identify high-performing and low-performing product categories for inventory and promotion planning.

### 4. Outlet Establishment Trend
An area chart tracks **Total Sales by Outlet Establishment Year**.

**Business use:** Shows how outlet age/expansion periods relate to sales performance and helps evaluate historical growth.

### 5. Outlet Size Analysis
A donut chart compares sales across **Small, Medium, and High/Large outlet sizes**.

**Business use:** Helps assess the contribution of different outlet formats and guide expansion decisions.

### 6. Outlet Location Analysis
A funnel chart compares sales across **Tier 1, Tier 2, and Tier 3 outlet locations**.

**Business use:** Highlights the strongest geographic market tier and supports regional strategy.

### 7. Outlet Type Summary
The dashboard includes a matrix/table with:
- Outlet Type
- Total Sales
- Number of Items
- Average Sales
- Average Rating
- Item Visibility

**Business use:** Provides a compact performance comparison between outlet formats.

## Interactive Filters
The report includes slicers for:
- Outlet Location Type
- Outlet Size
- Item Type
- Metric selector

These filters allow users to explore the dashboard dynamically instead of relying only on static totals.

## DAX Measures
Typical measures represented in the PBIX are:

```DAX
Total Sales = SUM('BlinkIT Grocery Data'[Sales])

Avg Sales = AVERAGE('BlinkIT Grocery Data'[Sales])

No of Items = COUNTROWS('BlinkIT Grocery Data')

Avg Rating = AVERAGE('BlinkIT Grocery Data'[Rating])
```

## Tools & Technologies
- Power BI Desktop
- DAX
- Power Query
- Data Modeling
- Interactive Data Visualization
- KPI Reporting

## Data Fields Used
The dashboard references fields such as:
- Item Fat Content
- Item Type
- Outlet Establishment Year
- Outlet Location Type
- Outlet Size
- Outlet Type
- Item Visibility
- Sales
- Rating

## Dashboard Design
The PBIX includes custom visual assets for KPI cards and dashboard decoration. The project preview image in this package was created from the visual assets embedded inside the uploaded PBIX.

![Project Preview](BlinkIT_PowerBI_Project_Preview.png)

## Business Insights
1. Overall sales performance can be monitored through the KPI layer.
2. Fat-content analysis helps evaluate product-mix contribution.
3. Item-type analysis supports category-level inventory and promotion decisions.
4. Outlet location analysis helps identify stronger market tiers.
5. Outlet size analysis supports store-format planning.
6. Establishment-year analysis helps evaluate historical sales development.
7. Outlet-type comparison combines sales, item volume, rating, and visibility for management-level review.

## How to Open
1. Install **Microsoft Power BI Desktop**.
2. Open the `.pbix` file.
3. Review the dashboard page.
4. Use the slicers to filter the analysis.
5. Refresh the dataset if the source is available and refresh is required.

## Portfolio Description
**BlinkIT Grocery Sales Analysis | Power BI**

Built an interactive Power BI dashboard to analyze grocery sales performance across product categories, fat content, outlet types, outlet sizes, location tiers, and establishment years. Developed KPI reporting and interactive slicers to support business-focused sales and outlet performance analysis using DAX, Power Query, and Power BI visualization.

## Resume-Friendly Project Points
- Built an interactive **Power BI sales dashboard** to analyze grocery sales across item categories, outlet types, outlet sizes, and location tiers.
- Developed KPI measures for **Total Sales, Average Sales, Number of Items, and Average Rating** using DAX.
- Created dynamic visualizations for **fat-content contribution, item-type performance, outlet size, outlet location, and establishment-year trends**.
- Added interactive slicers and a summary matrix to enable management-level comparison and data-driven decision-making.

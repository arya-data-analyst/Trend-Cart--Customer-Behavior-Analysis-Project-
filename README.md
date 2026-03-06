# Trend-Cart--Customer-Behavior-Analysis-Project-
End-to-End Customer Behavior Analysis project using MySQL, Python, and Power BI to analyze retail sales data, identify customer trends, perform KPI &amp; risk analysis, and build an interactive business intelligence dashboard.

🛒 Trend Cart – Customer Behavior Analysis Project

📊 End-to-End Data Analytics Project

Tech Stack: Python | MySQL | Power BI

This project analyzes customer shopping behavior using transactional retail data to uncover insights about spending patterns, customer segments, and product preferences.

The goal is to help businesses improve customer engagement, optimize marketing strategies, and increase revenue using data-driven insights.


---

🎯 Business Problem

Retail companies need to understand how customers purchase products across different categories, demographics, and seasons.

This project analyzes key factors such as:

Customer demographics

Product categories

Seasonal purchasing trends

Discounts and promotions

Customer review ratings

Payment preferences


The insights help businesses identify trends, improve customer retention, and optimize pricing and promotion strategies.


---

🛠 Tools & Technologies

Tool Purpose

MySQL Data cleaning, transformation & exploratory analysis
Python (Pandas, NumPy, Matplotlib, Seaborn) Data analysis, KPI modeling, risk analytics
Power BI (DAX) Interactive dashboard & business intelligence



---

🗂 Project Architecture

Raw Data
   ↓
MySQL (Data Cleaning & Exploratory Analysis)
   ↓
Python (KPI Development & Risk Analytics)
   ↓
Power BI (Interactive Dashboard & Visualization)


---

📁 Dataset Summary

Total Rows: 3,900

Total Columns: 18


Key Features

Customer Information

Age

Gender

Location

Subscription Status


Purchase Information

Product Category

Purchase Amount

Item Purchased

Color

Size

Season


Customer Behavior

Discount Applied

Promo Code Used

Previous Purchases

Frequency of Purchases

Review Rating

Shipping Type


Missing Data

37 missing values in Review Rating column

---

🗄 MySQL – Data Cleaning & Exploratory Analysis

Data Processing & Analytical Workflow

Extracted raw dataset using Python Imported and structured data into MySQL database

Performed data cleaning and transformation

Analyzed key metrics like Revenue and Subscription Rate

Built KPI dashboard to track business performance


  ### Core  SQL Analysis  
Total Revenue

Average order value

Total Customers

Subscriptions Rate 

Revenue Analysis by Category , Season

Subscription Impacts

High Value Customers (CLV Logic)

Performance & Reusability

Payment Method Preference

Operational Insights

 Discount & Promotion Effectiveness
 

---

🐍 Python – KPI Development & Risk Analytics

Python was used for data preprocessing, feature engineering, and KPI development.

Data Processing

Imputed missing values in Review Rating using median rating of product category

Renamed columns using snake_case for better readability

Created new columns:

age_group

purchase_frequency_days


Removed unnecessary column:

promo_code_used



Customer Segmentation

Created High-Value Customer Flag



---

📈 Key KPIs Developed

Revenue KPIs

Total Revenue

Average Order Value

Revenue by Product Category

Revenue by Season


Customer KPIs

Total Customers

Subscription Rate

High Value Customers


Behavior KPIs

Purchase Frequency

Payment Method Preference

Discount & Promotion Effectiveness

### Visual Analysis

Purchase Amount Distribution

Review Rating Distribution

Revenue by Category

Purchase Amount by Gender

Subscription Status vs Purchase Amount

Discount Impact on Purchase Amount

Customer Segmentation

 Purchase Frequency Distribution
 
Frequency vs Customer Value


### Key Insights & Findings
 
Subscription customers show higher average spending

Discounts increase purchase variability but reduce average order value

Certain age groups dominate revenue contribution

High-value customers have shorter purchase cycles 

---

### Power BI – Executive Dashboard

KPI Card

Total Revenue 

Average Order Value

Repeat Customers

Subscription Rate %

Subscription Revenue 


### Chart Visuals

Total Revenue by Category 

Total Revenue by Season

Total Revenue by Subscription Status 

Average Order Value by Discount Applied

Count of Customer ID by Payment Method

Average Order Value by Shipping Type 

Total Revenue by Location


### Key Insights

Overall Performance

Total Revenue: 233.08K

Subscription Revenue: 62.65K

Subscription Rate: 27%

Average Order Value (AOV): 59.76

Repeat Customers: 4K

👉 Insight: Almost 1/4th revenue is coming from subscriptions, which shows strong recurring customer engagement
Revenue by Category

👉 Insight: Clothing alone contributes nearly 45% of total revenue, making it the core revenue driver.

👉 Outerwear is underperforming and may need promotional focus.

## Revenue by Season

👉 Insight: Seasonal variation exists but not extreme — demand is fairly stable year-round. Slightly higher revenue observed in Fall $ Winter compared to Spring/Summer

Payment Method Distribution

👉 Insight: Customers prefer digital card payments, so optimizing checkout experience for cards is critical.

 Shipping Type vs Average Order Value
 
👉 Insight: Faster shipping does not significantly increase order value — customers don’t spend more just because shipping is faster.
Discount Impact

👉  Insight: Discounts are not significantly increasing order value — they may be reducing margins without increasing basket size.
Revenue by Location


👉 Insight: Revenue is evenly distributed geographically — no extreme dependency on a single state.


This dashboard enables business stakeholders to make data-driven decisions quickly.


---

### Recommendations to Increase Profit & Reduce Risk

## Focus on High-Revenue Category (Clothing – 104K)

Introduce premium clothing line (higher margin items).

Bundle clothing + accessories (cross-selling).

Recommend related clothing using behavior-based suggestions

## Reduce Unnecessary Discounts

Replace blanket discounts with: Loyalty-based rewards

Limited-time offers

Threshold discounts (e.g., 10% off above ₹2000)

## Boost Subscription Revenue (Currently 27%)

 Offer exclusive benefits for subscribers (early access, free shipping).
 
 Add auto-renew reminder campaigns.
 
Provide small loyalty bonus instead of large discount.

 ## Increase AOV via Smart Upselling
 
“Frequently bought together” recommendations.

Free shipping above certain order value.

Cart add-on suggestions before checkout.

## Reduce Category Dependency Risk

Promote underperforming categories (Outerwear 19K).

Run seasonal campaigns for low-performing categories.

Analyze inventory turnover to avoid overstock.


##  Optimize Payment Risk 
 
Implement fraud detection model.

Encourage prepaid digital wallets.

Offer small incentive for secure payment modes.


## Seasonal Demand Planning

Forecast demand using past seasonal trends.

Adjust inventory before peak seasons.

Avoid overstock in low season.

---


📁 Repository Structure

Trend-Cart-Customer-Behavior-Analysis
│
├── Dataset
│ └── retail_dataset.csv
│
├── SQL
│ └── data_analysis_queries.sql
│
├── Python
│ └── data_analysis.ipynb
│
├── PowerBI
│ └── dashboard.pbix
│
├── Presentation
│ └── project_presentation.pptx
│
└── README.md


---

🚀 Project Outcomes

This project helps businesses:

Identify high-value customers

Understand customer buying patterns

Optimize discount and promotion strategies

Improve customer engagement

Increase overall revenue



---


## Author

**Arya Gadade **

Aspiring Data Analyst skilled in Python, SQL, and Power BI.  
Interested in building data-driven solutions and business intelligence dashboards.

📍  India  
🔗 LinkedIn: https://linkedin.com/in/arya-gadade 
💻 GitHub: https://github.com/arya-data-analytics

---

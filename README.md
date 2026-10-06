# E-Commerce Business Intelligence & Customer Analytics

A SQL and Power BI based Business Intelligence project that analyzes e-commerce sales, profitability, customer behavior, product performance, and regional trends through an interactive dashboard.

## 📌 Project Overview

This project demonstrates how raw e-commerce transaction data can be transformed into meaningful business insights using **MySQL, SQL, Power BI, and DAX**.

The project covers:
- Sales and revenue analysis
- Profitability analysis
- Customer segmentation
- New vs returning customer analysis
- Customer lifetime value
- Product performance
- Regional performance
- Discount vs profit analysis
- Interactive Power BI dashboards

---

## 🎯 Business Objectives

The main objectives of this project are to:

- Identify top-performing products and categories
- Analyze revenue and profit trends
- Understand customer purchasing behavior
- Identify high-value customers
- Compare new and returning customers
- Analyze regional sales performance
- Evaluate discount impact on profitability
- Calculate category-level profit margins
- Build an interactive Business Intelligence dashboard

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| MySQL | Database management and SQL analysis |
| SQL | Data analysis, joins, CTEs, subqueries and window functions |
| Power BI | Interactive dashboard and visualization |
| DAX | Business measures and KPI calculations |
| GitHub | Project version control and documentation |

---

## 🗄️ Database Schema

The project uses a relational database consisting of four tables:

```text
Customers
    |
    | customer_id
    ↓
Orders
    |
    | order_id
    ↓
Order Details
    |
    | product_id
    ↓
Products




Tables
Customers
- customer_id
- customer_name
- email
- city
- state
- customer_segment
Products
- product_id
- product_name
- category
- sub_category
- price
Orders
- order_id
- customer_id
- order_date
- region
Order Details
- order_detail_id
- order_id
- product_id
- quantity
- discount
- sales
- profit
📊 SQL Analysis
The project includes 22 SQL analysis queries covering:
- Total Revenue
- Total Profit
- Total Orders
- Total Customers
- Category-wise Sales
- Category-wise Profit
- Top 5 Products
- Customer-wise Revenue
- Monthly Sales
- State-wise Revenue
- HAVING clause analysis
- Subqueries
- Common Table Expressions (CTEs)
- CASE WHEN segmentation
- Product ranking using RANK()
- Running totals using Window Functions
- New vs Returning Customers
- Customer Lifetime Value
- Product Profitability
- Discount vs Profit
- Region-wise Performance
- Category Profit Margin
📈 Power BI Dashboard
The Power BI report contains four analytical pages.
1. Executive Overview
Provides a high-level view of business performance through:
- Total Revenue
- Total Profit
- Total Orders
- Total Customers
- Average Order Value
- Monthly Sales Trend
- Revenue vs Profit
- Sales by Category
- Sales by Region
- Top Products
- Customer Segmentation
 
2. Sales Analysis
Focuses on sales and profitability performance across different dimensions.
Includes:
- Sales by Category
- Revenue vs Profit by Category
- Discount vs Profit
- Sales by Region
- Profit Margin by Category
 
3. Customer Analytics
Analyzes customer purchasing behavior and customer value.
Includes:
- Revenue by Customer
- Orders by Customer
- Revenue by Customer Segment
- Top 5 Customers by Revenue
- New vs Returning Customers
- Customer Segment filtering
 
4. Product & Profit Analysis
Analyzes product-level sales and profitability.
Includes:
- Product performance
- Profitability analysis
- Profit margin analysis
- Category filtering
- Product-level business insights
 
🔍 Key Business Insights
The analysis helps answer important business questions such as:
- Which category generates the highest revenue?
- Which products contribute the most sales?
- Which products generate the highest profit?
- Which customers have the highest lifetime value?
- Which regions perform best?
- How do discounts affect profitability?
- Which categories have the highest profit margins?
- What is the difference between new and returning customers?
💡 Skills Demonstrated
Data Analytics
- Data Analysis
- Business Intelligence
- KPI Analysis
- Customer Analytics
- Sales Analysis
- Profitability Analysis
- Business Insights
SQL
- MySQL
- Joins
- GROUP BY
- HAVING
- CASE WHEN
- Subqueries
- CTEs
- Window Functions
- RANK()
- Running Totals
- Aggregations
Power BI
- Interactive Dashboards
- Data Visualization
- Slicers
- KPI Cards
- Charts
- Dashboard Design
DAX
- Calculated Measures
- Business Metrics
- KPI Calculations



🚀 How to Use
1. Clone or download this repository.
2. Open the SQL file in MySQL Workbench.
3. Execute the database and table creation queries.
4. Execute the analysis queries to explore business metrics.
5. Open the Power BI .pbix file.
6. Refresh the data connection if required.
7. Explore the interactive dashboard using the available filters and slicers.
📌 Project Highlights
- Built a relational e-commerce database using MySQL
- Performed advanced SQL-based business analysis
- Created reusable business metrics and KPIs
- Developed a multi-page Power BI dashboard
- Analyzed customer, product, sales, regional and profitability data
- Used interactive filters for business exploration


<img width="1431" height="796" alt="Screenshot 2026-10-07 012606" src="https://github.com/user-attachments/assets/571ecf48-98da-4bf6-8730-f2b92538a06b" />


👩‍💻 Author
Nazuk
BE - Computer Science & Engineering
Interested in Data Analytics, Business Intelligence, Software Development and AI-powered applications.


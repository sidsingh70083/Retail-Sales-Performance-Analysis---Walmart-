# Retail Sales Performance Analysis: Walmart

## Project Overview
This project performs SQL analysis on Walmart sales data to extract actionable business insights. Python (pandas) was used for data cleaning and feature engineering, Excel for quick checks, and Kaggle API for dataset acquisition. The analysis focuses on understanding sales trends, customer behavior, and branch performance.

---

## Tools & Environment
- **IDE / Editor:** Visual Studio Code  
- **Programming:** Python 3.13.7  
- **Database:** MySQL  
- **Libraries:** pandas, SQLAlchemy  
- **Other:** Excel, Jupyter Notebook (.ipynb)  

---

## Project Steps
1. **Set up Kaggle API token** for dataset download.  
2. **Set up VS Code environment** and project folders.  
3. **Clean data using Python (pandas)**: remove duplicates, fix data types.  
4. **Feature Engineering**: calculate total price, create necessary fields for analysis.  
5. **Setup MySQL connection** using SQLAlchemy and PyMySQL connector.  
6. **Load cleaned data into MySQL**.  
7. **Write SQL queries** to answer business questions.  
8. **Analyze results** and summarize insights.  
9. **Publish project to GitHub**, including SQL queries, scripts, and README.

---

## SQL Queries and Business Questions

All SQL queries are in the [`sql_queries/`](sql_queries/) folder.  

| Question | Purpose | SQL File |
|----------|---------|----------|
| Analyze Payment Methods and Sales | Understand customer payment preferences | [`query1_payment_methods.sql`](sql_queries/query1_payment_methods.sql) |
| Highest-Rated Category per Branch | Promote popular categories per branch | [`query2_highest_rated_category.sql`](sql_queries/query2_highest_rated_category.sql) |
| Busiest Day per Branch | Optimize staffing and inventory | [`query3_busiest_day.sql`](sql_queries/query3_busiest_day.sql) |
| Total Quantity by Payment Method | Track sales volume by payment type | [`query4_quantity_by_payment.sql`](sql_queries/query4_quantity_by_payment.sql) |
| Category Ratings by City | Guide city-level promotions | [`query5_category_ratings.sql`](sql_queries/query5_category_ratings.sql) |
| Total Profit by Category | Identify high-profit categories | [`query6_total_profit.sql`](sql_queries/query6_total_profit.sql) |
| Most Common Payment Method per Branch | Understand branch-specific payment preferences | [`query7_most_common_payment.sql`](sql_queries/query7_most_common_payment.sql) |
| Sales Shifts Throughout the Day | Manage staff shifts and stock replenishment | [`query8_sales_shifts.sql`](sql_queries/query8_sales_shifts.sql) |
| Branches with Revenue Decline YoY | Detect branches with declining revenue | [`query9_revenue_decline.sql`](sql_queries/query9_revenue_decline.sql) |

---

## Key Results & Insights
- **Payment Trends:** Identified preferred payment methods across branches.  
- **Top Categories:** Highest-rated product categories per branch highlighted for targeted marketing.  
- **Busiest Days/Shifts:** Peak transaction periods determined for staffing and inventory optimization.  
- **Profit Analysis:** Categories ranked by total revenue and profit to guide business focus.  
- **Branch Performance:** Branches with declining revenue identified to prioritize interventions.  

---

## Future Enhancements
- **Interactive Dashboard:** Use Power BI, Tableau, or Plotly for visual exploration of insights.  
- **Automated Data Pipeline:** Automate data fetching, cleaning, loading, and SQL reporting.  
- **Additional Data Sources:** Integrate more datasets to increase analysis depth.  

---

## Project Structure
```plaintext
|-- data/                     # Raw and processed data
|-- sql_queries/              # SQL scripts for analysis
|-- notebooks/                # Jupyter notebooks (Python analysis)
|-- README.md                 # Project documentation
|-- requirements.txt          # Python libraries
|-- main.py                   # Python script for data processing and loading

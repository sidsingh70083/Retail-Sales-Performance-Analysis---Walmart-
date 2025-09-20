-- Query 6: Calculate Total Profit by Category
-- Purpose: Identify high-profit categories for pricing and strategy
SELECT 
    category,
    ROUND(SUM(total_price), 4) AS total_revenue,
    ROUND(SUM(total_price * profit_margin), 2) AS total_profit
FROM
    walmart
GROUP BY category
ORDER BY 3 DESC;

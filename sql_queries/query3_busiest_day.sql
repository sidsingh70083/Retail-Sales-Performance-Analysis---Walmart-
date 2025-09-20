-- Query 3: Determine the Busiest Day for Each Branch
-- Purpose: Optimize staffing and inventory for peak days
SELECT branch, formatted_day, no_transactions
FROM (
    SELECT 
        branch,
        DAYNAME(STR_TO_DATE(`date`, '%d-%m-%Y')) AS formatted_day,
        COUNT(invoice_id) AS no_transactions,
        RANK() OVER(PARTITION BY branch ORDER BY COUNT(invoice_id) DESC) AS rnk
    FROM walmart
    GROUP BY branch, formatted_day
) AS t
WHERE rnk = 1;

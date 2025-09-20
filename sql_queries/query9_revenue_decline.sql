-- Query 9: Identify Branches with Highest Revenue Decline Year-Over-Year
-- Purpose: Detect branches with declining revenue and strategize improvements

WITH revenue_2022 AS (
    SELECT 
        Branch,
        ROUND(SUM(total_price),2) AS revenue
    FROM walmart
    WHERE YEAR(STR_TO_DATE(`date`, '%d-%m-%Y')) = 2022
    GROUP BY 1
),
revenue_2023 AS (
    SELECT 
        Branch,
        ROUND(SUM(total_price),2) AS revenue
    FROM walmart
    WHERE YEAR(STR_TO_DATE(`date`, '%d-%m-%Y')) = 2023
    GROUP BY 1
)
SELECT 
    ls.Branch,
    ls.revenue AS revenue_2022,
    cr.revenue AS revenue_2023,
    ROUND((ls.revenue - cr.revenue)/ls.revenue*100, 2) AS percentage_decrease
FROM revenue_2022 AS ls
JOIN revenue_2023 AS cr ON ls.Branch = cr.Branch
WHERE ls.revenue > cr.revenue
ORDER BY 4 DESC
LIMIT 5;

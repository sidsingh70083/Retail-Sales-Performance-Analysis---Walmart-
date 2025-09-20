-- Query 8: Analyze Sales Shifts Throughout the Day
-- Purpose: Manage staff shifts and stock replenishment
SELECT 
    Branch,
    CASE
        WHEN HOUR(CAST(`time` AS TIME)) < 12 THEN 'MORNING'
        WHEN HOUR(CAST(`time` AS TIME)) BETWEEN 12 AND 17 THEN 'AFTERNOON'
        ELSE 'EVENING'
    END AS time_of_day,
    COUNT(invoice_id) AS no_of_transactions
FROM
    walmart
GROUP BY Branch , time_of_day
ORDER BY Branch , FIELD(time_of_day, 'MORNING','AFTERNOON','EVENING');

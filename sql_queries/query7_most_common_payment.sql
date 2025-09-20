-- Query 7: Determine the Most Common Payment Method per Branch
-- Purpose: Understand branch-specific payment preferences
WITH _cte_ AS (
    SELECT Branch, payment_method, COUNT(invoice_id) AS freq,
           RANK() OVER(PARTITION BY Branch ORDER BY COUNT(invoice_id) DESC) AS rank_
    FROM walmart
    GROUP BY 1,2
)
SELECT * FROM _cte_
WHERE rank_ = 1;

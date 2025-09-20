-- Query 1: Analyze Payment Methods and Sales
-- Purpose: Understand customer payment preferences
SELECT 
    payment_method,
    COUNT(*) AS no_of_payments,
    SUM(quantity) AS no_qty_sold
FROM
    walmart
GROUP BY payment_method;

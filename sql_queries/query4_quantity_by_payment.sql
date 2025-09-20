-- Query 4: Calculate Total Quantity Sold by Payment Method
-- Purpose: Track sales volume by payment type
SELECT payment_method, SUM(quantity) AS quantity_sold
FROM walmart
GROUP BY payment_method
ORDER BY 2 DESC;

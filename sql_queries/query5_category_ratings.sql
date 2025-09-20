-- Query 5: Analyze Category Ratings by City
-- Purpose: Guide city-level promotions and address regional preferences
SELECT 
    City,
    category,
    MAX(rating) AS max_rating,
    MIN(rating) AS min_rating,
    ROUND(AVG(rating), 2) AS average_rating
FROM
    walmart
GROUP BY 1 , 2
ORDER BY 1 , 2;

-- Query 2: Identify the Highest-Rated Category in Each Branch
-- Purpose: Promote popular categories per branch
SELECT *
FROM
(
    SELECT 
        Branch, category, ROUND(AVG(rating),2) AS avg_rating,
        RANK() OVER(PARTITION BY Branch ORDER BY AVG(rating) DESC) AS `rank`
    FROM walmart
    GROUP BY 1 , 2
) AS highest_rated_category
WHERE `rank`=1;

-- A) Marketing Analysis
-- Hashtag Research

USE ig_clone;

WITH cte_query AS (
	SELECT t.id, tag_name, COUNT(t.id) AS times_used, DENSE_RANK() OVER(ORDER BY COUNT(t.id) DESC) AS ranked
	FROM tags t
	LEFT JOIN photo_tags pt ON t.id = pt.tag_id
	GROUP BY t.id
	ORDER BY times_used DESC
)

SELECT ranked AS Top_5, tag_name, times_used
FROM cte_query
WHERE ranked <= 5
LIMIT 5;
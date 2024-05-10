-- B) Investor Metrics
-- User Engagement

USE ig_clone;

WITH cte_query AS (
	SELECT u.id, username, COUNT(p.id) AS posted
	FROM users u
	LEFT JOIN photos p ON p.user_id = u.id
	GROUP BY u.id
	ORDER BY u.id ASC
)

SELECT ROUND(AVG(posted), 2) AS average_post_per_user, SUM(posted) AS total_photos, 
COUNT(DISTINCT id) AS total_users, SUM(posted) / COUNT(DISTINCT id) AS photos_per_user
FROM cte_query
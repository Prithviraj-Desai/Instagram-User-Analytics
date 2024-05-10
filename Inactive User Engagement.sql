-- A) Marketing Analysis
-- Inactive User Engagement

USE ig_clone;

SELECT *
FROM users
WHERE id NOT IN (
	SELECT DISTINCT user_id FROM photos
)



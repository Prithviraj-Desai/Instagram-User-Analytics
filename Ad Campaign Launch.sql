-- A) Marketing Analysis
-- Ad Campaign Launch

USE ig_clone;

SELECT DAYNAME(created_at) AS day_of_week, COUNT(*) AS users_registered
FROM users
GROUP BY day_of_week
ORDER BY users_registered DESC; -- Sunday's and Thursday's had the most amount of newly registered users. Sunday is ideally the best day for ads.
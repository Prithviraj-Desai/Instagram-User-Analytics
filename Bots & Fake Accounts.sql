-- B) Investor Metrics
-- Bots & Fake Accounts

USE ig_clone;

select user_id, username, count(*) as total_likes_per_user from users inner join likes
on users.id = likes.user_id
group by likes.user_id
having total_likes_per_user = (select count(*) from photos);

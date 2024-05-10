-- A) Marketing Analysis
-- Contest Winner Declaration

USE ig_clone;

select users.id as user_id, users.username, photos.id as photo_id,
photos.image_url, count(*) as total
from photos
inner join likes
on likes.photo_id = photos.id
inner join users
on photos.user_id = users.id
group by photos.id
order by total DESC
limit 1;
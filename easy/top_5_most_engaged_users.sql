/*
Write a query to find the 5 users who posted the most videos in March 2022.
*/

select
	id ,
	count(post_id) as num_posts
from
	big94.users
where
	extract(month
from
	date_posted) = 3
group by
	id
limit 5;


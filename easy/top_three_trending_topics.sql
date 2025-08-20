/*
Write a query to find the top 3 topics on Tik Tok that
receive the most amount of new videos for the month of June 2022. 
order the results by most popular to least popular.
*/

select
	t.topic,
	count(t.topic) as num_new_videos
from
	big93.users u
join big93.topics t
on
	u.post_id = t.post_id
where
	extract ('Month'
from
	u.date_posted) = 6
group by
	t.topic
order by
	count(t.topic) desc,
	t.topic
limit 3;


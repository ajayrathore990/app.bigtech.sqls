/*
Write a query on the average number of likes on posts for when poster_id = 101. 
*/

select
	avg(p.post_id)
from
	big22.post_relationship pr
join big22.posts p on
	pr.post_id = p.post_id
where
	interaction = 'like '
	and poster_id = 101;



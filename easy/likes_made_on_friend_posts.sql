/*
Your manager is concerned about yesterdays user engagement and 
asks you to write a query to find the number of likes on friends posts from yesterday.
Order the results by post id ASC.

*/

select
	count(1)
from
	big21.post_relationship pr
inner join big21.posts p 
on
	pr.post_id = p.post_id
where
	date < current_date -1
	and pr.relationship = 'Friend';


/*
Write a query to show how many users made more than 5 searches in the last 7 days 
from June 4th, 2022.
*/

select
	user_id ,
	count(user_id) as num_searches
from
	big14.searches
group by
	user_id
having
	count(user_id)>= 5;



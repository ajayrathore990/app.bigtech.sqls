/*
Write a query to count the number of actions by all users between 1/01/11 to 1/02/11

*/

select
	count(*) total_actions
from
	big77.actions
where
	user1 != 3
	and 
time between '01-01-11 00:00:00.000' and '02-01-11 00:00:00.000';

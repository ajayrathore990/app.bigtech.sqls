/*
Write a query to find the number of the employees whose position is manager.
order by date joined DESC.

*/
select
	*
from
	big91.employee
where
	position = 'manager'
order by
	date_joined desc;


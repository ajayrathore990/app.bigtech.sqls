/*
Write a query to find the numbers of the employees whose position are 
"manager", "director", "PM". Order by position DESC.

*/

select
	position,
	count(position) as num_employees
from
	big92.employee
group by
	position;
	

/*
Write a query to find the average salary by department. 
Round the result to 2 decimal places.

*/

select
	dept,
	round(avg(salary), 2) as avg_salary
from
	big36.employee
group by
	dept;

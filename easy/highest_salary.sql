/*
Write a SQL query to print the highest salary in each department. Order by department ASC.
*/

--solution 1

select
	department,
	max(salary)
from
	big86.employee
group by
	department
order by
	department;

--solution 2

select
	distinct department,
	max(salary) over (partition by department
order by
	department)
from
	big86.employee
order by
	department;



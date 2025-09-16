/*
Write a query that will return a list of all employees and their managers 
(listing employees and managers by name). Include employees 
with no manager in your list.
*/

select
	e.employee_name as "Employee Name",
	m.employee_name as "Manager Name"
from
	big62.employees e
join big62.employees m 
on
	e.employee_id = m.manager_id;




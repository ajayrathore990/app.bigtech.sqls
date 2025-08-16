/*

The HR manager wants to know how many gift baskets are needed for the spring retreat 
and in order to do so needs to get a headcount.
Please write a query to find the total count of employees.

*/


select
	count(*)
from
	big35.employee;

-- solution 2

select
	distinct count(1)
from
	big35.employee;

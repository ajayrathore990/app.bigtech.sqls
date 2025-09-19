/*
Write a query to find the max value of orders bought by customer for each month in 2021
*/

with cte as (
select
	extract(month
from
	date),
	max(order_val),
	cust_id
from
	big109.order_table
group by
	extract(month
from
	date),
	cust_id
order by
	cust_id
)
select
	*
from
	cte;

/*
Write a query to find the user ids of those who placed a third order on or after 9/21/22 
with at least one order from the ATG holding company.
*/

with cte as (
select
	*,
	rank() over(
	order by date)
from
	big57.orders
where
	date <cast('9/21/22' as date )
)
select
	user_id
from
	cte
where
	rank = 3;

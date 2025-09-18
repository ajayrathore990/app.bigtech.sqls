/*
Write a query to find the customer(s) who made two different orders 
within a two day window. 
Return the results by user_id ASC.
*/

with cte as (
select
	*,
	order_date-lag(order_date) over( partition by user_id
order by
	order_date) as "2ndorder"
from
	big84.orders
order by
	user_id
),
cte1 as (
select
	distinct user_id,
	extract(EPOCH
from
	order_date - "2ndorder") < 864000
from
	cte
where
	"2ndorder" is not null
)
select
	user_id
from
	cte1;



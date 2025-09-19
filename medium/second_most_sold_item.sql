/*
Write a query to find the second highest sold item in each product category. 
*/

with cte as (
select
	product_id,
	sum(amount) od_sum
from
	big88.orders o
group by
	product_id
),
cte2 as (
select
	*,
	row_number() over( partition by pc.category )
from
	cte c
join big88.product_category pc
on
	c.product_id = pc.product_id 
)
select
	category,
	od_sum as second_highest_sold_item
from
	cte2
where
	row_number = 2;



/*
Your boss wants a report from the past week and asks you to write a query to return
the product names with orders for more than 100 units. (Order by product name ASC.)
*/

select
	product_name
from
	big5.product
where
	product_id in (
	select
		product_id
	from
		big5.orders
	where
		units_sold >100
		and order_date < current_date + 7);



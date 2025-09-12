/*
Write a query to return the product names that were ordered during the last 1 week. 
*/

select
	p.product_name
from
	big4.orders o
join big4.product p
on
	o.product_id = p.product_id
where
	o.order_date > current_date -7;



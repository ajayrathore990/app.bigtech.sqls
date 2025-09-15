/*
Write a query to find each Product (ID), and determine the “store of sale” 
that made the first sale of the product in 2019.
*/

select
	product_id,
	store_id
from
	big55.orders
where
	extract(year
from
	date) = 2019

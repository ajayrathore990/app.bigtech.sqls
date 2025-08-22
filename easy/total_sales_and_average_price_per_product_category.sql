/*
Write a SQL query to calculate the total sales and 
average price per product category, for the products that have generated at 
least $500 in total sales. Display the results in descending order of total sales 
and round the average price to the second decimal place.

*/

select
	p.category,
	avg(price),
	sum(amount)
from
	big117.sales s
join big117.products p
on
	s.product_id = p.id
group by
	p.category
having
	sum(amount) > 500;



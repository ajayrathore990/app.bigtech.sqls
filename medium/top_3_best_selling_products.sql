/*
Question: Write a query that returns the top 3 best selling products 
in each category for the month of January 2022.
Include the product name, category, and total sales.
*/

select
	distinct p.name,
	p.category,
	sum(s.amount) over (partition by p.name) as totel_sale,
	dense_rank() over (partition by p.category
order by
	p.name) as sales_rank
from
	big116.products p
join big116.sales s
on
	s.product_id = p.id
order by
	p.category;


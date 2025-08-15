/*
Write a query that returns the name of brands that have at 
least two different products and its average price is greater than $3.
Return the result order by brand name.

Hint: The information about the products that the company X 
sales can be found in the table 'products' as shown below.

*/

select
	*
from
	big10.products;
------------
-- get only brand_name based on condition
select
	brand_name
from
	big10.products
group by
	brand_name
having
	count(brand_name) >= 2
	and avg(price) >= 3
order by
	brand_name;
------
select
	brand_name,
	count(product_class_id),
	avg(price)
from
	big10.products
group by
	product_class_id,
	price,
	brand_name
having
	avg(price) >3
	and count(product_class_id)>= 2
order by
	brand_name;
-----

select
	product_class_id,
	count(product_class_id)
from
	big10.products
group by
	product_class_id;


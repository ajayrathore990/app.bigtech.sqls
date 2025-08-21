/*
Write a query to find the customer ID with maximum number of orders. Order by id DESC
*/

select
	customerid,
	count(customerid) as order_count
from
	big112.orders
group by
	customerid
order by
	count(customerid) desc;



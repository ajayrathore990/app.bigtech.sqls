/*
Write a query to find the customer name and Customer ID 
with number of orders sorted in descending order

*/

select
	c.customername,
	o.customerid,
	count(o.customerid) as order_count
from
	big113.orders o
join big113.customers c
on
	o.customerid = c.customerid
group by
	c.customername,
	o.customerid
order by
	count(o.customerid) desc;


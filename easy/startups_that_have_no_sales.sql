/*
Your portfolio manager wants to know which startups need attention and
asks you to write a query to show the startups in the US that have no sales yet.

*/

select
	c.*
from
	big40.orders o
right join big40.catalog c on
	o.item_id = c.item_id
where
	o.order_id is null
	and c.location = 'US';

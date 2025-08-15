
/*
Write a query to return the product groups in the US that have no sales of any unit.
*/

--tables 
select * from big1.order
select * from big1.catalog

--solution
select
	o.item_id
from
	big1.order o
left join big1.catalog c 
on
	o.item_id = c.item_id
where
	c.item_id is null
	and location = 'US';

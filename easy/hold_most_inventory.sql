/*
Write a query to identify the warehouse that holds the most inventory for the item 'Blanco'.

*/

--solution 1

select
	warehouse,
	count(warehouse) as num_blanco
from
	big81.inventory
where
	item = 'blanco'
group by
	warehouse
order by
	count(3) desc
limit 1;

--solution 2


with cte as
(
select
	warehouse,
	count(warehouse) as cou
from
	big81.inventory
where
	item = 'blanco'
group by
	warehouse
)
select
	warehouse,
	cou as num_blanco
from
	cte
where
	cou = (
	select
		max(cou)
	from
		cte);


/*
The CEO of your company is looking to expand the facilities and 
asks you to write a query to find how many units per factory there are across 
all the different factories.

*/

select
	factory,
	sum(units) as total_units
from
	big43.factory_inventory
group by
	factory;


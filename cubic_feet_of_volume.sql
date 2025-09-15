/*
Write a query to find how much cubic feet of volume does the inventory occupy 
in each factory.
Total Cubic Feet = length × width × height.
*/

select
	i.factory ,
	sum(pd.w * pd.l * pd.h * i.units) as total_cubic_feet
from
	big45.factory_inventory i
join big45.product_dimension_inches pd 
on
	i.product = pd.product
group by
	(i.factory);


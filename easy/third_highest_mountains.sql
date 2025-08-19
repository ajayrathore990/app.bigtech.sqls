/*
Write a query to find out the third-highest mountain name for each country. 
make sure to order the country in ASC order.
*/

with cte as (
select
	*,
	rank() over(partition by country
order by
	height desc)
from
	big78.mountains
)
select
	country,
	name
from
	cte
where
	rank = 3
    order by country;


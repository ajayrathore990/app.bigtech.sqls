/*
Write a query to find how many bids have been completed in each category 
for each day of the week.
*/

select
	count(to_char(order_datetime, 'Day')),
	i.item_category,
	to_char(order_datetime, 'Day') as day_of_week
from
	big51.bids b
join big51.items i on
	b.item_id = i.item_id
group by
	i.item_category,
	to_char(order_datetime, 'Day');


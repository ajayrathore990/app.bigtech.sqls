/*
Write a query to find how many bids have been completed in the last 7 days for each category

IMPORTANT NOTE: For this problem we are assuming that today is 2022-01-19
*/

select
	i.item_category,
	count(i.item_category)
from
	big50.bids b
left join big50.items i 
on
	b.item_id = i.item_id
where
	b.order_datetime >= '2022-01-11'
	and b.order_datetime <= '2022-01-19'
group by
	i.item_category


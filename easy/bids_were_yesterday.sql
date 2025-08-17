/*
Write a query to find how many bids were yesterday. 
Please note that for this problem we are assuming that today is current date.
*/

select
	count(*) as count
from
	big49.bids
where
	order_datetime = current_date -1


/*
Write a query to find the companies who signed up in September 2019, 
determine the three companies with the highest number of received emails in February 2020, 
and then list each of their top three flow message_ids 
from that month based on the total number of opens.
*/

with cte as (
select
	*
from
	big108.sending
where
	extract(month
from
	delivered_date) = 2
	and msg_type = 'flow'
	and id in (
	select
		id
	from
		big108.sending
	group by
		id
	order by
		count(receive_count) desc
	limit 3
)
)
select
	company_name,
	msg_id,
	msg_type,
	open_count
from
	cte c
join big108.accounts a
on
	c.id = a.id
where
	extract(month
from
	signup_date) = 9;


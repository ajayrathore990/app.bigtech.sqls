/*
Write a query to find the number of pages that are currently on with the latest_event.
*/

select
	*
from
	big20.pages_info
where
	page_flag = 'ON'
	and event_time >
(
	select
		min(event_time)
	from
		big20.pages_info);



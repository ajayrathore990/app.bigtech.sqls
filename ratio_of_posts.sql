/*
write a query to showcase what the current post rate is for yesterday.
*/

select
	abs(cast(count(date)as float)/ (select count(date) from big25.events) ) as ratio
from
	big25.events
where
	type = 'post'
	and date(date) = current_date -1;



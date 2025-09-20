/*
Write a query to find the median and mean of visit duration, 
by month.
*/

select
	extract(month
from
	date),
	round(avg(duration), 2)as avg ,
	PERCENTILE_CONT(0.5) within group (
order by
	duration) as median
from
	big111.visit_web_duration
group by
	extract(month
from
	date);



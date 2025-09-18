/*
Lets say we want to target dashers who are in the bottom 50th percentile 
of total pay per hour 
in the last 30 days with a promotion. Please write a query to identify 
who these dashers are along with their email address.
*/

with cte as (
select
	d.email
from
	big75.dashers d
join big75.timesheet_by_day t 
on
	d.id = t.dasher_id
group by
	d.email
order by
	sum(t.hours_worked) desc,
	d.email
limit 3
)
select
	first_name,
	last_name,
	email
from
	big75.dashers
where
	email in (
	select
		*
	from
		cte)

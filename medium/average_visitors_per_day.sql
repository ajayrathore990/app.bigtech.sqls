/*
Write a query to find the average number of visits per user per day in February 
and March of 2022. 
*/

with cte as (
select
	user_id,
	date,
	count(*) as visit_per_day
from
	big110.session_web
where
	extract(month
from
	date) in (2, 3)
group by
	user_id,
	date
)
select
	date,
	avg(visit_per_day) as avg_visits_per_user
from
	cte
group by
	date;



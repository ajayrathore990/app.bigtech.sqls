/*
Write a query to target active users on the free plan for an email campaign. 
Include the customer email and the suggested plan level based on the number of active servers 
they are using.
*/

with cte1 as 
(
select
	*
from
	big70.users
where
	active = true
	and plan_id = 1 
),
cte2 as 
(
select
	*
from
	big70.servers s
where
	user_id in (
	select
		user_id
	from
		cte1)
),
cte3 as (
select
	count(user_id),
	user_id
from
	cte2
group by
	user_id
having
	count(user_id)>= 3
)
select
	c1.email
,
	case
		when count >= 3 then 'Paid'
		else 'null'
	end
from
	cte1 c1
join cte3 c3 on
	c1.user_id = c3.user_id;


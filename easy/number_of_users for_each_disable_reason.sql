/*
Write a query to count the number of users for each disable_reason in the past 7 days
*/

-- count users with in last 7 days
select
	count(distinct user_id) as user_count
from
	big16.users_disabled
where
	date > current_date -7
	and disabled_reason like 'reason%';
;
-- user count with disabled reason
select
	disabled_reason,
	count(user_id)
from
	big16.users_disabled
where
	date > CURRENT_DATE - 7
group by
	disabled_reason;
/*
Write a query to establish monthly cohorts based on first order placed.
*/

select
	count(distinct o.user_id) as monthly_cohorts,
	concat(extract(year from ud.actual_delivery_time), '-',
extract ( month from ud.actual_delivery_time)) as number_users_first_ordercart
from
	big63.user_delivery ud
join big63.user_ordercart o
on
	ud.id = o.delivery_id
join big63.eatery_eatery ee
on
	ud.eatery_id = ee.id
where
	o.is_first_ordercart = 'true'
group by
	ud.actual_delivery_time;

/*
The CRM Manager has an idea for a test, 
but wants to know if there are enough users available to make the results significant. 
There are a couple of filters to apply before he gets in to further detail so asks 
you to write a query to find the count of users who have made at least one deposit and 
registered on at least one product in the previous year (2019)
*/

select
	count(*) as number_users
from
	big67.user u
join big67.entry e
on
	u.id = e.user_id
where
	extract (year
from
	dfs_date) = 2019;


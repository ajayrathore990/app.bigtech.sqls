/*
Your manager is about to go into a meeting with the event director and asks you to 
write a query to showcase the current post rate for all time.
*/

select
	(
	select
		count(1)
	from
		big23.actions
	where
		action = 'post')
/
(
	select
		count(1)
	from
		big23.actions ac
	join big23.active_users au
on
		ac.user_id = au.user_id
	where
		ac.action = 'post'
		and au.active = true)
as post_rate
;
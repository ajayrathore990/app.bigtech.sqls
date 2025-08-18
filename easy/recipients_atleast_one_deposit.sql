/*
The CRM Manager is happy with the base user size so fills you in on the additional restrictions.
He now asks you to write a query to showcase how many users have made at least one deposit, 
registered on DFS in 2019 and made at least one DFS entry on the NFL in 2019.

*/

select
	count(name) number_users
from
	big67.user u
join big67.entry e
on
	u.id = e.user_id
where
	extract('Year'
from
	entry_date)= '2019'
	and e.game_id = 3;


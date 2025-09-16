/*
Write a query to find the fraction of customers have never made a purchase.
*/

select
	cast(count(u.name)as float8) 
/ (
	select
		count(distinct name)
	from
		big61.users) "Fraction of Customers"
from
	big61.users u
left join big61.purchases p on
	u.name = p.user1
where
	p.user1 is null;


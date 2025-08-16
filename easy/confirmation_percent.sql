/*

Write a query to calculate the confirmation percentage for phone numbers.

*/

-- solution 1
select
	concat(count(c.phone_number) * 100 / count(a.phone_number) -count(c.phone_number), '', ' %')
from
	big31.all_numbers a
left join big31.confirmed_numbers c
on
	a.phone_number = c.phone_number;

-- solution 2
select
	cast(count(con.phone_number) * 100 / count(al.phone_number)- count(con.phone_number) as varchar) || ' %'
as percentage
from
	big31.all_numbers al
left join big31.confirmed_numbers con
on
	al.phone_number = con.phone_number;

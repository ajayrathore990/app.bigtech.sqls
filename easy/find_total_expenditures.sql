/*
Write a query to find the total expenditures by user (all time)
Note: Order the total expenditures in desc order

*/

select
	users as Username ,
	sum(price) as "Total Expentiture"
from
	big59.purchases
group by
	users
order by
	sum(price) desc;


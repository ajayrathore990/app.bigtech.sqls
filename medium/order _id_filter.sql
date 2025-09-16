/*
Write a query that will output one row for each Order ID with 
a column denoting whether or not the month name of the order date ends in “r”, 
as well as a column for whether or not the order contained at least one product 
with a requested quantity greater than 1.
*/

select
	order_id,
	to_char(date, 'Month') as month,
	case
		when to_char(date, 'Month') like '%r'
then true
		else false
	end as month_end_r,
	case
		when quantity >1 
then true
		else false
	end as "quantity>1"
from
	big56.orders;


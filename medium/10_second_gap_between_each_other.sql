/*
Write a query to retrieve all the customer_name(s) (ordered) 
whose transactions have a -10 second gap from each other.
*/

select
	customer_name
from
	big74.customer_transactions
group by
	customer_name
having
	extract(EPOCH
from
	max(transaction_time) - min(transaction_time)) > 20
order by
	customer_name;



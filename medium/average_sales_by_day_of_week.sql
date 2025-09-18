/*
Write a query to find the average amount sold by day of the week. 
Please return results from highest average to lowest with the average amount 
rounded two decimal places
*/

select
	avg(amount) as average_amount_sold,
	to_char(timestamp , 'Day') as day_of_week
from
	big87.transactions
group by
	to_char(timestamp , 'Day');



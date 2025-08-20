/*
Write a query to find the top 3 most profitable customers.
Order from most to least profitable. Hint: Profit = Revenue - Expenses.

*/

with cte as (
select
	*,
	o.amount-p.cost as rev
from
	big89.orders o
join big89.product p 
on
	o.product_id = p.id
)
select
	client_id,
	sum(rev) as profit
from
	cte
group by
	client_id
order by
	sum(rev) desc
limit 3;



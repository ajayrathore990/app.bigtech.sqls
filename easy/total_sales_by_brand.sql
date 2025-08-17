/*
Write a query to return the total sales for each Brand Name owned by Beam Suntory 
(holding company) for each and every date between 3/13/2020 and 6/27/2020 inclusive.

*/

select
	o.date as date_sales,
	b.brand_name,
	o.price as total_sales
from
	big54.orders o
join big54.brands b
on
	o.brand_id = b.brand_id
where
	holding_company_name = 'Beam Suntory'
	and o.date between '3/13/2020' and '6/27/2020'


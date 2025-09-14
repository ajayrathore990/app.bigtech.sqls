/*
Write a query to calculate the ROI by source company and ad site. 
Note: The ROI is equal to (revenue - cost) / cost
*/

select
	source_company ,
	sum(cast (ad_revenue- ad_cost as float)/ ad_cost) as roi
from
	big27.users
group by
	source_company;



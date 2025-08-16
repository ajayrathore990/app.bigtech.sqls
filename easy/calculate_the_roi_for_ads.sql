/*
Write a query to calculate the ROI. Round the ROI to 2 decimal places.

Hint: The ROI is equal to (revenue - cost) / cost
*/

--solution

select
	round((sum (ad_revenue- ad_cost) * 1.0) / sum (ad_cost), 2) as round_res
from
	big26.users
group by
	ad_id;


/*
Write a query to find the share of processed complaints 
*/

select
	c.complaint_type
,
	count(c.complaint_type) as count_complaint_type
from
	big28.complaints c
join big28.processed_complaints pc 
on
	c.complaint_id = pc.complaint_id
where
	pc.processed = true
group by
	c.complaint_type;


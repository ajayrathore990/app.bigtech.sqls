/*
The finance director wants to cut cost and ask you to write a query to return 
a list of buildings where there are no employees in them.
*/

select
	*
from
	big37.building
where
	building_id not in (
	select
		building_id
	from
		big37.employee);


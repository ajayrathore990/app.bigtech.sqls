/*
Write a query to select only rows with the max revenue value.
*/

select
	id,
	rev,
	content
from
	(
	select
		*,
		rank() over( partition by id
	order by
		rev desc) as rankk
	from
		big115.revenue) xx
where
	rankk = 1;


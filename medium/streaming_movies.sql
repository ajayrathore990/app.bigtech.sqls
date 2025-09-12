/*
Write a query to return the number of times each movie was streamed 
and the total minutes streamed by genre for the month of December 2018. 
*/

select
	t.name,
	t.genre,
	count(name) count_name ,
	sum(stream_minutes) as sum_stream_minutes
from
	big3.titles t
join 
big3.streams s on
	t.title_id = s.title_id
where
	extract(month
from
	s.stream_timestart) = 12
group by
	t.name,
	t.genre;


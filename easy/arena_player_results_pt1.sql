/*
You are given data for arena attempts by a player. 
The arena is won if 6 matches are won. 
The arena is lost if 2 matches are lost. 
Find the average number of match wins per arena attempt for this player. 
Round to 2 decimal places.
*/

select
	round(avg(won), 2) avg_wins
from
	(
	select
		attempt,
		count(won) as won
	from
		big104.arena
	group by
		attempt
	order by
		attempt
) x


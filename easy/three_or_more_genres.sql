/*
Write a query to find the author who wrote in 3 or more different genres.
*/

--solution 1

select
	author_id,
	count(distinct genre) diff_genres
from
	big82.books
group by
	author_id
having
	count(author_id)>= 3

--solution 2
select
	author_id,
	count(distinct genre) diff_genres
from
	big82.books
group by
	author_id
having
	count(distinct genre) >= 3

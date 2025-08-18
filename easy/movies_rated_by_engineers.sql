/*
Write a query to return the top 5 significant movies as rated by 
'Engineers'. Please filter for those who have an occupation of 'Engineer' 
and 20 Engineers must have rated a movie for the movie to be considered in the top 5.

*/

select
	m.name ,
	cast(avg(rating) as float) as rating
from
	big76.movies m
inner join big76.reviews r
on
	m.id = r.movie
inner join big76.users u
on
	r.critic = u.id
group by
	m.name;


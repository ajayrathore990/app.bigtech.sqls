/*
Write a query that shows us the number of seats not yet purchased for each flight_id.
*/
select
	f.flight_id,
	p.number_of_seats - count_seat as number_of_seats_not_yet_purchased
from
	big73.flights f
join (
	select
		flight_id,
		count(seat_no) as count_seat
	from
		big73.purchases
	group by
		flight_id
	order by
		flight_id
) as pp
on
	f.flight_id = pp.flight_id
join big73.planes p 
on
	f.plane_id = p.plane_id;

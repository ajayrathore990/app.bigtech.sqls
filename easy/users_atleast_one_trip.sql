/*
Write a query to find the latest trip timestamp for each user who took at least one trip.

*/

select
	rider_id,
	max(trip_timestamp) as latest_trip_timestamp
from
	big71.trips
group by
	rider_id;

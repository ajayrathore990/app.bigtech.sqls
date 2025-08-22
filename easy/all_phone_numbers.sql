/*
Write a SQL query to retrieve all the phone numbers that are in the all_numbers table 
but are not present in the confirmed numbers table.
*/

select
	phone_numbers
from
	big125.all_numbers
where
	phone_numbers not in (
	select
		phone_numbers
	from
		big125.confirmed_numbers);


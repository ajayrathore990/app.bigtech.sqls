/*
Your manager wants to know the number of unique toys in inventory across all the factories. 
Please write a query to find how many unique toys does the company have in inventory.

*/

select
	count( distinct product)
from
	big43.factory_inventory;

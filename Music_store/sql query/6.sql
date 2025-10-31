use music_store;

-- Who is the best customer? The customer who has spent the most money will be declared the best customer. 
-- Write a query that returns the person who has spent the most money

select customer.customer_id,customer.first_name,customer.last_name,round(sum(invoice.total),2) as amount_spend 
from invoice join customer 
on invoice.customer_id = customer.customer_id
group by customer.customer_id,customer.first_name,customer.last_name
order by amount_spend desc limit 1;
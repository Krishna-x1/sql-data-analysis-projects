use music_store;

-- Who is the senior most employee based on job title?

select title, concat(first_name , last_name) as full_name from employee
order by levels desc limit 1;
use music_store;

-- What are top 3 values of total invoice?

select invoice_id , sum(total) as total_amount from invoice
group by invoice_id
order by total_amount desc limit 3;
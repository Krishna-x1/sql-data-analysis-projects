use music_store;

-- Which countries have the most Invoices?

select  billing_country, count(invoice_id) as invoice_count from invoice
group by billing_country
order by invoice_count desc  ;
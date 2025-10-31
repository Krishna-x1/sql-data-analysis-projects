use music_store;

-- Write a query that determines the customer that has spent the most on music for each country. 
-- Write a query that returns the country along with the top customer and how much they spent. 
-- For countries where the top amount spent is shared, provide all customers who spent this amount

SELECT 
    country,
    first_name,
    last_name,
    total_spent
FROM (
    SELECT 
        c.country,
        c.first_name,
        c.last_name,
        SUM(i.total) AS total_spent,
        RANK() OVER (PARTITION BY c.country ORDER BY SUM(i.total) DESC) AS rnk
    FROM customer c
    JOIN invoice i 
        ON c.customer_id = i.customer_id
    GROUP BY c.country, c.first_name, c.last_name
) ranked
WHERE rnk = 1
ORDER BY country;

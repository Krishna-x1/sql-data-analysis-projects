use music_store;

-- We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre with the highest 
-- amount of purchases. Write a query that returns each country along with the top Genre. For countries where the maximum
-- number of purchases is shared return all Genres

SELECT billing_country, name AS genre_name, count
FROM (
    SELECT 
        billing_country,
        genre.name,
        COUNT(genre.name) AS count,
        RANK() OVER (PARTITION BY billing_country ORDER BY COUNT(genre.name) DESC) AS rnk
    FROM invoice
    JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
    JOIN track ON invoice_line.track_id = track.track_id
    JOIN genre ON track.genre_id = genre.genre_id
    GROUP BY billing_country, genre.name
) ranked
WHERE rnk = 1
ORDER BY billing_country;

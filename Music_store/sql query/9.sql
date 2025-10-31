use music_store;

-- Return all the track names that have a song length longer than the average song length.
-- Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first

select track.name , milliseconds from track
where milliseconds > (
select avg(milliseconds)
from track )
order by milliseconds desc;
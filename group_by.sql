-- Find the sum of totals in the invoice table grouped by billing_state
SELECT billing_state, SUM(total)
FROM invoice
GROUP BY billing_state;

-- Find the average track length (in ms) by album. Order the table averages.
SELECT title, AVG(t.milliseconds)
FROM album al
JOIN track t ON t.album_id = al.album_id
GROUP BY title
ORDER BY avg DESC;

-- Find a count of how many albums the artists with the ids 8 and 22 have respectively.
-- Use COUNT, WHERE/IN, and GROUP BY
SELECT ar.name, COUNT(*)
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id
WHERE al.artist_id IN (8, 22)
GROUP BY ar.name;
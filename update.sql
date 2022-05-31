-- Find all customers with fax numbers and set those numbers to null
UPDATE customer
SET fax = null
WHERE fax IS NOT NULL;

-- Find all customers with no company (null) and set field to 'Self'
UPDATE customer
SET company = 'Self'
WHERE company IS NULL;

-- Find Julia Barnett and change last_name to 'Thompson'
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia'
AND last_name = 'Barnett';

-- Find customer with email 'luisrojas@yahoo.cl and change his support rep to 4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- Find all tracks that are the genre 'Metal' and have no composer. Set composer to 'The darkness around us'.
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id IN 
	(
        SELECT genre_id 
		FROM genre 
   	    WHERE genre.name = 'Metal'
    )
AND composer IS NULL;
-- Create a table called person that records
-- person's id
-- name
-- age
-- height (in cm)
-- city
-- favorite_color
-- (id should be an auto incrementing id/primary key aka SERIAL)
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INT,
    height FLOAT,
    city VARCHAR(40),
    favorite_color VARCHAR(20)
);

-- Add 5 different people into the person database
INSERT INTO 
    person (name, age, height, city, favorite_color)
VALUES 
    ('Keenan Faulkner', 21, 187.32, 'Orem', 'Royal Blue'),
    ('Garrett Yaworski', null, null, 'Richland Hills', null),
    ('Nikki Faulkner', 21, 157.48, 'Orem', 'Baby blue'),
    ('Michelle Faulkner', 50, 165.1, 'Provo', 'Red'),
    ('Joshua Faulkner', 48, 176.53, 'Provo', 'Blue');

-- Select all the people in the person table by height from tall to short
SELECT * 
FROM person 
ORDER BY height;

-- Select all people in the person table by height from short to tall
SELECT * 
FROM person 
ORDER BY height DESC;

-- Select all people in the person table from old to young
SELECT * 
FROM person 
ORDER BY age DESC;

-- Select all people older than 20
SELECT * 
FROM person 
WHERE age > 20;

-- Select all people that are exactly 18
SELECT * 
FROM person 
WHERE age = 18;

-- Select all people that are less than 20 or older than 30
SELECT * 
FROM person 
WHERE age < 20 
OR age > 30;

-- Select all people that are not 27 (use not equals operator)
SELECT * 
FROM person 
WHERE age != 27;

-- Select all people who's favorite_color is not red
SELECT * 
FROM person 
WHERE favorite_color != 'red';

-- Select all people whose favorite_color is neither red nor blue
SELECT * 
FROM person 
WHERE favorite_color != 'red' 
AND favorite_color != 'Blue';

-- Select all people whose favorite color is orange or green
SELECT * 
FROM person 
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

-- Select all people whose favorite color is orange, green, or blue (use IN)
SELECT * 
FROM person 
WHERE favorite_color 
IN ('orange', 'green', 'blue');

-- Select all people where favorite color is yellow or purple (use IN)
SELECT * 
FROM person 
WHERE favorite_color 
IN ('yellow', 'purple');
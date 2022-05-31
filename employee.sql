-- List the names of all employees that live in Calgary
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- Find the birthdate for the youngest employee
SELECT MAX(birth_date)
FROM employee;

-- Find the birthdate for the oldest employee
SELECT MIN(birth_date)
FROM employee;

-- Find everyone that reports to Nancy Edwards
SELECT *
FROM employee
WHERE reports_to IN
(
    SELECT employee_id
    FROM employee
    WHERE first_name = 'Nancy'
    AND last_name = 'Edwards'
);

-- Count how many amployees live in Lethbridge
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';
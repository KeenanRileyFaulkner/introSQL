-- Create table called orders that records
-- order_id
-- person_id
-- product_name
-- product_price
-- quantity
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    product_name VARCHAR(40) NOT NULL,
    product_price DECIMAL NOT NULL,
    quantity INT NOT NULL
);

-- Add 5 orders to the table
-- Make orders for at least 2 different people
-- Person_id should be different for different people
INSERT INTO 
    orders (person_id, product_name, product_price, quantity)
VALUES
    (4401, 'Apple Watch Series 7', 329, 1),
    (1107, 'Stanley Cup', 47, 2),
    (4401, 'Apple Pencil', 129, 1),
    (4401, 'Air Pods Pro', 179.99, 1),
    (1234, 'Samsung Galaxy S22', 1199.99, 1);

-- Select all records
SELECT * 
FROM orders;

-- Calculate the total number of products ordered
SELECT SUM(quantity) 
FROM orders;

-- Calculate total price of each order
SELECT order_id, (product_price * quantity)
FROM orders
GROUP BY order_id;

-- Calculate the total order price by a single person_id
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 4401;
CREATE DATABASE bookstore;

USE bookstore;

CREATE TABLE customers
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE orders
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	date DATE, 
	customer_id INT, NOT NULL,
	sum INT, NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (name)
VALUES ('Leo'),
('Kate'),
('Tom'),
('Jack'),
('Rose'),
('Molly'),
('John');

INSERT INTO orders (date, customer_id, sum)
VALUES ('2018-03-02', 2, 4500),
('2018-07-03', 5, 15659),
('2019-02-28', 6, 745),
('2018-12-24', 1, 43989),
('2018-11-03', 7, 456),
('2018-09-06', 1, 8567),
('2018-06-15', 4, 67583),
('2018-12-14', 5, 37690);

SELECT * FROM orders;

SELECT c.name AS cust_name, COUNT(o.id) AS count_of_order 
FROM customers AS c
LEFT JOIN orders AS o 
	ON c.id = o.customer_id
GROUP BY c.id, c.name
ORDER BY count_of_order DESC;

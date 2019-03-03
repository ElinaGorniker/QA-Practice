CREATE DATABASE shop;
USE shop;

CREATE TABLE category
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE products
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	price INT NOT NULL,
	categoryId INT NOT NULL,
	FOREIGN KEY (categoryId) REFERENCES category(id)
);

INSERT INTO category (name)
VALUES ('PC'), ('phone'), ('tablet');

INSERT INTO products(name, price, categoryId)
VALUES ('xiaomi redmi', 10000, 2), ('asus tablet', 25000, 3), ('macbook', 50000, 1);

INSERT INTO products(name, price, categoryId)
VALUES ('iphone6', 16000, 2), ('IPad 2', 30000, 3);

UPDATE products
SET price = price - 5000, name = 'macbook air'
WHERE id = 3;

DELETE FROM products
WHERE price >= 30000
LIMIT 2;



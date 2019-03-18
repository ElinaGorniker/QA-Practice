CREATE DATABASE new_shop;
USE new_shop;

CREATE TABLE category
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE product
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	price INT NOT NULL,
	categoryId INT NOT NULL,
	FOREIGN KEY (categoryId) REFERENCES category(id)
);

INSERT INTO category (name)
VALUES ('PC'), ('phone'), ('tablet');




CREATE DATABASE Hogwarts;
USE Hogwarts;

CREATE TABLE houses
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);
CREATE TABLE teachers
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) DEFAULT NULL,
    actual BOOLEAN,
    alife BOOLEAN
);
CREATE TABLE houses_heads
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    houseId INT NOT NULL,
    teacherId INT NOT NULL,
    actual BOOLEAN,
    FOREIGN KEY (houseId) REFERENCES houses(id),
	FOREIGN KEY (teacherId) REFERENCES teachers(id)

);
CREATE TABLE Subjects
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	teacherId INT NOT NULL,
    FOREIGN KEY (teacherId) REFERENCES teachers(id)
    );

CREATE TABLE students
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
	houseId INT NOT NULL,
    FOREIGN KEY (houseId) REFERENCES houses(id)
    );

INSERT INTO houses (name) 
VALUES ('Griffindor'), ('Slytherin'), ('Ravenclaw'), ('Hufflepuff');

INSERT INTO teachers (first_name, last_name, actual, alife) 
VALUES ('Minerva', 'McGonagall', true, true), ('Severus', 'Snape', false, false), ('Alastor', 'Moody', false, false),
	('Rubeus', 'Hagrid', true, true), ('Remus', 'Lupin', false, false), ('Cartbet', 'Bins', true, false), 
    ('Filius', 'Flitwick', true, true), ('Gilderoy', 'Lockhart', false, true), ('Hores', 'Slughorn', true, true),
    ('Firenze', NULL, true, true), ('Rolanda', 'Hooch', true, true), ('Pomona', 'Sprout', true, true);
    
INSERT INTO teachers (first_name, last_name, actual, alife) 
VALUES ('Hores', 'Slughorn', true, true);

INSERT INTO houses_heads (houseId, teacherId, actual) 
VALUES (1, 1, true), (2, 2, false), (3, 7, true), (2, 12, true), (4, 11, true);


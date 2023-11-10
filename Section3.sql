CREATE TABLE pastries(
    name VARCHAR(50),
    quantity int
);

DESC pastries;
DROP TABLE pastries;

CREATE TABLE people(
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age int
);

INSERT INTO people(first_name, last_name, age) VALUES("Tina", "Belcher", 13);

SELECT * FROM people;

INSERT INTO people(first_name, last_name, age) 
    VALUES("Linda", 'Belcher',45),
        ("Philip", "Frond", 38),
        ("Calvin", "Fischoeder",70);
SELECT DATABASE();        
CREATE TABLE cats(name VARCHAR(50) NOT NULL, age int NOT NULL);        

CREATE DATABASE PRACTICE;
USE PRACTICE;

DESC cats;

CREATE TABLE cats3(
	name VARCHAR(100) DEFAULT 'unnamed',
    age INT DEFAULT 99
);
        
INSERT INTO cats3(age) VALUES(8);
INSERT INTO cats3() VALUES();

SELECT * FROM cats3;

-- PRIMARY KEY
CREATE TABLE unique_cats(
	cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

DESC unique_cats;

CREATE TABLE unique_cats3(
	cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
	age INT,
    PRIMARY KEY (cat_id)
);

DESC unique_cats3;

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
	last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INT NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT "employed"
);

INSERT INTO employees(last_name, first_name, age) VALUES ('Chatterjee', 'Soumyadeep', 25);

DESC employees;
        
DROP TABLE cats;     

CREATE TABLE cats(
	cat_id INT AUTO_INCREMENT,	
	name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);        

INSERT INTO cats(name, breed, age) 
VALUES	('Ringo', 'Tabby',4),
		('Cindy','Maine Coon',10),
        ('Dumbledore', 'Maine Coon', 11),
        ('Egg', 'Persian',4),
        ('Misty', 'Tabby', 13),
		('George Michael','Ragdoll',9),
		('Jackson','Sphynx',7);	

DESC cats;

SELECT * FROM cats;

SELECT name, age FROM cats;



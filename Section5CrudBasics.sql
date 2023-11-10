CREATE DATABASE SECTION5;
USE SECTION5;

CREATE TABLE cats
(
	cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);
SHOW DATABASES;

INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       

SELECT * FROM cats WHERE name='Jackson';      

UPDATE cats SET name='Jack' WHERE name='Jackson'; 

UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';

UPDATE cats SET age = 12 WHERE breed='Maine Coon';

SELECT * FROM cats;

DELETE FROM cats WHERE age = 4;

DELETE FROM cats WHERE age = cat_id;

DELETE FROM cats;







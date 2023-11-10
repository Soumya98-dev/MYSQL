CREATE DATABASE shirts_db;
USE shirts_db;

CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(50),
    last_worn INT,
    PRIMARY KEY(shirt_id)
);
DESC shirts;

INSERT INTO shirts(article,color,shirt_size,last_worn) 
VALUES('T-Shirt','White','S',10),
('T-SHIRT', 'GREEN','S', 200),
('POLO-SHIRT','BLACK','M',10),
('TANK TOP','BLUE','S',50), 
('T-SHIRT','PINK','S',0),
('POLO SHIRT','RED','M',5),
('TANK TOP','WHITE','S',200),
('TANK TOP','BLUE','M',15);
SELECT * FROM shirts;

INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES('POLO SHIRT','PURPLE','M',50);

SELECT article, color FROM shirts;

SELECT article, color, shirt_size, last_worn from shirts WHERE shirt_size = 'M';

SELECT * FROM shirts WHERE article = "Polo Shirt";
UPDATE shirts SET shirt_size = 'L' WHERE article = 'POLO SHIRT';

select * from shirts where last_worn = 15;
UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;

SELECT * from SHIRTS where color = "White";
UPDATE shirts SET shirt_size = "XS", color = "off white" where color = "White";

SELECT * FROM shirts WHERE last_worn = 200;
DELETE FROM shirts WHERE last_worn = 200;

SELECT * FROM shirts WHERE article = "TANK TOP";
DELETE FROM SHIRTS;


DELETE FROM shirts WHERE article = "TANK TOP";

SHOW TABLES;

DROP TABLE shirts;

DESC shirts;




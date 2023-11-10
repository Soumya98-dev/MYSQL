CREATE DATABASE SECTION10;
USE SECTION10;
-- The Current Time
SELECT curtime();

-- he Current Date 
SELECT curdate();

-- The Current Day Of The Week
SELECT now();

-- Create a tweets table that stores:
-- The Tweet content
-- A Username
-- Time it was created

CREATE TABLE tweets(
	content VARCHAR(50),
    username VARCHAR(20),
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;


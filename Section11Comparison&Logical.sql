CREATE DATABASE SECTION11;
USE SECTION11;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books
(title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
       ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
       ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;

SELECT * FROM books;

-- Select All Books Written Before 1980 (non inclusive)
SELECT * FROM books WHERE released_year < 1980;

-- Select All Books Written By Eggers Or Chabon
SELECT * FROM books WHERE author_lname = "Eggers" OR author_lname = "Chabon";

-- Select All Books Written By Lahiri, Published after 2000
SELECT * FROM books WHERE author_lname = "Lahiri" AND released_year > 2000;

-- Select All books with page counts between 100 and 200
SELECT * FROM books WHERE pages >= 100 AND pages <= 200;

-- Select all books where author_lname  starts with a 'C' or an 'S''
SELECT * FROM books WHERE author_lname LIKE "C%" OR author_lname LIKE "S%";

SELECT *,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN  title = 'Just Kids' THEN 'Memoir'
        WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS Type
FROM books;

SELECT author_lname, author_fname,
    CASE
        WHEN COUNT(*) = 1 THEN "1 book"
        ELSE CONCAT(COUNT(*), ' books')
    END AS Count
FROM books
GROUP BY author_lname, author_fname;
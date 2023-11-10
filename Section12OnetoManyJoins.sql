select user();

CREATE DATABASE SECTION12COLTCOURSE;
USE SECTION12COLTCOURSE;

CREATE TABLE CUSTOMERS
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(100), 
    last_name VARCHAR(100), 
    email VARCHAR(200)
);

CREATE TABLE ORDERS
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES CUSTOMERS(id)
    
);

INSERT INTO CUSTOMERS(first_name, last_name, email)
VALUES  ('Boy', 'George', 'george@gmail.com'),
		('George', 'Michael', 'gm@gmail.com'),
        ('David', 'Bowie', 'david@gmail.com'),
        ('Blue', 'Steele', 'blue@gmail.com'),
        ('Bette', 'Davis', 'bette@aol.com');
        
INSERT INTO ORDERS(order_date, amount, customer_id)
VALUES	('2016-02-10', 99.99, 1),
		('2017-11-11', 35.50, 1),
        ('2014-12-12', 800.67, 2),
        ('2015-01-03', 12.50, 2),
        ('1999-04-11', 450.25, 5);

SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;

SELECT id from CUSTOMERS WHERE last_name = "George";
SELECT * FROM ORDERS WHERE customer_id = 1;

-- CROSS JOIN
SELECT * FROM CUSTOMERS, ORDERS;

-- INNER JOIN
SELECT * FROM CUSTOMERS
JOIN ORDERS ON ORDERS.customer_id = CUSTOMERS.id;

SELECT first_name, last_name, order_date, amount FROM CUSTOMERS
JOIN ORDERS ON ORDERS.customer_id = CUSTOMERS.id;

-- INNER JOIN AND GROUP BY
SELECT first_name, last_name, SUM(amount) FROM CUSTOMERS
INNER JOIN ORDERS ON ORDERS.customer_id = CUSTOMERS.id
GROUP BY first_name, last_name;

-- LEFT JOIN
SELECT first_name, last_name, amount FROM CUSTOMERS
LEFT JOIN ORDERS ON ORDERS.customer_id = CUSTOMERS.id;

-- LEFT JOIN, GROUP-BY & IFNULL
SELECT first_name, last_name, IFNULL(SUM(amount),0) FROM CUSTOMERS
LEFT JOIN ORDERS ON ORDERS.customer_id = CUSTOMERS.id
GROUP BY first_name, last_name;

-- JOINS EXERCISE
CREATE TABLE STUDENTS(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
);

CREATE TABLE PAPERS(
    title VARCHAR(100),
    grade VARCHAR(20),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES STUDENTS(id)
);

INSERT INTO STUDENTS (first_name) VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO PAPERS(title, grade, student_id)
VALUES ('My First Book Report', 60, 1),
       ('My Second Book Report', 75, 1),
       ('Russian Lit Through The Ages', 94, 2),
       ('De Montaigne and The Art of The Essay', 98,2),
       ('Borges and Magical Realism', 89, 4);

SELECT * FROM STUDENTS;
SELECT * FROM PAPERS;

SELECT first_name, title, grade FROM STUDENTS
INNER JOIN PAPERS ON STUDENTS.id = PAPERS.student_id
ORDER BY grade DESC;

SELECT first_name, title, grade FROM STUDENTS
LEFT JOIN PAPERS ON STUDENTS.id = PAPERS.student_id
ORDER BY grade DESC;

SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0) FROM STUDENTS
LEFT JOIN PAPERS ON STUDENTS.id = PAPERS.student_id
ORDER BY grade DESC;

SELECT first_name, IFNULL(AVG(grade), 0) FROM STUDENTS
LEFT JOIN PAPERS ON STUDENTS.id = PAPERS.student_id
GROUP BY first_name;

SELECT first_name,
       IFNULL(AVG(grade), 0) AS AVERAGE,
       CASE
           WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
           ELSE "FALLING"
           END               AS passing_status
FROM STUDENTS
         LEFT JOIN PAPERS ON STUDENTS.id = PAPERS.student_id
GROUP BY first_name
ORDER BY AVERAGE;

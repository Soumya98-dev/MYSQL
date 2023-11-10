CREATE DATABASE mydb;
USE mydb;

create table designation
(
    code int primary key auto_increment,
    title char(35) not null unique
);

INSERT INTO designation(title)
VALUES('CEO'),('COOK'),('DANCER');

SELECT * FROM designation;

CREATE table student(
	id int(20),
    name VARCHAR(40),
    age int(3)
);

INSERT INTO student(id, name, age)
VALUES(1, "Arjun", 23),
(2, "Jhon", 20);

SELECT * FROM student;

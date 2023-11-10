CREATE DATABASE COLT_COURSE_DAY1;
USE COLT_COURSE_DAY1;
CREATE TABLE Employees1(
	id INT AUTO_INCREMENT NOT NULL,
	last_name VARCHAR(1000) NOT NULL,
    first_name VARCHAR(1000) NOT NULL,
    middle_name VARCHAR(1000),
    age INT NOT NULL,
    current_status VARCHAR(500) NOT NULL DEFAULT "employed",
    PRIMARY KEY(id)
);
DESC Employees1;
SELECT * FROM Employees1;
INSERT INTO Employees1(last_name, first_name, age) VALUES('Chatterjee','Soumyadeep',23);
INSERT INTO Employees1(last_name, first_name, middle_name, age) VALUES('Nayak','Asish','Kumar',24);


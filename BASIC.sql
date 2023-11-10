CREATE TABLE Sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_ID INT,
    item_code VARCHAR(10) NOT NULL
);
CREATE TABLE Customers
(
	customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    nuber_of_complaints INT
);
USE Sales;
SELECT * FROM CUSTOMERS;
USE Sales;
SELECT * FROM Sales;
SELECT * FROM Sales.Sales;

DROP TABLE Sales;

CREATE TABLE Sales
(
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE ,
    customer_ID INT,
    item_code VARCHAR(10),
PRIMARY KEY(purchase_number)
);

DROP TABLE customers;

CREATE TABLE customers                                                              
(  
    customer_id INT,  
    first_name varchar(255),  
    last_name varchar(255),  
    email_address varchar(255),  
    number_of_complaints int,  
primary key (customer_id)  
);

CREATE TABLE items
(
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    comapany_id VARCHAR(255)
);    

CREATE TABLE companies
(
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12)
);

DROP TABLE items;
DROP TABLE companies;

CREATE TABLE items
(
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    comapany_id VARCHAR(255),
PRIMARY KEY(item_code)
);    

CREATE TABLE companies
(
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
PRIMARY KEY(company_id)
);

ALTER TABLE Sales 
ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

DROP TABLE Sales;
DROP TABLE customers;
DROP TABLE items;
DROP TABLE companies;

CREATE TABLE customers 
(
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Jeff', 'Bezos', 'M');

SELECT * FROM customers;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;

CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY (company_id),
    UNIQUE KEY (headquarters_phone_number)
);

ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
MODIFY COLUMN headquarters_phone_number VARCHAR(255) NOT NULL;

DROP TABLE companies;

    
    



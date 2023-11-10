CREATE DATABASE SECTION12;
USE SECTION12;

-- UNIQUE constraint
CREATE TABLE companies (
    supplier_id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id)
);

-- CHECK constraints
CREATE TABLE partiers (
  name VARCHAR(50),
  age INT CHECK (age > 18)
);

-- NAMED CONSTRAINT
CREATE TABLE partiers2 (
  name VARCHAR(50),
  age INT,
  CONSTRAINT age_over_18 CHECK (age > 18)
);

-- Multi-Column Checks [The combination of name and address must be unique for each row]
CREATE TABLE companies (
    supplier_id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id),
    CONSTRAINT name_address UNIQUE (name , address)
);

ALTER TABLE companies
ADD COLUMN city VARCHAR(25);

ALTER TABLE companies
ADD CONSTRAINT name_address UNIQUE(name, address);

RENAME TABLE companies TO suppliers;

ALTER TABLE suppliers
RENAME COLUMN name TO biz_name;

-- RENAMES biz_name to business AND CHANGES ITS DATATYPE ALSO
ALTER TABLE suppliers
CHANGE biz_name business VARCHAR(50);

ALTER TABLE suppliers
MODIFY biz_name VARCHAR(100);


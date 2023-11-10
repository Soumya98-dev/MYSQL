# MYSQL

```sql
    show databases
    CREATE DATABASE DEMO;
    DROP DATABASE DEMO;
    USE DEMO;
    SELECT database(); -- TO CHECK WHICH DATABASE WE ARE USING
    CREATE TABLE DEMO
    (
        name VARCHAR(10),
        age INT
    );
    SHOW TABLES;
    SHOW COLUMNS FROM DEMO;
    DESC DEMO;
    DROP TABLE DEMO;
    INSERT INTO demo(name, age) VALUES("ABC", 7);
    SELECT * FROM DEMO; --SELECTS EVERYTHING FROM TABLE
    INSERT INTO DEMO(name, age) VALUES("DEF", 3), ("FEG",4);
```

- DROP -> Deletes table
- USE -> To use a specific database
- INT -> A whole number
- VARCHAR - variable length string; VARCHAR(100)
- NULL -> No information
- NOT NULL
- DEFAULT VALUES

```sql
    CREATE TABLE cats3(
	    name VARCHAR(100) DEFAULT 'unnamed',
      age INT DEFAULT 99
    );
```

- PRIMARY KEY
  - unique identifier

  ```sql
    CREATE TABLE unique_cats(
        cat_id INT NOT NULL PRIMARY KEY,
        name VARCHAR(100),
        age INT
    );
  ```
- AUTO-INCREMENT

  ```sql
    CREATE TABLE unique_cats3(
        cat_id INT AUTO_INCREMENT,
        name VARCHAR(100),
        age INT,
        PRIMARY KEY (cat_id)
    );
  ```

### CRUD

- Create, Read, Update and Delete

# Where - Narrow down the rows

```sql
  SELECT * FROM cats WHERE age = 4;
```

# Aliases(AS)

```sql
  SELECT cat_id AS id, name FROM cats;
```

# Update

```sql
  UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
```

# Delete

```sql
DELETE FROM cats WHERE name='Egg';
```

  - to completely empty out the table

    ```sql
    DELETE FROM cats;
    ```

## String functions

- **CONCAT**
  ```sql
    SELECT CONCAT('H', 'E', 'L');
    --- HEL
    SELECT CONCAT (column_name, ' ', another_column_name) FROM table_name;
  ```
- **CONCAT_WS** (Concat with separator)
  ```sql
    SELECT CONCAT_WS('-', column_name,another_column_name) FROM table_name;
  ```
- **SUBSTRING**
  - returns smaller piece from a large piece of text
    ```sql
    SELECT SUBSTRING('<string_value>', <starting_position>, <ending_position>);
    SELECT SUBSTRING('SOUMYADEEP' , 7);
    -- 'DEEP'
    ```
- **REPLACE**
  ```sql
    SELECT REPLACE('WDEEP', 'W', 'SOUMYA');
    -- SOUMYADEEP
  ```
- **REVERSE**
  ```sql
    SELECT REVERSE('SOUMYADEEP');
    -- PEEDAYMUOS
  ```
- **CHAR_LENGTH**
  ```sql
    SELECT CHAR_LENGTH('SOUMYADEEP');
    --10
  ```
- **LOWER**
  ```sql
    SELECT LOWER('SOUMYADEEP');
    --soumyadeep
  ```
- **UPPER**
  ```sql
    SELECT UPPER('soumyadeep');
    -- SOUMYADEEP
  ```
- **INSERT**
  ```sql
    SELECT INSERT('WayneState', 6, 100, 'detroit');
    --  Waynedetroit
  ```
- **LEFT**
  ```sql
    SELECT LEFT('Soumyadeep',5);
    -- Soumy
  ```
- **REPEAT**
  ```sql
    SELECT REPEAT('DEEP', 3);
    -- DEEPDEEPDEEP
  ```
- **TRIM**
  ```sql
    SELECT TRIM('  DEEP  ');
    -- DEEP
  ```
- **DISTINCT**
```sql
  SELECT DISTINCT author_lname FROM books;
```
- **ORDERBY**

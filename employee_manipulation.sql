SELECT 
    first_name, last_name
FROM
    employees;
    
SELECT 
    *
FROM
    employees;
    
SELECT 
    dept_no
FROM
    departments;
    
SELECT 
    *
FROM
    departments;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis';

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        AND first_name = 'Aruna';
        
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');
        
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000'; 
    
SELECT 
    *
FROM
    salaries
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    
SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
SELECT 
    *
FROM
    employees
WHERE
    gender= 'F' AND hire_date LIKE ('%2000%');
    
SELECT 
    *
FROM
    SALARIES
WHERE
    SALARY > 150000;
    
SELECT DISTINCT
    hire_date
FROM
    employees;
    
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;

SELECT 
    COUNT(*)
FROM
    dept_manager;
    
SELECT 
    *
FROM
    employees
ORDER BY hire_date ASC;

SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;

SELECT 
    *, AVG(salary) 
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;
    
SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;

-- Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.

SELECT 
    emp_no, COUNT(from_date) AS no_of_contracts
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;

SELECT 
    *
FROM
    dept_emp
LIMIT 100;

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO employees
VALUES(999903,'1977-09-14','Johnathan','Creek','M','1999-01-01');

INSERT INTO titles(emp_no, title, from_date)
values(999903,'Senior Engineer','1997-10-01');

SELECT * FROM DEPT_EMP order by emp_no DESC LIMIT 5;

INSERT INTO dept_emp(emp_no, dept_no, from_date, to_date)
values(999903,'d005','1997-10-01','9999-01-01');

select * from departments limit 10;

create table departments_dup
(
	dept_no char(4) not null,
    dept_name varchar(40) not null
);

INSERT INTO departments_dup(dept_no, dept_name)
select * from departments;

select * from departments_dup limit 10;

INSERT INTO departments(dept_no, dept_name)
values('d010', 'Business Analysis');

UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_name = 'Business Analysis';
    
SELECT 
    dept_no
FROM
    departments;
    
DELETE FROM departments 
WHERE
    dept_no = 'd010';
    
SELECT 
    COUNT(DISTINCT dept_no) AS NO_OF_DEPTS
FROM
    dept_emp;
    
SELECT 
    SUM(salary) AS TOTAL_SALARY
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
SELECT 
    MIN(emp_no)
FROM
    employees;



    

    



    

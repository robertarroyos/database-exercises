USE employees;

select last_name from employees
where last_name LIKE 'z%z';


# Query multiple criteria across multiple columns and display columns
# Display desired columns in the select statement
select first_name, last_name from employees
where first_name like 'a%' AND last_name LIKE '%z';

# Distinct statement pulls that distinct criteria in the where statement

select distinct first_name from employees
where first_name like '%z%';

select distinct first_name,  last_name from employees
where first_name like '%z%';

describe employees;

SELECT * FROM employees
WHERE emp_no BETWEEN 10001 AND 10010
   OR emp_no BETWEEN 10201 AND 10210;

# IN - for matching with any result within a given set
# Select all employee data for employees with a first name of Georgi or Parto

SELECT *
FROM employees
WHERE first_name LIKE 'Georgi'
   OR first_name LIKE 'Parto';

# Chaining WHERE clauses - for defining multiple filtering criteria
# Select all data from female employees where employee number is less than 10200
SELECT * FROM employees
WHERE gender = 'F'
  OR emp_no < 10200;

# Parentheses matter - order of precedence changes the logic of what to include
# Select all employee data from male or female employees with an id less than 10200
SELECT *
FROM employees
WHERE emp_no < 10200
  AND (gender = 'F' OR gender = 'M');

select *
from employees
where first_name = 'Leni'
order by gender DESC, last_name DESC;

select * from employees limit 25 offset 25;

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees
WHERE birth_date LIKE '1985%';

USE employees;

SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'MAYA')
ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT  CONCAT(first_name, last_name) FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT  * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT * FROM employees
WHERE birth_date LIKE '%12-25'
AND hire_date LIKE '199%';

SELECT DATEDIFF(now(), hire_date) FROM employees
WHERE hire_date LIKE '199%';
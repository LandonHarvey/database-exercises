USE employees;

SELECT first_name,last_name, gender
FROM employees
WHERE first_name = 'Irena' AND NOT gender = 'F' OR first_name = 'Vidya' AND NOT gender = 'F' OR first_name ='Maya'
AND NOT gender = 'F'
ORDER BY last_name, first_name;

SELECT CONCAT (first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE ('E%') OR last_name LIKE ('%E')
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

SELECT first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE ('%12-25');

SELECT  datediff(curdate(), hire_date)
FROM employees
WHERE birth_date LIKE ('%12-25') AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';


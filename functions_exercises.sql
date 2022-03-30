use
employees;

SELECT last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
order by last_name desc, first_name desc;

SELECT *
FROM employees
WHERE last_name LIKE 'E%';
order by emp_no desc;

SELECT count(emp_no)
FROM employees
WHERE hire_date LIKE '%199%';

SELECT count(emp_no)
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT count(emp_no)
FROM employees
WHERE last_name LIKE '%q%';

SELECT count(emp_no)
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M';

SELECT count(emp_no)
FROM employees
WHERE last_name LIKE '%E'
   OR last_name LIKE 'E%';

SELECT concat(first_name, '' , last_name) as 'fullname'
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%';

SELECT first_name, last_name, date(curdate(), hire_date) as 'date'
FROM employees
WHERE hire_date LIKE '%199%'
  AND last_name LIKE '%12-25%';
order by birth_date, hire_date desc;


SELECT count(emp_no)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name not LIKE '%qu%';
use
employees;

SELECT count (emp_no)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT count (emp_no)
FROM employees
WHERE last_name LIKE 'E%';

SELECT count (emp_no)
FROM employees
WHERE hire_date LIKE '%199%';

SELECT count (emp_no)
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT count (emp_no)
FROM employees
WHERE last_name LIKE '%q%';

SELECT count (emp_no)
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M';

SELECT count (emp_no)
FROM employees
WHERE last_name LIKE '%E'
   OR last_name LIKE 'E%';

SELECT count (emp_no)
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%';

SELECT count (emp_no)
FROM employees
WHERE hire_date LIKE '%199%'
  AND last_name LIKE '%12-25%';


SELECT count (emp_no)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name LIKE '%qu%';


use employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name desc
limit 10;

SELECT emp_no, salary
FROM salaries
ORDER BY salary desc
limit 5 offset 45;
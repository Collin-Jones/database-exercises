use employees;

FROM employees
WHERE emp_no IN(
SELECT hire_date
WHERE emp_no LIKE '101010'
AND hire_date LIKE '1990-10-22');
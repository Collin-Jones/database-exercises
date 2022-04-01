use
employees;
SELECT e.first_name
FROM employees AS e
WHERE e.hire_date IN (
    SELECT hire_date
    FROM employees
WHERE emp_no LIKE '101010'
  AND hire_date LIKE '1990-10-22'
    );

SELECT t.title
FROM titles AS t
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees AS t
WHERE gender = 'F'
AND emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    );


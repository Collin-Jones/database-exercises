use
employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date LIKE '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date LIKE '9999-01-01'
  AND e.gender LIKE 'F'
ORDER BY d.dept_name;

SELECT t.title as 'Title', COUNT(t.emp_no) as 'Count'
FROM dept_emp as d
         JOIN titles t on d.emp_no = t.emp_no
WHERE to_date LIKE '9999-01-01'
  AND d.dept_no LIKE 'd009'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' s.salary AS 'Salary'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE to_date LIKE '9999-01-01' AND
      s.to_date > curdate()
ORDER BY d.dept_name()
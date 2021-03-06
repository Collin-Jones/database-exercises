use
employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E'
  AND last_name LIKE 'E%'
GROUP BY first_name, last_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%E'
  AND last_name not LIKE 'E%'

SELECT last_name, count(last_name) as 'results'
FROM employees
WHERE last_name LIKE '%q'
  AND last_name not LIKE '%qu'
GROUP BY last_name
ORDER BY results;

SELECT count(gender) AS 'results', gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

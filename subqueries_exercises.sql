use employees;
describe employees;
describe dept_emp;
describe departments;
describe dept_manager;

select * from dept_manager;


SELECT * 
FROM employees
WHERE emp_no = 101010;

SELECT first_name, last_name, hire_date 
FROM employees
JOIN dept_emp USING (emp_no)
WHERE to_date > NOW() and hire_date  = (SELECT hire_date 
FROM employees
WHERE emp_no = 101010) LIMIT 10;


SELECT emp_no
FROM employees
WHERE first_name = 'Aamod';

SELECT DISTINCT title, count(*) as count
FROM dept_emp
JOIN titles USING (emp_no)
WHERE dept_emp.to_date > now() AND emp_no IN (SELECT emp_no
FROM employees
WHERE first_name = 'Aamod')
GROUP BY title;


SELECT emp_no
FROM dept_emp
where to_date > now();

select emp_no
FROM employees
where emp_no not in (SELECT emp_no
FROM dept_emp
WHERE to_date > now());
-- 59,900

SELECT *
from dept_manager
WHERE to_date > now();

SELECT first_name, last_name, gender
FROM employees 
where gender = 'F'
AND emp_no in 
(SELECT emp_no
from dept_manager
WHERE to_date > now()); 
-- Isamu, Karsten, Leon, Hilary

describe salaries;

SELECT avg(salary), to_date
FROM salaries;

SELECT first_name, last_name, emp_no, avg(salary), to_date
FROM employees
JOIN salaries USING (emp_no)
WHERE to_date = '9999-01-01' AND salary > (SELECT avg(salary)
FROM salaries)
GROUP BY emp_no;

SELECT max(salary)
FROM salaries
where to_date > now();

select stddev(salary)
from salaries
where to_date > now();

SELECT *
FROM salaries
WHERE to_date > now() and salary > (SELECT max(salary)
FROM salaries
where to_date > now()) - (select stddev(salary)
from salaries
where to_date > now());

-- 83
SELECT (
SELECT *
FROM salaries
WHERE to_date >= now() and salary > (SELECT max(salary)
FROM salaries
where to_date > now()) - (select stddev(salary)
from salaries
where to_date > now()) / (select count(*) from salaries where to_date > now())) * 100;


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
WHERE hire_date = (SELECT hire_date 
FROM employees
WHERE emp_no = 101010) LIMIT 10;


SELECT first_name, last_name, emp_no,dept_name
FROM employees
JOIN dept_emp USING (emp_no)
JOIN departments USING (dept_no)
WHERE first_name = 'Aamod';

SELECT first_name, last_name, hire_date, to_date
FROM employees
JOIN dept_emp USING (emp_no)
WHERE to_date != '9999-01-01' ;
-- 91479

SELECT first_name, last_name, hire_date, to_date, gender
FROM employees
JOIN dept_emp USING (emp_no)
JOIN departments USING (dept_no)
JOIN dept_manager USING (to_date)
WHERE to_date = '9999-01-01' AND gender = 'F' 
GROUP BY first_name, last_name, hire_date, to_date, gender;
-- View lint, Im not typing all of that, which could mean I wrong maybe

describe salaries;

SELECT avg(salary), to_date
FROM salaries;

SELECT first_name, last_name, emp_no, avg(salary), to_date
FROM employees
JOIN salaries USING (emp_no)
WHERE to_date = '9999-01-01' AND salary > (SELECT avg(salary)
FROM salaries)
GROUP BY emp_no;

SELECT count(salary)
FROM employees
JOIN salaries USING (emp_no)
WHERE salary > (SELECT avg(salary)
FROM salaries 
WHERE salary > (SELECT avg(salary)
FROM salaries));
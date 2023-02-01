use employees;
describe employees;
describe dept_emp;


SELECT dept.dept_name, CONCAT(emp.first_name, ' ', emp.last_name) AS full_name
FROM departments AS dept
JOIN dept_manager AS dm USING (dept_no)
JOIN employees AS emp USING (emp_no)
WHERE to_date >= NOW() LIMIT 10;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS full_name
FROM departments
JOIN dept_manager USING (dept_no) 
JOIN employees USING (emp_no)
WHERE to_date >= NOW()
AND gender = 'F' LIMIT 10;

SELECT title, COUNT(*)
FROM titles
JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.to_date >= NOW() AND titles.to_date >= NOW() AND dept_name = 'Customer Service'
GROUP BY title;

SELECT first_name, last_name, salary
FROM dept_manager AS dm
JOIN salaries AS s USING (emp_no)
JOIN employees USING (emp_no)
WHERE dm.to_date >= NOW() 
AND s.to_date > NOW() LIMIT 10;

SELECT dept_no, dept_name, COUNT(*) num_employees
FROM employees
JOIN dept_emp de  USING (emp_no)
JOIN departments USING (dept_no)
WHERE de.to_date >= NOW()
GROUP BY dept_name LIMIT 10;

SELECT dept_name, AVG(salary) AS avg_sal
FROM salaries s 
JOIN dept_emp de  USING (emp_no)
JOIN departments USING (dept_no)
WHERE de.to_date >= NOW()
and s.to_date >= NOW()
GROUP BY dept_name
order by avg_sal desc LIMIT 1;
-- Sales, $88,852.97

SELECT first_name, last_name, salary, dept_name
FROM employees e 
JOIN dept_emp de USING (emp_no)
JOIN departments d USING (dept_no)
JOIN salaries s USING (emp_no)
WHERE dept_name = 'Marketing'
and de.to_date >= NOW()
and s.to_date >= NOW()
order by salary DESC LIMIT 1;
-- Akemi Warwick

SELECT first_name, last_name, salary, dept_name
FROM dept_manager dm
JOIN employees USING (emp_no)
JOIN salaries s USING (emp_no)
JOIN departments USING (dept_no)
WHERE dm.to_date >= NOW()
AND s.to_date >= NOW()
ORDER BY salary DESC LIMIT 1;
-- Vishwani Minakawa, $106,491, Marketing

SELECT dept_name, ROUND(AVG(salary), 0) AS avg_sal
FROM salaries
JOIN dept_emp USING (emp_no)
JOIN departments USING (dept_no)
GROUP BY dept_name;


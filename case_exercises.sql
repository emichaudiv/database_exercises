use employees;
describe employees;
describe dept_emp;
describe salaries;
describe departments;

SElECT  first_name, last_name, from_date, to_date, dept_no,
IF (to_date = '9999-01-01' ,1 ,0)  as 'Present'
FROM dept_emp
JOIN employees USING (emp_no)
LIMIT 10
;



SELECT first_name, last_name,
CASE
   WHEN SUBSTR(last_name,1,1) IN ('A','B','C','D','E','F','G','H') THEN 'H-Z'
   WHEN SUBSTR(last_name, 1,1) IN ('I','J','K','L','M','N','O','P','Q') THEN 'I-Q'
   WHEN SUBSTR(last_name,1,1) IN ('R','S','T','U','V','W','X','Y','Z') THEN 'R-Z'
   ELSE NULL
END AS alpha_group
FROM employees LIMIT 10;

SELECT min(birth_date), max(birth_date)
FROM employees;

SELECT count(birth_date)
FROM employees
WHERE birth_date LIKE '195%';
-- 182886

SELECT count(birth_date)
FROM employees
WHERE birth_date LIKE '196%';
-- 117138

SELECT avg(salary),
CASE
       WHEN dept_name IN ('research', 'development') THEN 'R&D'
       WHEN dept_name IN ('sales', 'marketing') THEN 'Sales & Marketing'
       WHEN dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
       ELSE dept_name
   END AS dept_group
FROM departments
JOIN dept_emp USING (dept_no)
JOIN salaries USING (emp_no) 
GROUP BY dept_group
LIMIT 10;
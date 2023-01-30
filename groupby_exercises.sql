use employees;
describe employees;
describe salaries;
describe titles;

select distinct title
from titles;
-- 7 titles

select last_name 
from employees 
where last_name like 'e%e'
group by last_name;

select first_name, last_name 
from employees 
where last_name like 'e%e'
group by first_name, last_name;

select last_name 
from employees 
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;
-- Chleq, Lindqvist, Qiwen

select count(last_name) 
from employees 
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

select first_name, gender
from employees 
where first_name in ('Irena','Vidya','Maya')
group by gender;

select first_name, last_name, birth_date, 
LOWER(CONCAT((substr(first_name,1,1)),substr(last_name,1,4),'_', substr(birth_date,6,2),substr(birth_date,3,2))) as user_name, count(user_name)
from employees limit 10;

select emp_no, avg(salary) 
from salaries 
group by emp_no, salary limit 10;

describe dept_emp;
select count(emp_no), dept_no 
from dept_emp
group by dept_no
limit 10;

select emp_no, sum(salary)
from salaries 
group by emp_no limit 10;

select emp_no, max(salary)
from salaries 
group by emp_no limit 10;

select emp_no, min(salary)
from salaries 
group by emp_no limit 10;

select emp_no, max(salary), min(salary)
from salaries 
group by emp_no limit 10;

select emp_no, max(salary)
from salaries 
where salary > 150000 
group by emp_no limit 10;

select emp_no, avg(salary)
from salaries 
where salary > 80000 and salary < 90000
group by emp_no limit 10;


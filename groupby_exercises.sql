use employees;
describe employees;
describe salaries;

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


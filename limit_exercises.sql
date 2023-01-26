use employees;
describe employees;
SELECT DISTINCT last_name FROM employees order by last_name asc limit 10 ;
select distinct last_name from employees where hire_date like '%-12-25'order by last_name asc limit 5;
-- Aamodt, Acton, Adachi, Alameldin, Albarhamtoshy
select distinct last_name from employees where hire_date like '%-12-25' order by last_name asc limit 10 offset 5;
-- offset is used to skip over some information, usually the redundant ones and limit will show the desired amount of information based on a set limit, both can influence the size of the page and it number count
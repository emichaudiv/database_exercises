use employees;
select * from employees where first_name in ('Irena','Vidya','Maya');
select * from employees where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';
select * from employees where 
(first_name = 'Irena' or 
first_name = 'Vidya' or 
first_name = 'Maya') and gender = 'M';
select * from employees where last_name like 'E%';
select * from employees where last_name like 'E%' or last_name like '%e';
select * from employees where last_name like 'E%e'
select * from employees where last_name like '%e';
select * from employees where hire_date like '199%';
-- 135214 found
select * from employees where birth_date like '%-12-25';
-- 842 found
select * from employees where hire_date like '199%' and (birth_date like '%-12-25');
-- 362 found
select first_name, last_name from employees where last_name like '%q%';
-- 1873 found
select first_name, last_name from employees where last_name like '%q%' and last_name not like '%qu%';
-- 547 found
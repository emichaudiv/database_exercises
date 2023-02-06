use oneil_2104;
use employees;
select * from employees limit 10;

select first_name, last_name, dept_name, concat(first_name,' ',last_name) as full_name
from employees
join dept_emp de using (emp_no)
join departments using (dept_no)
where de.to_date > now();

create temporary table oneil_2104.employees_with_departments as (select first_name, last_name, dept_name
from employees
join dept_emp de using (emp_no)
join departments using (dept_no)
where de.to_date > now());

use oneil_2104;
select *  from employees_with_departments;

alter table employees_with_departments add  full_name varchar(100);
update employees_with_departments set full_name = concat(first_name,' ',last_name);
alter table employees_with_departments drop first_name;
alter table employees_with_departments drop last_name;

-- would be easier to just select, concat with department names and be done.

use sakila;
select payment_date, amount, round((amount) * 100) AS cents
from payment
;

create temporary table oneil_2104.sakila_payment as(select payment_date, amount, round((amount) * 100) AS cents
from payment);
use oneil_2104;
select * from sakila_payment;

use employees;
describe salaries;
describe departments;
describe dept_emp;

SELECT dept_name, salary, round(avg(salary),2),
        (salary - (SELECT AVG(salary) FROM salaries where to_date > now()))
        /
        (SELECT stddev(salary) FROM salaries where to_date > now()) AS zscore
    FROM salaries
JOIN dept_emp USING (emp_no)
JOIN departments USING (dept_no)
    ;

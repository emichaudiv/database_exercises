use employees;
describe employees;
select first_name, last_name, upper(CONCAT (first_name, ' ',last_name)) as full_name 
from employees 
where last_name like'e%' and last_name like '%e' ;

select birth_date, hire_date, emp_no, datediff(curdate(),hire_date) as days_worked
from employees 
where (birth_date like '%-12-25') and (hire_date like '199%');

describe salaries;
select * from salaries
where to_date = '9999-01-1' limit 10;
select MIN(salary), MAX(salary) from salaries
where to_date = '9999-01-1' limit 10;

select first_name, last_name, birth_date, 
LOWER(CONCAT((substr(first_name,1,1)),substr(last_name,1,4),'_', substr(birth_date,6,2),substr(birth_date,3,2))) as user_name
-- lower(concat (substr -- ((first_name,1)),_,lastname,substr(birth_date,3,4)) as user_name
from employees limit 10;


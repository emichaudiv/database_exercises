use employees;
describe employees;
SELECT * FROM employees where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya' order by first_name asc;
-- Irena Reutenauer,Vidya Simmen
SELECT * FROM employees where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya' order by first_name, last_name asc;
-- Irena Action, Vidya Zweizig
SELECT * FROM employees where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya' order by last_name, first_name asc;
-- Irena Action, Maya Zyda
SELECT * FROM employees where last_name like 'e%' and last_name like '%e' order by emp_no;
-- 899, 10021 Ramzi Erde, 499648 Tadahiro Erde
SELECT * FROM employees where last_name like 'e%' and last_name like '%e' order by hire_date desc;
-- 899, 1999-11-27 Teiji Eldridge, 1985-2-2 Sergi Erde
SELECT * FROM employees where (birth_date like '%-12-25') and (hire_date like '199%') order by birth_date, hire_date asc;
-- 362, 1952-12-25 Tremaine Eugenio hired 1990-05-01, 1964-12-25 Gudjon Vakili hired 1996-08-21

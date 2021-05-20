use employees;

select * from employees where first_name in ('irena', 'vidya', 'maya') order by first_name;

select * from employees where first_name in ('irena', 'vidya', 'maya') order by first_name, last_name;

select * from employees where first_name in ('irena', 'vidya', 'maya') order by last_name, first_name;

select * from employees where first_name in ('irena', 'vidya', 'maya') order by last_name DESC, first_name DESC;

select * from employees where first_name = 'irena' or first_name = 'vidya' or first_name = 'maya';

select * from employees where gender = 'm' and (first_name = 'irena' or first_name = 'vidya' or first_name = 'maya');

select * from employees where last_name like 'e%';

select * from employees where last_name like 'e%' order by emp_no;

select * from employees where last_name like 'e%' order by emp_no DESC;

select * from employees where last_name like 'e%' or last_name like '%e';

select * from employees where last_name like 'e%' and last_name like '%e';

select * from employees where last_name like '%q%';

select * from employees where last_name like '%q%' and last_name not like '%qu%';
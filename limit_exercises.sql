use employees;

select distinct last_name from employees order by last_name DESC limit 10;

select emp_no from salaries order by salary DESC limit 5;

select emp_no from salaries order by salary DESC limit 5 offset 45;
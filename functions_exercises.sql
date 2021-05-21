use employees;

select * from employees where last_name like 'e%' and last_name like '%e';

select concat(first_name, ' ', last_name) as 'employee full name' from employees where last_name like 'e%' and last_name like '%e';

select * from employees where month(birth_date) = 12 and day(birth_date) = 25;

select * from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25;

select * from employees
where (year(hire_date) between 1990 and 1999)
and month(birth_date) = 12
and day(birth_date) = 25
order by birth_date ASC, hire_date DESC;

select *, datediff(curdate(), hire_date) as 'Days worked since hire date' from employees
where year(hire_date) between 1990 and 1999
and month(birth_date) = 12
and day(birth_date) = 25;
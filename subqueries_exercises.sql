use employees;

select * from employees
where hire_date =
  (select hire_date from employees
  where emp_no = 101010);

select title from titles
where emp_no
      in (select emp_no from employees
  where first_name = 'Aamod');

select first_name, last_name from employees
where gender = 'F' and emp_no
   in (select emp_no from dept_manager
   where to_date > current_date);

select dept_name from departments
where dept_no
  in (select dept_no from dept_manager
  where emp_no
    in (select emp_no from employees
    where gender = 'f')
    and to_date > current_date);

select first_name, last_name
from employees
where emp_no in
  (select emp_no
  from salaries
  where salary =
        (select salary
        from salaries
        order by salary desc limit 1));
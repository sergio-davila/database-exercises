use employees;

-- 1.
select departments.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date = '9999-01-01';

-- 2.
select departments.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date = '9999-01-01' and employees.gender = 'F';

-- 3.
select title, count(title) from titles join dept_emp on dept_emp.emp_no = titles.emp_no join departments on departments.dept_no = dept_emp.dept_no where departments.dept_name = 'Customer Service' group by title;

-- Andrew's version of number 3.
-- SELECT t.title AS title, COUNT(title)
-- FROM dept_emp as de
--          JOIN titles as t
--               ON t.emp_no = de.emp_no
--          JOIN departments as d
--               ON d.dept_no = de.dept_no
-- WHERE d.dept_name = "Customer Service"
-- GROUP BY title;
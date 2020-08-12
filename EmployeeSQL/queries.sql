select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees
inner join salaries ON
employees.emp_no = salaries.emp_no;


select employees.first_name, employees.last_name, employees.hire_date
from employees
	where hire_date >= '1/1/1986' and hire_date <= '12/31/1986';

select dept_manager.emp_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_manager
inner join departments on
dept_manager.dept_no = departments.dept_no
inner join employees on
dept_manager.emp_no = employees.emp_no;

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no;

select employees.first_name, employees.last_name,employees.sex
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
from employees
inner join dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'

select employees.last_name, 
count (last_name)
from employees
group by employees.last_name
order by count (last_name) desc;



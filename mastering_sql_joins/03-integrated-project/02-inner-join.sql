#############################
-- Task Two: INNER JOIN
-- In this task, you will retrieve data from the two 
-- tables using INNER JOIN
#############################

##########
-- INNER JOIN

-- 2.1: Extract all managers' employees number, department number, 
-- and department name. Order by the manager's department number
select dm.emp_no, dm.dept_no , dd.dept_name 
from dept_manager_dup dm 
inner join departments_dup dd 
on dm.dept_no = dd.dept_no 
order by dm.dept_no ;

-- add m.from_date and m.to_date
select dm.emp_no, dm.dept_no , dd.dept_name, dm.from_date, dm.to_date 
from dept_manager_dup dm 
inner join departments_dup dd 
on dm.dept_no = dd.dept_no 
order by dm.dept_no ;


-- 2.2 (Ex.): Extract a list containing information about all managers'
-- employee number, first and last name, dept_number and hire_date
-- Hint: Use the employees and dept_manager tables

-- Retrieve data from the employees and dept_manager

SELECT * FROM employees;
SELECT * FROM dept_manager;

-- Solution to 2.2
select e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date 
from employees e
inner join dept_manager dm 
on e.emp_no = dm.emp_no 
order by e.emp_no ;
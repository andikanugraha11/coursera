#############################
-- Task Eight: Join more than Two Tables in SQL
-- In this task, you will retrieve data from tables in the employees database,
-- by joining more than two Tables in SQL
#############################

###########
-- Join more than Two Tables in SQL

-- 8.1: Extract a list of all managers' first and last name, dept_no, hire date, to_date,
-- and department name
 select e.first_name, e.last_name, dm.dept_no, e.hire_date, dm.to_date, d.dept_name from dept_manager dm
 join employees e ON e.emp_no = dm.emp_no 
 join departments d on dm.dept_no = d.dept_no ;

-- 8.2: What do you think will be the output of this?
SELECT e.first_name, e.last_name, m.dept_no, e.hire_date, m.to_date, d.dept_name
FROM departments d
JOIN dept_manager m 
ON d.dept_no = m.dept_no
JOIN employees e 
ON m.emp_no = e.emp_no;


-- 8.3: Retrieve the average salary for the different departments

-- Retrieve all data from departments table
SELECT * FROM departments

-- Retrieve all data from dept_emp table
SELECT * FROM dept_emp

-- Retrieve all data from salaries table
SELECT * FROM salaries

-- Solution to 8.3
select d.dept_name, round(avg(s.salary)) as department_salary from departments d
join dept_emp de on d.dept_no = de.dept_no 
join salaries s on s.emp_no = de.emp_no 
group by d.dept_name ;

-- 8.4 (Ex.): Retrieve the average salary for the different departments where the
-- average_salary is more than 60000
select d.dept_name, round(avg(s.salary)) as department_salary from departments d
join dept_emp de on d.dept_no = de.dept_no 
join salaries s on s.emp_no = de.emp_no
where s.salary > 60000
group by d.dept_name ;

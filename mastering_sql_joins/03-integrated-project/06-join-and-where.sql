#############################
-- Task Six: JOIN and WHERE Used Together
-- In this task, you will retrieve data from tables
-- using JOIN and WHERE together
#############################

###########
-- JOIN and WHERE Used Together

-- 6.1: Extract the employee number, first name, last name and salary
-- of all employees who earn above 145000 dollars per year

-- Let us retrieve all data in the salaries table
SELECT * FROM salaries;

-- Solution to 6.1
select e.emp_no, e.first_name, e.last_name, s.salary 
from employees e 
inner join salaries s 
on e.emp_no = s.emp_no 
where s.salary > 145000
order by e.emp_no;



-- 6.2: What do you think will be the output of this query?

SELECT e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s 
ON e.emp_no = s.emp_no
WHERE s.salary > 145000;

-- 6.3 (Ex.): Select the first and last name, the hire date and the salary
-- of all employees whose first name is 'Mario' and last_name is 'Straney'
select e.first_name, e.last_name, e.hire_date, s.salary 
from employees e 
inner join salaries s 
on e.emp_no = s.emp_no 
where e.first_name = 'Mario'
and e.last_name = 'Straney';

-- 6.4: Join the 'employees' and the 'dept_manager' tables to return a subset
-- of all the employees whose last name is 'Markovitch'. 
-- See if the output contains a manager with that name
select e.*, dm.* from employees e 
left join dept_manager dm 
on e.emp_no = dm.emp_no 
where e.last_name = 'Markovitch';


-- 6.5: Join the 'employees' and the 'dept_manager' tables to return a subset
-- of all the employees who were hired before 31st of January, 1985
select e.*, dm.* from employees e 
left join dept_manager dm 
on e.emp_no = dm.emp_no 
where e.hire_date < '1985-01-31';
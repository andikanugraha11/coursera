#############################
-- Task One: Getting Started
-- In this task, we will retrieve data from the dept_manager_dup and
-- departments_dup tables in the database
#############################

-- 1.1: Retrieve all data from the dept_manager_dup table
select * from dept_manager_dup dmd order by emp_no ;

-- 1.2: Retrieve all data from the departments_dup table
select * from departments_dup dd order by dept_no ;

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

#############################
-- Task Three: Duplicate Records
-- In this task, you will retrieve data from the two 
-- tables with duplicate records using INNER JOIN
#############################

###########
-- Duplicate Records

-- 3.1: Let us add some duplicate records
-- Insert records into the dept_manager_dup and departments_dup tables respectively

INSERT INTO dept_manager_dup 
VALUES 	('110228', 'd003', '1992-03-21', '9999-01-01');
        
INSERT INTO departments_dup 
VALUES	('d009', 'Customer Service');



-- 3.2: Select all records from the dept_manager_dup table

SELECT *
FROM dept_manager_dup
ORDER BY dept_no ASC;

-- 3.3: Select all records from the departments_dup table

SELECT *
FROM departments_dup
ORDER BY dept_no ASC;

-- 3.4: Perform INNER JOIN as before

select dm.emp_no, dm.dept_no , dd.dept_name, dm.from_date, dm.to_date 
from dept_manager_dup dm 
inner join departments_dup dd 
on dm.dept_no = dd.dept_no 
order by dm.dept_no ;


-- 3.5: add a GROUP BY clause. Make sure to include all the fields in the GROUP BY clause
select dm.emp_no, dm.dept_no , dd.dept_name, dm.from_date, dm.to_date 
from dept_manager_dup dm 
inner join departments_dup dd 
on dm.dept_no = dd.dept_no 
group by dm.emp_no, dm.dept_no , dd.dept_name, dm.from_date, dm.to_date 
order by dm.dept_no ;
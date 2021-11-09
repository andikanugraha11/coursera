#############################
-- Task Seven: Using Aggregate Functions with Joins
-- In this task, you will retrieve data from tables in the employees database,
-- using Aggregate Functions with Joins
#############################

###########
-- Using Aggregate Functions with Joins

-- 7.1: What is the average salary for the different gender?
SELECT * from employees e ;
select e.gender, round(AVG(s.salary),2) as average_salary from employees e 
join salaries s 
on e.emp_no = s.emp_no 
group by e.gender ;


-- 7.2: What do you think will be the output if we SELECT e.emp_no?
SELECT e.emp_no, e.gender, AVG(s.salary) AS average_salary
FROM employees e
JOIN salaries s 
ON e.emp_no = s.emp_no
GROUP BY e.emp_no, gender; 

-- 7.3: How many males and how many females managers do we have in
-- employees database?
select e.gender, count(*) from employees e
join dept_manager dm 
on e.emp_no = dm.emp_no 
group by e.gender ;


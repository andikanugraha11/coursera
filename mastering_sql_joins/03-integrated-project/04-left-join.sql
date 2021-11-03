#############################
-- Task Four: LEFT JOIN
-- In this task, you will retrieve data from the two tables using LEFT JOIN
#############################

###########
-- LEFT JOIN

-- 4.1: Remove the duplicates from the two tables
DELETE FROM dept_manager_dup 
WHERE emp_no = '110228';
        
DELETE FROM departments_dup 
WHERE dept_no = 'd009';

-- 4.2: Add back the initial records
INSERT INTO dept_manager_dup 
VALUES 	('110228', 'd003', '1992-03-21', '9999-01-01');
        
INSERT INTO departments_dup 
VALUES	('d009', 'Customer Service');

-- 4.3: Select all records from dept_manager_dup
SELECT *
FROM dept_manager_dup
ORDER BY dept_no;

-- 4.4: Select all records from departments_dup
SELECT *
FROM departments_dup
ORDER BY dept_no;

-- Recall, when we had INNER JOIN
SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
JOIN departments_dup d 
ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- 4.5: Join the dept_manager_dup and departments_dup tables
-- Extract a subset of all managers' employee number, department number, 
-- and department name. Order by the managers' department number
select dmd.emp_no, dmd.dept_no, dd.dept_name 
from dept_manager_dup dmd
left join departments_dup dd 
on dmd.dept_no = dd.dept_no 
order by dmd.dept_no;

-- 4.6: What will happen when we d LEFT JOIN m?
select dmd.emp_no, dmd.dept_no, dd.dept_name 
from departments_dup dd 
left join dept_manager_dup dmd
on dmd.dept_no = dd.dept_no 
order by dmd.dept_no;


-- 4.7: Let's select d.dept_no
select dmd.emp_no, dmd.dept_no, dd.dept_name 
from departments_dup dd 
left join dept_manager_dup dmd
on dmd.dept_no = dd.dept_no 
order by dd.dept_no;


-- LEFT OUTER JOIN
select dmd.emp_no, dmd.dept_no, dd.dept_name 
from departments_dup dd 
left outer join dept_manager_dup dmd
on dmd.dept_no = dd.dept_no 
order by dd.dept_no;
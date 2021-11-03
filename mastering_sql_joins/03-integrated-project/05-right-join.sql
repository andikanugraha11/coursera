#############################
-- Task Five: RIGHT JOIN
-- In this task, you will retrieve data from the two tables using RIGHT JOIN
#############################

###########
-- RIGHT JOIN

-- We have seen LEFT JOIN in the previous task

SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
left JOIN departments_dup d 
ON m.dept_no = d.dept_no
ORDER BY dept_no;

-- 5.1: Let's use RIGHT JOIN
SELECT m.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
right JOIN departments_dup d 
ON m.dept_no = d.dept_no
ORDER BY dept_no;


-- 5.2: SELECT d.dept_no
SELECT d.dept_no, m.emp_no, d.dept_name
FROM dept_manager_dup m
right JOIN departments_dup d 
ON m.dept_no = d.dept_no
ORDER BY dept_no;


-- 5.3: d LEFT JOIN m
SELECT m.dept_no, m.emp_no, d.dept_name
FROM departments_dup d
left JOIN dept_manager_dup m
ON m.dept_no = d.dept_no
ORDER BY dept_no;
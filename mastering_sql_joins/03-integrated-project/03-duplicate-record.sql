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
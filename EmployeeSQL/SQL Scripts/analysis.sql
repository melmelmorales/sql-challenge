----Data Analysis----

---- QUESTION 1 ----
SELECT 
	s.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary	
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;

---- QUESTION 2 ----
SELECT
	e.first_name,
	e.last_name,
	EXTRACT (YEAR FROM hire_date) as YEAR
FROM employees as e
WHERE hire_date >= '1986-01-01 00:00:00'
	AND hire_date < '1987-01-01 00:00:00'
;

SELECT * FROM dept_manager;
---- QUESTION 3 ----
SELECT
	dm.dept_no,
	d.dept_name,
	e.emp_no as "dept_manager",
	e.last_name,
	e.first_name
FROM dept_manager as dm, employees as e, departments as d
WHERE e.emp_no=dm.emp_no
	AND dm.dept_no=d.dept_no;

---- QUESTION 4 ----
SELECT
	demp.dept_no,
	demp.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp as demp, employees as e, departments as d
WHERE e.emp_no=demp.emp_no
	AND demp.dept_no=d.dept_no;

---- QUESTION 5 ----
SELECT
	e.first_name,
	e.last_name,
	e.sex
FROM employees as e
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

---- QUESTION 6 ----
SELECT
	e.emp_no,
	e.last_name,
	e.first_name
FROM employees as e, dept_emp as de, departments as d
WHERE e.emp_no = de.emp_no 
	AND d.dept_no = de.dept_no 
	AND d.dept_name = 'Sales';

---- QUESTION 7 ----
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp as de, employees as e, departments as d
WHERE de.emp_no = e.emp_no AND d.dept_no = de.dept_no AND de.dept_no IN
(
	SELECT dept_no
	FROM departments 
	WHERE dept_name= 'Sales' 
		OR dept_name = 'Development'
);

---- QUESTION 8 ----
SELECT last_name,
	COUNT (last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name 
ORDER BY "Last Name Frequency" desc;
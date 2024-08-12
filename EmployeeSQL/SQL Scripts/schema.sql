---- (1) employees table ----
CREATE TABLE employees (
	emp_no INT NOT NULL ,
	emp_title_id VARCHAR (30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (30) NOT NULL,
	hire_date DATE NOT NULL
);

SELECT *
FROM employees;

---- (2) departments table ----
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

SELECT *
FROM departments;

---- (3) dept_emp table ----
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL
);

SELECT *
FROM dept_emp;

---- (4) dept_manager table ----
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL
);

SELECT *
FROM dept_manager;

---- (5) titles table ----
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(30) NOT NULL
);

SELECT *
FROM titles;

---- (6) salaries table ----
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

SELECT *
FROM salaries;

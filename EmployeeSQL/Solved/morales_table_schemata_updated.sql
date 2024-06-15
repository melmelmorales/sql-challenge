---- (1) employees table ----
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL ,
	emp_title_id VARCHAR (30),
	birth_date DATE,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (30),
	hire_date DATE
);

SELECT *
FROM employees;

---- (2) departments table ----
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

SELECT *
FROM departments;

---- (3) dept_emp table ----
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30)
);

SELECT *
FROM dept_emp;

---- (4) dept_manager table ----
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) ,
	emp_no INT PRIMARY KEY NOT NULL
);

SELECT *
FROM dept_manager;

---- (5) titles table ----
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(30)
);

SELECT *
FROM titles;

---- (6) salaries table ----
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT
);

SELECT *
FROM salaries;
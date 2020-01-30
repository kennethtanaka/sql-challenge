-- Drop table if exists
DROP TABLE departments;

-- Create new table
CREATE TABLE departments (
	department_number VARCHAR (4),
	department_name VARCHAR,
	PRIMARY KEY (department_number)
);

SELECT * FROM departments

-- Drop table if exists
DROP TABLE dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_number INT,
	department_number VARCHAR (4),
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (emp_number) REFERENCES employees (emp_number),
	FOREIGN KEY (department_number) REFERENCES departments (department_number)
	PRIMARY KEY (emp_number)
);

SELECT * FROM dept_emp

-- Drop table if exists
DROP TABLE employees;

-- Create new table
CREATE TABLE employees (
	emp_number INT,
	birthdate DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_number)
);

SELECT * FROM employees

-- Drop table if exists
DROP TABLE dept_manager;

-- Create new table
CREATE TABLE dept_manager (
	department_number VARCHAR (4),
	emp_number INT,
	start_date DATE,
	end_date DATE
	FOREIGN KEY (emp_number) REFERENCES employees (emp_number),
	FOREIGN KEY (department_number) REFERENCES departments (department_number),
	PRIMARY KEY (department_number, emp_number)
);

SELECT * FROM dept_manager

-- Drop table if exists
DROP TABLE salaries;

-- Create new table
CREATE TABLE salaries (
	emp_number INT,
	salary INT,
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (emp_number) REFERENCES employees (emp_number),
	PRIMARY KEY (emp_number)
);

SELECT * FROM salaries

-- Drop table if exists
DROP TABLE titles;

CREATE TABLE titles (
	emp_number INT,
	title VARCHAR,
	start_date DATE,
	end_date DATE,
	FOREIGN KEY (emp_number) REFERENCES employees (emp_number),
	PRIMARY KEY (emp_number)
);

SELECT * FROM titles


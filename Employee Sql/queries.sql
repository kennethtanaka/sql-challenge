SELECT * FROM departments;
SELECT * FROM dept_emp
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- List the following details of each employee: employee number, last name, first name, gender, and salary.

-- Perform an INNER JOIN on the two tables
SELECT 
employees.emp_number, 
employees.last_name, 
employees.first_name, 
employees.gender,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_number=salaries.emp_number;

--List employees who were hired in 1986.
SELECT 
emp_number, 
last_name, 
first_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT 
departments.department_number,
departments.department_name,
dept_manager.emp_number,
employees.last_name,
employees.first_name,
dept_manager.start_date,
dept_manager.end_date
FROM dept_manager
LEFT JOIN departments ON
dept_manager.department_number = departments.department_number
LEFT JOIN employees ON
dept_manager.emp_number = employees.emp_number;

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT 
employees.emp_number,
employees.last_name,
employees.first_name,
departments.department_name
FROM employees
LEFT JOIN dept_emp ON
employees.emp_number = dept_emp.emp_number
LEFT JOIN departments ON
dept_emp.department_number = departments.department_number;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE '%B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
employees.emp_number,
employees.first_name,
employees.last_name,
dept_emp.department_number
FROM employees
LEFT JOIN dept_emp ON
employees.emp_number = dept_emp.emp_number
	LEFT JOIN departments ON
	dept_emp.department_number = departments.department_number
	WHERE departments.department_name LIKE 'Sales';
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

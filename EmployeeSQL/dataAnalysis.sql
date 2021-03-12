-- Data Analysis

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, e.salary
FROM employees e
	JOIN salaries s
		ON e.emp_no = s.emp_no;
	
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
	JOIN departments d ON dm.dept_no = d.dept_no
	JOIN employees e on dm.emp_no = e.emp_no;
	
-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp
	JOIN employees e ON e.emp_no = dept_emp.emp_no
	JOIN departments d on d.dept_no = dept_emp.dept_no;
	
-- List first name, last name, and sex for employees whose first name is
--  "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WEHRE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their 
--  employee number, last name, first name, and department name.

-- List all employees in the Sales and Development departments, 
--  including their employee number, last name, first name, and department name.

-- In descending order, list the frequency count of employee last names, 
--  i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;
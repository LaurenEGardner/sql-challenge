-- Creating tables for the EmployeeDB

-- Create titles tableafter deleting any previous iterations
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);
-- Create employees table after deleting any previous iterations
DROP TABLE IF EXISTS employees;


-- Create salaries table after deleting any previous iterations
DROP TABLE IF EXISTS salaries;


-- Create departments table after deleting any previous iterations
DROP TABLE IF EXISTS departments;


-- Create dept_emp table after deleting any previous iterations
DROP TABLE IF EXISTS dept_emp;

-- Create dept_manager table after deleting any previous iterations
DROP TABLE IF EXISTS dept_manager;
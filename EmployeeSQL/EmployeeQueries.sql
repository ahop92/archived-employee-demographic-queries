SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Department_Employee";
SELECT * FROM "Department_Manager";
SELECT * FROM "Departments";
SELECT * FROM "Titles";

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Employees".sex,
"Salaries".salary
FROM "Employees"
INNER JOIN "Salaries" ON 
"Employees".emp_no = "Salaries".emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- Ref: https://www.sqlservercentral.com/forums/topic/using-wildcard-with-a-date-column
SELECT 
"Employees".first_name,
"Employees".last_name,
"Employees".hire_date
FROM "Employees"
WHERE "Employees".hire_date >= '1986-01-01' AND "Employees".hire_date <= '1986-12-31';


-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name.
SELECT 
"Department_Manager".dept_no,
"Departments".dept_name,
"Department_Manager".emp_no, 
"Employees".last_name,
"Employees".first_name
FROM "Department_Manager"
INNER JOIN "Departments" ON 
"Department_Manager".dept_no = "Departments".dept_no
INNER JOIN "Employees" ON
"Department_Manager".emp_no = "Employees".emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
"Department_Employee".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM "Department_Employee"
INNER JOIN "Employees" ON 
"Department_Employee".emp_no = "Employees".emp_no
INNER JOIN "Departments" ON
"Department_Employee".dept_no = "Departments".dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- Ref: https://www.w3schools.com/sql/sql_wildcards.asp
SELECT 
"Employees".first_name,
"Employees".last_name,
"Employees".sex
FROM "Employees"
WHERE "Employees".first_name = 'Hercules' AND "Employees".last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
"Department_Employee".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM "Department_Employee"
INNER JOIN "Employees" ON 
"Department_Employee".emp_no = "Employees".emp_no
INNER JOIN "Departments" ON
"Department_Employee".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales'; 

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
"Department_Employee".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM "Department_Employee"
INNER JOIN "Employees" ON 
"Department_Employee".emp_no = "Employees".emp_no
INNER JOIN "Departments" ON
"Department_Employee".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales' OR "Departments".dept_name = 'Development'; 

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT  
"Employees".last_name, 
COUNT("Employees".last_name) AS "Last Name Count"
FROM "Employees"
GROUP BY "Employees".last_name
ORDER BY "Last Name Count" DESC;
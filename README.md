# sql-challenge

## Background

The goal of this SQL analysis is to profile information about employees of the HP corporation from the 1980s and 1990s. The only remaining information on the employees from that era is contained in 6 separate CSV files.

The project was approached using two priamry approaches: 

### Data Engineering

The https://app.quickdatabasediagrams.com/#/ website tool was used to visualize the overall structure of the database. The data engineering consisted of manually evaluating each csv to identify the keys for each table and translating that to the corresponding structures in PostgreSQL. Lastly, primary and foreign keys were established given the common data shared among the different CSVs. 

### Data Analysis


SQL queries summarize the data via two new summary tables inserted into each worksheet with the following categories: 

Table 1: List of basic details of each employee including employee number, last name, first name, sex, and salary.

Table 2: List including first name, last name, and hire date for employees who were hired in 1986.

Table 3: List of the manager of each department including their department number, department name, the manager's employee number, last name, first name.

Table 4: List the department of each employee including employee number, last name, first name, and department name.

Table 5: List of the first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Table 6: List of all employees in the Sales department, including their employee number, last name, first name, and department name.

Table 7: List of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Table 8: In descending order, identifying how many employees share the same last name.



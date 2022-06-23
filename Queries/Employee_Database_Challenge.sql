-- Deliverable 1: The Number of Retiring Employees by Title
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
-- Create a new table using the INTO clause.
-- Join both tables on the primary key.
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
-- Export retirement_titles.csv

SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

SELECT * FROM retirement_titles;

-- Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table
-- Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'
-- Create a Unique Titles table using the INTO clause
-- Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title
-- Export as unique_titles.csv

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles 

-- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire
-- Retrieve number of titles frm Unique titles, create retiring titles table, group table by title, sort count column in descending order
-- Export as retiring_titles.csv 

SELECT count(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(title) DESC;

SELECT * FROM retiring_titles;

-- Deliverable 2: Employees Eligible for the Mentorship Program

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table
-- Retrieve the from_date and to_date columns from the Department Employee table
-- Retrieve the title column from the Titles table
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- Create a new table using the INTO clause
-- Join the Employees and the Department Employee tables on the primary key
-- Join the Employees and the Titles tables on the primary key
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.
-- Export the Mentorship Eligibility table as mentorship_eligibilty.csv

SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dept_emp.to_date = '9999-01-01')
ORDER BY employees.emp_no, titles.to_date DESC;

SELECT * FROM mentorship_eligibility;
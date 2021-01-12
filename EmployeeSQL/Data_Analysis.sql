--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employee.emp_no as "Employee Number", 
	employee.last_name as "Last Name" , 
	employee.first_name as "First Name", 
	employee.sex as "Sex",
	salary.salary as "Salary"
from salary
inner join employee on
(employee.emp_no = salary.emp_no);


--2. List first name, last name, and hire date for employees who were hired in 1986.
select * from employee;
Select first_name as "First Name" , 
	last_name as "Last Name" , 
	hire_date as "Hire Date"
From Employee
where  extract (year from hire_date) = 1986;
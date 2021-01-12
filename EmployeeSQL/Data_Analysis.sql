--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employee.emp_no as "Employee Number", 
	employee.last_name as "Last Name" , 
	employee.first_name as "First Name", 
	employee.sex as "Sex",
	salary.salary as "Salary"
from salary
inner join employee on
(employee.emp_no = salary.emp_no);



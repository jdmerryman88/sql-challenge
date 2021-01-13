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

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select department_manager.dept_no as "Department Number" , 
	department.dept_name as "Department Name",
	department_manager.emp_no as "Managers Employee Number", 
	employee.last_name as "Last Name", 
	employee.first_name as "First Name" 
from ((department_manager
inner join employee on 
department_manager.emp_no = employee.emp_no)
	  inner join department on 
	  department_manager.dept_no = department.dept_no ); 

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select department_employee.emp_no as "Employee Number", 
	employee.Last_name as "Last Name",
	employee.First_name as "First Name" ,
	department.Dept_Name as "Department Name"
from((department_employee
	  inner join employee on
	  department_employee.emp_no = employee.emp_no)
	 inner join department on
	 department_employee.dept_no = department.dept_no);

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name as "First Name" , last_name as "Last Name" , sex as "Sex"
From employee
Where first_name = 'Hercules' and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT emp_no as "Employee Number" , last_name as "Last Name" , first_name as "First Name",  department.dept_name as "Department Name"
FROM employee , department
WHERE department.dept_name = 'Sales' and emp_no IN 
(
  SELECT emp_no
  FROM department_employee
  WHERE dept_no IN
  (
    SELECT dept_no
    FROM department
    WHERE dept_name LIKE 'Sales'
  )
);

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp_no as "Employee Number" , last_name as "Last Name" , first_name as "First Name",  department.dept_name as "Department Name"
FROM employee , department
WHERE department.dept_name = 'Development' or department.dept_name = 'Sales' and emp_no IN 
(
  SELECT emp_no
  FROM department_employee
  WHERE dept_no IN
 (
  SELECT dept_no
  FROM department
  WHERE dept_name = 'Development' or dept_name='Sales'
  )
);

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name as "Last Name", count(last_name) as "Count"
from employee
group by last_name
order by "Count" DESC;







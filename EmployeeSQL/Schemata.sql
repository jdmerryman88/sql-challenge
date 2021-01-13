
create table department
(
	id serial ,
	dept_no varchar,
	dept_name varchar,
	primary key (dept_no)
);

select * from department;

create table Department_Employee
(
	id serial primary key,
	emp_no int,
	dept_no varchar,
	FOREIGN KEY (dept_no) references department(dept_no)
);
select * from department_employee;


create table Employee
(
	id serial,
	Emp_No int,
	Emp_Title_ID varchar,
	Birth_Date date,
	First_Name varchar,
	Last_Name varchar,
	Sex varchar,
	Hire_Date date,
	primary key (emp_no)
	
);
select * from employee;
drop table title;
Create table title 
(
	id serial ,
	Title_ID varchar,
	Title varchar,
	primary key (Title_ID)
);

select * from title

Create table salary 
(
	id serial ,
	emp_no int,
	salary int,
	primary key (emp_no)
);

select * from salary;


create table Department_Manager
(
	id serial,
	dept_no varchar,
	emp_no int,
	FOREIGN KEY (dept_no) references department(dept_no),
	primary key (emp_no)

);
select * from department_manager;


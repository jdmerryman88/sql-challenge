drop table department;

create table department
(
	id serial,
	Dept_No varchar,
	Dept_Name varchar,
	Primary Key (Dept_No) 
);

select * from department;

create table Department_Employee
(
	id serial primary key,
	Emp_No int,
	Dept_No varchar,
	FOREIGN KEY(Dept_No) REFERENCES department(Dept_No)

);
select * from department_employee

create table Department_Manager
(
	id serial primary key,
	Emp_No int,
	Dept_No varchar,
	FOREIGN KEY(Dept_No) REFERENCES department(Dept_No)

);
select * from department_manager

create table Employee
(
	id serial primary key,
	Emp_No int,
	Emp_Title_ID varchar,
	Birth_Date date,
	First_Name varchar,
	Last_Name varchar,
	
	
	Dept_No varchar,
	FOREIGN KEY(Dept_No) REFERENCES department(Dept_No)

);
select * from department_employee
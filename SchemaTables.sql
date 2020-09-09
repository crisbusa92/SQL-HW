
-- Create tables for importing CSV

create table departments(
	dept_no varchar(10) primary key not null, 
	dept_name varchar(30) not null
);

create table employees(
	emp_no int primary key , 
	emp_title_id varchar(30) ,  
	birth_date date , 
	first_name varchar(30) , 
	last_name varchar(30) , 
	sex varchar(5) , 
	hire_date date 
);

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
create table dept_emp(
	emp_no int,
	dept_no varchar(30) ,
	foreign key (emp_no) references employees (emp_no), 
	foreign key (dept_no) references departments (dept_no)
);

create table managers(
	dept_no varchar(30) ,
	emp_no int ,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table salaries(
	emp_no int primary key ,
	salary int ,
	foreign key (emp_no) references employees (emp_no)
);

create table titles(
	emp_title_id varchar(30) primary key, 
	title varchar(30) 
);

select * from titles;
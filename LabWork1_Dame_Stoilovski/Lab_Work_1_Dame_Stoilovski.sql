create database if not exists employees_dame_stoilovski;

show databases;

use employees_dame_stoilovski;

drop table employees;

create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
foreign key (department_id) references departments (department_id)
);

create table if not exists departments
(department_id int primary key,
department_name varchar(255) not null
);

create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int
);

alter table employees
add foreign key (department_id) references departments (department_id);

alter table employees
drop foreign key employees_ibfk_1;

create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
email varchar(255) unique,
foreign key (department_id) references departments (department_id)
);

create table if not exists employees
(employee_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) unique,
hire_date date default '2023-01-01',
Salary decimal(12,2),
Previous_exeprience ENUM('YES', 'NO'),
department_id int,
foreign key (department_id) references departments (department_id)
);


create table if not exists departments
(department_id int primary key,
department_name varchar(255) not null
);

alter table departments 
add Manager_id int,
add Location varchar(255);


create table if not exists managers
(Manager_id int primary key,
First_name varchar(255) not null,
Last_name varchar(255) not null,
Email varchar(255) unique not null,
Hire_date date not null
);


alter table departments 
add foreign key (Manager_id) references managers (Manager_id);








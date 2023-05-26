create database if not exists employees_valentin;

use employees_valentin;

drop table employees;

drop table departments;

create table if not exists departments
(department_id int primary key,
department_name varchar(255) not null,
manager_id int,
foreign key (manager_id) references managers (manager_id),
location varchar(255)
);

create table if not exists employees_valentin.employees
(employee_id int primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
deparmtent_id int,
department_id int,
email varchar(50) unique,
hire_date date default '2023-01-01',
salary decimal (10,2) not null,
previous_experiance ENUM('YES', 'NO'),
foreign key (department_id) references departments (department_id)
);

create table if not exists managers (
    manager_id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    email varchar(50) not null,
    hire_date date not null
);


alter table employees
add foreign key (department_id) references departments (department_id);



alter table departments
add foreign key (manager_id) references managers (manager_id);











use employees_test_robertprodanov;

/*
create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255)
);
*/

/*
 drop table employees;
*/

/*
create table if not exists departments
(department_id int primary key,
department_name varchar(255) not null
);
*/

/*
create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int
);
*/

/*
alter table employees 
add foreign key (department_id) references departments (department_id)
*/

/*
alter table employees 
drop foreign key employees_ibfk_1;
*/



create table if not exists employees
(employee_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
department_id int,
email varchar(255) unique,
hire_date date default('2023-01-01'),
foreign key (department_id) references departments (department_id)
);


rename table employees to employees_updated;
rename table employees_updated to employees ;





















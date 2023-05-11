 
Create table employees_lucho_stoymirov.employees(
Salary int,
Previous_expirience enum("Yes", "No"));


Create table employees_lucho_stoymirov.departments(
Manager_id int not null primary key,
Location varchar(255));


create table employees_lucho_stoymirov.managers(
Manager_id int not null primary key,
First_name varchar(255) not null,
Last_name  varchar(255) not null,
Email varchar(320) not null,
Hire_date date not null unique,
foreign key (Manager_id) references departments (Manager_id));
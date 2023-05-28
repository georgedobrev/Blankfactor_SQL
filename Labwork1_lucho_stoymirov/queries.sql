 
alter table employees_lucho_stoymirov.employees
add Salary decimal(10,2),
add Previous_expirience enum("Yes", "no");



alter table employees_lucho_stoymirov.departments
add Manager_id int,
add Location varchar(255);


create table employees_lucho_stoymirov.managers(
Manager_id int not null,
First_name varchar(255) not null,
Last_name  varchar(255) not null,
Email varchar(320) not null,
Hire_date date not null unique,
foreign key (Manager_id) references departments (Manager_id));
create table if not exists employees
(
employee_id int primary key,
first_name varchar(255),
last_name varchar(255)
);

Create table if not exists employees
(employee_id int,
first_name varchar(255),
last_name varchar(255),
primary key (employee_id)
);

Create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
foreign key (department_id) references departments (department_id)
);

Create table if not exists departments
(department_id int primary key,
department_name varchar(255) not null
);

Create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int
);

 alter table employees 
 add foreign key (department_id) references departments (department_id);


 alter table employees 
drop foreign key employees_ibfk_1;


Create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
email varchar(255) unique,
foreign key (department_id) references departments (department_id)
);


Create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
email varchar(255) unique,
hire_date date default '2023-01-01',
foreign key (department_id) references departments (department_id)
);

Create table if not exists employees
(employee_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
department_id int,
email varchar(255) unique,
hire_date date default '2023-01-01',
foreign key (department_id) references departments (department_id)
);

rename table employees to employees_updated;

rename table employees_updated to employees;

alter table employees 
add Salary Decimal(5,2) not null;

alter table employees 
add Previous_experience enum('YES', 'NO');


alter table departments 
add Manager_id int not null,
add Location varchar(255) not null;

create table if not exists managers
(
Manager_id int primary key,
First_Name varchar(255) not null,
Last_Name varchar(255) not null,
email varchar(255) not null unique,
hire_date date default ('2023-01-01') not null,
);

alter table departments 
add foreign key(manager_id) references managers(Manager_id);


show databases;

create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255)
)

drop table employees;


create table if not exists employees
(employee_id int,
first_name varchar(255),
last_name varchar(255),
primary key (employee_id)
);

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
drop foreign key employees_ibfk_1

create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
email varchar(225) unique,
foreign key (department_id) references departments (department_id)
);

create table if not exists employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
email varchar(225) unique,
hire_date date default '2023-01-01',
foreign key (department_id) references departments (department_id)
);

create table if not exists employees
(employee_id int primary key,
first_name varchar(255)not null,
last_name varchar(255) not null,
department_id int,
email varchar(225) unique,
hire_date date default '2023-01-01',
foreign key (department_id) references departments (department_id)
);

rename table employees to employees_updated;
rename table employees_updated to employees;

create table if not exists employees
(employee_id int primary key,
first_name varchar(255)not null,
last_name varchar(255) not null,
department_id int,
email varchar(225) unique,
hire_date date default '2023-01-01',
Salary int,
Previous_exeprience varchar(3) check (Previous_exeprience in ('yes', 'no')), 
foreign key (department_id) references departments (department_id)
);

alter table departments  
add Manager_id int,
add Location varchar(30);

create table if not exists managers
(Manager_id int unique,
First_name varchar(255)not null,
Last_name varchar(255) not null,
department_id int,
Email varchar(225) not null unique,
Hire_date  date default '2023-01-01' not null,
foreign key (Manager_id) references departments (department_id) 
);
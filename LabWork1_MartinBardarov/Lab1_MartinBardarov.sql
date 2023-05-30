
Create table if not exists employees
(employee_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) unique,
hire_date date default '2023-01-01',
department_id int,
foreign key (department_id) references departments (department_id));

Create table if not exists departments
(department_id int primary key
,
department_name varchar(255) not null
);

alter table employees 
add column salary decimal(10,2);

alter table employees 
add column previous_experience ENUM('Yes', 'No'); 

ALTER TABLE departments
ADD COLUMN manager_id int;


ALTER TABLE departments
ADD COLUMN location varchar(255);

CREATE TABLE IF NOT EXISTS managers (
    manager_id int primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) not null unique,
    hire_date date not null
);

alter table departments add foreign key (manager_id) references managers(manager_id);


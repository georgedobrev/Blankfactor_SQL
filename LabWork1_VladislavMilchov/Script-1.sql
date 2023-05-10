create table employees
(employee_id int primary key,
first_name varchar(255),
last_name varchar(255),
department_id int,
email varchar(255) unique,
hire_date date default '2023-01-01',
foreign key (department_id) references departments (department_id)
);


create table if not exists departments
(department_id int,
department_name varchar(255) not null,
primary key (department_id)
);

alter table employees add column salary decimal(10,2) not null;

alter table employees add column previous_experience enum('yes','no') not null;

alter table departments
add manager_id int,
add location  varchar(255);

create table managers
(manager_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) unique not null,
hire_date date not null
);

alter table departments 
add foreign key (manager_id) references managers(manager_id);



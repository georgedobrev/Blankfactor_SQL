show databases;

create table if not exists departments
(department_id int primary key,
department_name varchar(255) not null
);

create table if not exists employees
(employee_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
department_id int,
email varchar(255) not null unique,
hire_date date default '2023-01-01',
foreign key (department_id) references departments (department_id)
);

alter table employees
add salary decimal(7,
2),
add previous_experience ENUM("yes",
"NO");

alter table departments
add manager_id int,
add location varchar(255),
add foreign key (manager_id) references managers (manager_id);

create table if not exists managers
(manager_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) not null unique,
hire_date date not null
);

use employees_martin;

CREATE TABLE IF NOT EXISTS managers (
    manager_id int primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) not null unique,
    hire_date date not null,
    foreign key (manager_id) references departments (department_id)
);

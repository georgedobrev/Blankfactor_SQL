use employees_test_hristochipev;

alter table employees add salary decimal(10,2);
alter table employees add previous_experience enum('yes','no');

alter table departments add manager_id int;
alter table departments add location varchar(255);

create table managers (
manager_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) not null unique,
hire_date date not null
);

alter table departments add foreign key (manager_id) references managers(manager_id); 

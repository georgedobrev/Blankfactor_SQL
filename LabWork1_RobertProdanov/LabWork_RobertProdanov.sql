/*Task1*/

use employees_test_robertprodanov

alter table employees add salary decimal(10,2) not null;
alter table employees add previous_experience enum('yes','no') not null;

/*Task2*/

alter table departments add manager_id int not null;
alter table departments add location varchar(255) not null;

/*Task3*/

create table managers (
manager_id int primary key,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) not null unique,
hire_date date not null
);

alter table departments 
add foreign key (manager_id) references managers(manager_id); 




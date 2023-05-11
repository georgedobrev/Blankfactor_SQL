alter table employees  
add Salary decimal(5,2),
add Previous_experience ENUM('Yes', 'No');


alter table departments 
add Manager_id int,
add Location varchar(255);

create table if not exists managers 
(
Manager_id int unique,
First_name varchar(255) not null,
Last_name varchar(255) not null,
Email varchar(255) unique not null,
Hire_date date not null
);

alter table departments add foreign key (Manager_id) references managers(Manager_id);
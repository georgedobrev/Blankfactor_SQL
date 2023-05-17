#TASK1
alter table employees 
add Salary Decimal(5,2);
alter table employees 
add Previous_experience enum('YES', 'NO');

#TASK2
alter table departments 
add Manager_id int,
add Location varchar(255) ;


#TASK3
create table if not exists managers
(
Manager_id int primary key,
First_Name varchar(255) not null,
Last_Name varchar(255) not null,
email varchar(255) not null unique,
hire_date date not null,
);

alter table departments 
add foreign key(manager_id) references managers(Manager_id);


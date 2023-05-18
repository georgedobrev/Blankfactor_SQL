USE employees_milcho;

ALTER TABLE employees 
ADD COLUMN salary DECIMAL(10,2),
ADD COLUMN previous_exeprience ENUM("Yes","No");

ALTER TABLE departments  
ADD COLUMN manager_id INT,
ADD COLUMN location varchar(255);

create table if not exists managers
(manager_id INT primary key,
first_name varchar(255) NOT null,
last_name varchar(255) NOT null,
email  varchar(255) NOT null unique,
hire_date date not null);

alter table departments 
add foreign key (manager_id) references managers (manager_id);

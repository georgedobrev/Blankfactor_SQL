alter table employees
add salary decimal(10,2),
add previous_experience enum('Yes', 'No');

alter table departments
add manager_id int,
add location varchar(255);

create table if not exists managers
(
	manager_id int primary key,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	email varchar(255) unique not null,
	hire_date date not null
);

alter table departments
add foreign key (manager_id) references managers(manager_id);
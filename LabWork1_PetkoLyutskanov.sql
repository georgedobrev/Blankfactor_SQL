alter table employees
add salary decimal(10,2) not null,
add previous_experience enum('Yes', 'No') not null;

alter table departments
add manager_id int not null,
add location varchar(255) not null;

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
alter table employees
add column salary decimal(10,2),
add column previous_experience
enum('Yes','No')

alter table departments
add manager_id int,
add location varchar(50);

create table managers(
Manager_id int primary key
auto_increment,
  department_id int not null,
  First_name varchar(50) not null,
  Last_name varchar(50) not null,
  Email varchar(255) not null unique,
  Hire_date Date not null,
  foreign key(department_id)
  Referances departments(Department_id)
  );

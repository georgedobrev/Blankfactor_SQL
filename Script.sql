alter table employees 
add column email varchar(255);

alter table employees 
add column hire_date date default ('2023-01-01');


insert into employees (
employee_id, first_name, last_name, email, hire_date, department_id, Salary, Previous_experience  )
values (1, 'Ben', 'Daril','ben@gmail.com','2023-01-01', 123, 100.50, 'yes');


insert into managers (
manager_id,
first_name,
last_name,
email,
hire_date)
values
(999, 'Steve', 'Peterson', 'steve@email.com', '2023-01-01'),
(888, 'Ana', 'Jonson', 'ana@email.com', '2023-01-02');


insert into employees (
employee_id,
first_name,
last_name,
email,
hire_date,
department_id,
salary,
previous_experience)
values
(2, 'Ben', 'Daril', 'ben@email.com', '2023-01-02', 123, 100.50, 'yes');

insert into employees (
employee_id,
first_name,
last_name,
email,
hire_date,
department_id,
salary,
previous_experience)
values
(5, 'Ben', 'Johnson', 'ben@email.com', '2023-01-05', 456, 99.50, 'yes');

Create table if not exists employees_newarrivals (employee_id int primary key,
first_name varchar(255) not null
,
last_name varchar(255) not null
,
email varchar(255) unique,
hire_date date
);

insert into employees_newarrivals
(employee_id, first_name, last_name, email, hire_date)
select employee_id, first_name, last_name, email, hire_date
from employees
where hire_date >= '2023-01-03';

update employees
set department_id = 456
where employee_id =
3
;

commit;
update employees
set department_id = 789
where employee_id = 3;
rollback;

commit;
update employees
set department_id = 789;
rollback;

commit;
delete from employees
where employee_id = 2;
rollback;

truncate employees_newarrivals;

#TASK1

insert into managers(Manager_id,First_Name,Last_Name,email,hire_date)
values (777, 'Mikael', 'Fridgeman','mik87@gmail.com', '2023-04-23');

insert into departments (department_id, department_name,Manager_id, Location)
values(789,'HR', 777, 'Berlin');

insert into employees (employee_id,first_name , last_name ,department_id, Salary, Previous_experience)
values(4,'Robert', 'Bosch', 789, 245.60, 'no') ;

#TASK2

commit;
update employees set employee_id = 4, Salary = 120 where department_id = 789;

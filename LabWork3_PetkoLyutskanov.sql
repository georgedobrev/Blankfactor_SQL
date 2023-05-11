insert into managers
values (777, 'Ivana', 'Ivanova', 'ivana@abv.bg', '2021-02-03');

insert into departments
values (789, 'HR', 777, 'Sofia');

insert into employees 
values (6, 'Stefani', 'Ivanova', 789, 'stefani@abv.bg', '2022-01-01', 3700, 'Yes');

update employees 
set department_id = 789, salary = 120
where employee_id = 4;

select * from employees;
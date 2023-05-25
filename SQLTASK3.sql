use employees_test_antonio_nikolov;

select * from employees;

insert into employees
values (6,'Antonio','Nikolov',789,'antonio@email.com','2023-10-05',100.66,'no');

commit;

update employees
set department_id = 789,salary = 120
where employee_id = 4;

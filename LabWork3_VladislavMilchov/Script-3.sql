insert departments
values
(789, 'HR', 777, 'sofia');

insert into employees
value
(6, 'pavel', 'pavlov', 789, 'pavkata@email.com', '2023-01-01', 200, 'yes');

commit;

update employees 
set department_id = 789 , salary = 120
where employee_id = 4;


insert into employees
values
(6, 'Martin', 'Bardarov', 'bardarov@email.com', '2023-04-19', 789, 800, 'yes');

commit;

update employees set department_id = 789,salary = 120 where employee_id = 4;

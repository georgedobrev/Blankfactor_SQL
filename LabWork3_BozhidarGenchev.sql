-- this is task1
insert into employees_bozhidar
(employee_id,
firstName,
lastname ,
email,
hire_date ,
department_id,
salary,
previous_experience)
values 
(2, 'Bozhidar', 'Genchev', 'bozhidar.genchev@blankfactor.com', '2023-01-01', 590, 800, 'yes');

-- this is task2
commit;
update employees_bozhidar 
set department_id = 789, salary = 120
where employee_id = 4;
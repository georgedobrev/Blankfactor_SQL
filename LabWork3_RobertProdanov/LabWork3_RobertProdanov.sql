/*Task1*/
insert into managers
values (777, 'Nikolai', 'Hristov', 'nikolai@abv.bg', '2020-01-03');

insert into departments
values (789, 'HR', 'Varna', 777);

insert into employees 
values(6,'Petyr','Todorov',789,'petyr@email.com', '2023-02-02', 'no', 125.78)

/*Task2*/
update employees 
set department_id = 789,
salary = 120
where employee_id = 4;


use employees_dimov;

--Task1 

insert into managers 
values
(777, 'George', 'Ivanov', 'georgeivanov@email.com', '2023-01-01')
;

insert into departments 
values
(789, 'HR', 777, 'Sofia')
;

insert into employees 
values
(6,
'Ivan',
'Ivanov',
789,
'ivan@email.com',
'2023-01-01',
1000.50,
'No'
);

--Task2

commit;
update employees 
set department_id = 789, salary = 120
where employee_id = 4;
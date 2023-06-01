
insert into employees 
values(6,'Ivan','Ivanov',789,'ivan@email.com',);


commit;
update employees 
set department_id = 789, salary = 120
where employee_id = 4;
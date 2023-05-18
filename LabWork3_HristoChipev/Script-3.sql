insert into employees values (6,'Hristo','Chipev',789,'hristo@email.com','2023-02-01',45.66,'no');

commit;
update employees set department_id = 789,salary = 120 where employee_id = 4;

select * from employees;
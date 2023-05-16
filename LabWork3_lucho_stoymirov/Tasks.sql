insert into employees values (6,'lucho','stoymirov',789,'ls@mail.com','2023-01-06',300.50,'no');
commit;

update employees set department_id = 789,salary = 120 where employee_id = 4;

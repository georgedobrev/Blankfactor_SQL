insert employees values (6,'Maya','Marinova', 789, 'maya@mail.com','2023-01-06', 200.50, 'yes');

commit;

update employees 
set department_id = 789,
salary = 120
where employee_id = 4;

commit;


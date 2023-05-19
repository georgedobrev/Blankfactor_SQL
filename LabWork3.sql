use employees_aleksandararsov;

insert into employees (
employee_id,
first_name ,
last_name ,
email ,
hire_date ,
salary ,
previous_experience ,
department_id 
)
values (6,'Aleksandar','Arsov','email@email.com','2023-01-01',600,'yes', 789);

commit;

update employees 
set salary = 120
where employee_id  = 4;

commit;

UPDATE employees
SET department_id = 789
WHERE employee_id = 4;
COMMIT;
use employees_martin;

INSERT INTO managers
(manager_id, first_name, last_name, email, hire_date)
VALUES(9, 'Marto', 'Bardarov', 'marsto@blankfactor.com', '2023-05-05');


INSERT INTO departments 
(department_id, department_name, manager_id, location)
VALUES(766, 'HR', 777, 'Sofia');



INSERT INTO employees
(employee_id, first_name, last_name, email, hire_date,department_id,  salary, previous_experience)
VALUES(666, 'Marto', 'Bardarov','marto@blankfactor.com', '2023-05-05' ,766, 2500, 'Yes');



UPDATE employees
set department_id =766
SET  salary=120
WHERE employee_id=4;


select * from  employees
select * from  departments
select * from managers 

 

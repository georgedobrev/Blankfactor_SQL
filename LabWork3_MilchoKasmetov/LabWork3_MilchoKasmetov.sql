use employees_milcho;

INSERT INTO managers
(manager_id, first_name, last_name, email, hire_date)
VALUES(777, 'Milcho', 'Kasmetov', 'milcho.kasmetov@blankfactor.com', '2023-05-05');

commit;

INSERT INTO departments 
(department_id, department_name, manager_id, location)
VALUES(789, 'HR', 777, 'Sofia');

commit;

INSERT INTO employees
(employee_id, first_name, last_name, department_id, email, hire_date, salary, previous_exeprience)
VALUES(6, 'Milcho', 'Kasmetov', 789, 'milcho.kasmetov@blankfactor.com', '2023-05-05', 25000, 'no');

commit;

INSERT INTO employees
(employee_id, first_name, last_name, department_id, email, hire_date, salary, previous_exeprience)
VALUES(4, 'Milcho44', 'Kasmetov', 789, 'milcho.kasmetov2@blankfactor.com', '2023-05-05', 25000, 'no');

commit;

UPDATE employees
SET  salary=120
WHERE employee_id=4;

commit;

select * from  employees
select * from  departments
select * from managers 
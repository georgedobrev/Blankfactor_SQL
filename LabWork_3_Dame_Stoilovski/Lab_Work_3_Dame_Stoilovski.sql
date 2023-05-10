use employees_dame_Stoilovski

insert into employees (
employee_id,
first_name,
last_name,
email,
hire_date,
Salary,
Previous_exeprience,
department_id)
values
(6, 'Dame', 'Stoilovski', 'dame@email.com', '2023-02-03', 1000, 'yes', 789);

commit;

select * from employees e 

update employees 
set salary = 120
where employee_id  = 4;

commit;
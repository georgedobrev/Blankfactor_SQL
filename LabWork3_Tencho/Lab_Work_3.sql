#LAB WORK 3
use employees_test_Tencho;

#task 1:
insert into employees 
(employee_id,
first_name,
last_name,
email,
hire_date,
department_id,
salary,
previous_experience)
values 
(6, 'Zac', 'Wayson', 'zac@email.com', '2023-01-01', 789, 110, 'yes');

#task 2:
commit;
update employees 
set department_id = 789, salary = 120
where employee_id = 4;
 
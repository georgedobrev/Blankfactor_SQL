

insert into employees
(
employee_id,
first_name,
last_name,
department_id,
email,
hire_date,
salary,
previous_experiance)


values (6, 'Valentin', 'Arnautski', 789, 'valio@email.com', '2023-05-06', 800, 'yes'),
values (4, 'Joe', 'Rogan', 789, 'joe@email.com', '2023-05-06', 800, 'yes');

commit;
 

update employees set department_id = 789,salary = 120 where employee_id = 4;

commit;



 


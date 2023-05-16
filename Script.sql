
#TASK1

insert into employees (employee_id, first_name , last_name ,department_id, Salary, Previous_experience)
values(4,'Robert', 'Bosch', 789, 245.60, 'no') ;

insert into departments (department_id, department_name,Manager_id, Location)
values(789,'HR', 777, 'Berlin');

#TASK2

commit;
update employees set department_id = 789, Salary = 120 where employee_id = 4;

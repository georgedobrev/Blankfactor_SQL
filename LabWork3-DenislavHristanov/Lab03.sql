insert into employees(employee_id,
first_name,last_name,email,phone_number,hire_date,salary,
manager_id,department_id)
values('Ivan','Ivanov','ivan@email.com','0896209815''2023-02-03',123,456);


start transaction;
update employees 
set department_id = 789,salary = 120
where employee_id = 4;
commit;
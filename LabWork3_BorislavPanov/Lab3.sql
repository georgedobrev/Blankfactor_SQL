-- Task 1

INSERT INTO managers VALUES (777, "Ivan", "Robertson", "ivan@email.com", '2023-01-01');

INSERT INTO departments VALUES (789, 'HR', 777, 'Munich')


INSERT INTO employees (
employee_id,
first_name,
last_name,
email,
hire_date,
department_id,
salary,
previous_experience)
values
(6, 'Borislav', 'Panov', 'borislavpanov@hotmail.com', '2023-04-19', 789, 105.50, 'yes');


-- Task 2

COMMIT;
UPDATE employees
SET department_id = 789, salary = 120
WHERE employee_id = 4;
-- Task 1

WITH avg_salary_all AS (
    SELECT AVG(salary) AS avg_salary_all
    FROM employees
), 
avg_salary_hr AS (
    SELECT AVG(salary) AS avg_salary_hr
    FROM employees
    WHERE department_id = 789
),
employee_salary AS (
    SELECT e.employee_id, e.first_name, e.last_name, e.salary
    FROM employees e
)
SELECT es.salary, asa.avg_salary_all, ash.avg_salary_hr
FROM employee_salary es
CROSS JOIN avg_salary_all asa
CROSS JOIN avg_salary_hr ash;


-- Task 2

SELECT d.department_name, d.Location, m.First_name, m.Last_name FROM departments d
JOIN managers m ON d.Manager_id = m.Manager_id;

CREATE VIEW view_department AS 
SELECT d.department_name, d.Location, CONCAT(m.First_name, ' ', m.Last_name) AS manager_full_name
FROM departments d
JOIN managers m ON d.Manager_id = m.Manager_id;



SELECT * FROM view_department;

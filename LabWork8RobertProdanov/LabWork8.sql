/*Task1*/

WITH avg_salary_cte AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
),
hr_avg_salary_cte AS (
    SELECT department_name, emp.department_id, AVG(emp.salary) AS avg_dep_salary
    FROM employees emp
    JOIN departments dept ON emp.department_id = dept.department_id
    WHERE department_name = 'HR'
    GROUP BY emp.department_id, department_name
)
SELECT emp.first_name, emp.salary, avg_salary_cte.avg_salary, hr_avg_salary_cte.department_name, hr_avg_salary_cte.avg_dep_salary
FROM avg_salary_cte
JOIN hr_avg_salary_cte ON 1=1
JOIN employees emp ON 1=1;

/*Task2*/

SELECT 
    d.department_name,
    concat(m.first_name, ' ', m.last_name) as manager_name,
    d.manager_id,
    d.location
FROM departments d
JOIN managers m on d.manager_id = m.manager_id;

CREATE temporary table departments_managers_temp as
SELECT 
    d.department_name,
    concat(m.first_name, ' ', m.last_name) as manager_name,
    d.manager_id,
    d.location
FROM departments d
JOIN managers m on d.manager_id = m.manager_id;

create or replace view view_department_manager as
SELECT 
    d.department_name,
    concat(m.first_name, ' ', m.last_name) as manager_name,
    d.manager_id,
    d.location
FROM departments d
join managers m on d.manager_id = m.manager_id;

SELECT * FROM department_manager_temp;

SELECT * FROM view_department_manager;


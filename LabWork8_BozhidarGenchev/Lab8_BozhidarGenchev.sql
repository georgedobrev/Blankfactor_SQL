USE employees_milcho;

WITH Avg_Salary_All_CTE AS (
  SELECT AVG(salary) AS Avg_Salary_All  
  FROM employees
),
Avg_Salary_HR_CTE AS (
  SELECT e.department_id, d.department_name, AVG(e.salary) AS Avg_Salary_HR 
  FROM employees e
  JOIN departments d ON e.department_id = d.department_id
  WHERE d.department_name = 'HR'
  GROUP BY e.department_id, d.department_name
)
SELECT e.first_name, e.last_name, e.salary, al.Avg_Salary_All, hr.Avg_Salary_HR
FROM employees e
JOIN Avg_Salary_All_CTE al
CROSS JOIN Avg_Salary_HR_CTE hr;

CREATE TEMPORARY TABLE temp_ManagerDepartment AS
SELECT CONCAT(m.first_name, ' ', m.last_name) AS Manager_Full_Name, d.department_name, d.location
FROM departments d
INNER JOIN managers m ON m.manager_id = d.manager_id;

SELECT * FROM temp_ManagerDepartment;

CREATE OR REPLACE VIEW view_ManagerDepartment AS
SELECT CONCAT(m.first_name, ' ', m.last_name) AS Manager_Full_Name, d.department_name, d.location
FROM departments d
INNER JOIN managers m ON m.manager_id = d.manager_id;

SELECT * FROM view_ManagerDepartment;

-- Task 1:

-- Write a query to retrieve information about each employee’s salary, the average salary for all employees and the average salary for the HR department. Write the query using consecutive CTEs.


with cte1 as (
select
avg(salary) as avg_salary
from employees
), 
cte2 as(
select
department_name,
employees.department_id,
avg(salary) as avg_dep_salary
from employees  
join departments  on employees.department_id  = departments.department_id 
group by department_id
having department_name = "HR"
)
select 
first_name, 
salary, 
cte1.avg_salary, 
cte2.department_name, 
cte2.avg_dep_salary
from cte1 join cte2 join employees

-- Task 2:

-- Write a query to retrieve information about each department name, its location and manager. Put the above query in a temporary table and in a view. Run select statements to retrieve 
-- all data from the temporary table/view.



create temporary table temp_department
select
departments.department_name, 
departments.location,
concat(managers.firstName , ' ', managers.lastName) as manager
from departments  
join managers  on departments.manager_id = managers.manager_id;

create or replace view  view_department as 
select
departments.department_name, 
departments.location,
concat(managers.firstName , ' ', managers.lastName) as manager
from departments  
join managers  on departments.manager_id = managers.manager_id;


select * from temp_department;
select * from view_department;
with cte1 as (
select
avg(salary) as avg_salary
from employees
), 
cte2 as(
select
department_name,
e.department_id,
avg(salary) as avg_dep_salary
from employees e 
join departments d on e.department_id  = d.department_id 
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



create temporary table temp_department
select
d.department_name, 
d.location,
concat(m.first_name , ' ', m.last_name) as manager
from departments d 
join managers m on d.manager_id = m.manager_id;

create view view_department as
select
d.department_name, 
d.location,
concat(m.first_name , ' ', m.last_name) as manager
from departments d 
join managers m on d.manager_id = m.manager_id;

select * from temp_department;
select * from view_department;



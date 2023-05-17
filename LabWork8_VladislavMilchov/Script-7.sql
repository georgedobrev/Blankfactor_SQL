with cteAvg as (
select
avg(salary) as avg_salary
from employees
), 
cteHR as(
select
department_name,
e.department_id,
avg(salary) as avg_hr_salary
from employees e 
join departments d on e.department_id  = d.department_id 
group by department_id
having department_name = "HR"
)
select 
first_name, 
salary, 
cteAvg.avg_salary, 
cteHR.department_name, 
cteHR.avg_hr_salary
from cteAvg join cteHR join employees


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
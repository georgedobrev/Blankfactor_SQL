#TASK 1
with cte as (
select 
	round(avg(salary)) as avg_salary
from employees e 
),
cte2 as (
select 
	department_name
	, e.department_id 
	, round(avg(salary)) as avg_salary_hr
	from employees e 
	join departments d on e.department_id = d.department_id 
	group by department_id 
	having department_name = 'HR'
)
select 
	first_name,
	Salary, 
	cte.avg_salary,
	cte2.avg_salary_hr
	from cte
	join cte2
	join employees



#TASK 2
select 
	d.department_name 
	, concat(m.First_name, ' ', m.Last_name) as manager_name 
	, d.Manager_id 
	, d.Location 
from departments d 
join managers m on d.Manager_id = m.Manager_id;

create temporary table department_manager_temp
select 
	d.department_name 
	, concat(m.First_name, ' ', m.Last_name) as manager_name 
	, d.Manager_id 
	, d.Location 
from departments d 
join managers m on d.Manager_id = m.Manager_id;

create or replace view view_department_manager as 
select 
	d.department_name 
	, concat(m.First_name, ' ', m.Last_name) as manager_name 
	, d.Manager_id 
	, d.Location 
from departments d 
join managers m on d.Manager_id = m.Manager_id;

select * from department_manager_temp;

select * from view_department_manager;

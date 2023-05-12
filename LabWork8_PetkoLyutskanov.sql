with cte1 as
(
	select department_id, avg(salary) as avg_salary
	from employees
	group by department_id
),
cte2 as
(
	select avg(salary) as avg_hr_department_salary
	from employees as e2
	join departments as d2
	on e2.department_id = d2.department_id
	where d2.department_name = 'HR'
)
select e.first_name, d.department_name, e.salary, cte1.avg_salary, cte2.avg_hr_department_salary
from employees as e
join departments as d
on e.department_id = d.department_id
join cte1 on e.department_id = cte1.department_id
cross join cte2;

# task 2

create temporary table temp_department
select d.department_name, d.location, m.first_name from departments as d
join managers as m
on d.manager_id = m.manager_id;

create or replace view view_department as
select d.department_name, d.location, m.first_name
from departments as d
join managers as m
on d.manager_id = m.manager_id;

select * from temp_department;
select * from view_department;

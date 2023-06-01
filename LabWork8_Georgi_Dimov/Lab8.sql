--Task1

with cte as (
    select round(avg(salary)) as avg_salary
    from employees
),
cte2 as (
    select 
        department_name,
        e.department_id,
        round(avg(salary)) as avg_salary_hr
    from employees e
    join departments d on e.department_id = d.department_id
    where department_name = 'HR'
    group by department_id
)
select 
    e.first_name,
    e.salary,
    cte.avg_salary,
    cte2.avg_salary_hr
from employees e
join cte
join cte2;

--Task2

create temporary table temp_department
select d.department_name, d.location, concat(m.first_name," " ,m.last_name) as manager_name from departments as d
join managers as m
on d.manager_id = m.manager_id
;

create or replace view view_department as
select d.department_name, d.location, concat(m.first_name," " ,m.last_name) as manager_name
from departments as d
join managers as m
on d.manager_id = m.manager_id
;

select * from temp_department;
select * from view_department;
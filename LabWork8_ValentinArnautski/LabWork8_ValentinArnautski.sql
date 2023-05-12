with Avg_Salary_All_CTE as (
  select  avg(salary) as avg_salary
  from employees
), 
Avg_Salary_HR_CTE as (
  select e.department_id, d.department_name, avg(e.salary) as Avg_Salary_HR 
  from employees e
  join departments d on e.department_id = d.department_id
  where d.department_name = 'HR'
  group by e.department_id, d.department_name
)
select  e.first_name, e.last_name, e.salary, al.avg_salary as Avg_Salary_All, hr.Avg_Salary_HR
from employees e
join Avg_Salary_All_CTE al
join Avg_Salary_HR_CTE hr on e.department_id = hr.department_id
where e.department_id = hr.department_id


create temporary table temp_ManagersDeparment
select m.first_name  as manager_fullname, d.department_name, d.location from departments d
inner join managers m on m.manager_id  = d.manager_id ;

select * from temp_ManagersDeparment


create or replace view view_ManagerDepartment as
select concat(m.first_name,' ' ,m.last_name) as Manager_Full_Name , d.department_name ,d.location from departments d 
inner join managers m on m.manager_id = d.manager_id ;

select * from view_ManagerDepartment




use employees_milcho;

with Avg_Salary_All_CTE as 
(
select avg(e.salary) as Avg_Salary_All  from employees e
)
, 
Avg_Salary_HR_CTE as 
(
select e2.department_id ,d2.department_name,  avg(e2.salary) as Avg_Salary_HR from employees e2
join departments d2 on e2.department_id = d2.department_id
where d2.department_name in ('HR')
group by d2.department_id 
)

select e.first_name ,e.last_name ,e.salary , al.Avg_Salary_All ,hr.Avg_Salary_HR
from Avg_Salary_All_CTE al join Avg_Salary_HR_CTE hr join employees e 
 
create temporary table temp_ManagerDepartment
select concat(m.first_name,' ' ,m.last_name) as Manager_Full_Name , d.department_name ,d.location from departments d 
inner join managers m on m.manager_id = d.manager_id ;

select * from temp_ManagerDepartment

create or replace view view_ManagerDepartment as
select concat(m.first_name,' ' ,m.last_name) as Manager_Full_Name , d.department_name ,d.location from departments d 
inner join managers m on m.manager_id = d.manager_id ;

select * from view_ManagerDepartment
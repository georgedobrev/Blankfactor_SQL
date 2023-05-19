USE employees_milcho;

select employee_id, first_name, last_name, email, hire_date, department_id, salary
from employees
union
select
employee_id
, first_name
, last_name
,null as email
,null as hire_date
,null as department_id
,null as salary
from employees_duplicate;


use world;

select c.Name ,c.District ,c.CountryCode  from city c
where CountryCode in (select c2.Code  from country c2 where c2.Continent in ('Europe')) 


select c.Name ,c.Population  from country c 
where c.Code in (select c2.CountryCode  from city c2
group by c2.CountryCode
having sum(c2.Population) > 1000000);

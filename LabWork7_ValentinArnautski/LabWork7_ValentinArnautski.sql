USE employees_valentin;

create table if not exists employees_duplicate(
employee_id int, 
first_name varchar(255), 
last_name varchar(255)
)

select *
from employees
union
select
employee_id, first_name, last_name, null, null, null, null, null 
from employees_duplicate;


use world;

select c.Name as City ,c.District,c.CountryCode  from city c
where CountryCode in (select c2.Code  from country c2 where c2.Continent in ('Europe')) 


select * from country c 
where c.Code in (select c2.CountryCode  from city c2
group by c2.CountryCode
having sum(c2.Population) > 1000000);
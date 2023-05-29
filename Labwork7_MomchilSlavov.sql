1:
select employee_id, first_name, last_name, email, hire_date, department_id, salary
from employees
union all
select
employee_id
, first_name
, last_name
,null as email
,null as hire_date
,null as department_id
,null as salary
from employees_duplicate;


2:
select Name , District , CountryCode  from city 
where CountryCode in (select code  from country where continent = 'Europe') 


3:
select 
c.Name as Country
, sum(c2.Population) as TotalCityPopulation
from country c 
join city c2 on c.Code = c2.CountryCode 
group by c.Name 
having TotalCityPopulation > 100,0000
order by TotalCityPopulation desc;








select 
employee_id ,
first_name ,
last_name ,
department_id ,
email ,
hire_date ,
salary ,
previous_experience 
from employees e 
union all
select
employee_id ,
first_name ,
last_name ,
null as department_id ,
null as email ,
null as hire_date ,
null as salary ,
null as previous_experience 
from employees_duplicate ed 

use world;

select*
from country

select
name,
District,
CountryCode
from city
where CountryCode 
in (select code
from country 
where continent in ('Europe'))

select country.Name, sum(city.Population) as City_Population
from country 
join city 
on country.Code = city.CountryCode 
where country.Code in ( select city.CountryCode 
from city 
group by city.CountryCode 
having sum(city.Population) >= 1000000)
group by country.Code, country.Name 
order by City_Population desc;
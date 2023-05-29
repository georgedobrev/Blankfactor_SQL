#TASK 1
select 
employee_id,
first_name,
last_name,
email,
hire_date,
Salary,
Previous_exeprience,
department_id 
from employees e 
union all
select 
employee_id,
first_name,
last_name,
null as email,
null as hire_date,
null as Salary,
null as Previous_exeprience,
null as department_id 
from employees_duplicate  

use world;
#TASK 2
select 
	Name
	, District
	, CountryCode
from city
where CountryCode in (
	select code from country
	where continent = 'Europe'
)

#TASK 3
select 
	c.Name as Country
	, sum(c2.Population) as TotalCityPopulation
from country c 
join city c2 on c.Code = c2.CountryCode 
group by c.Name 
having TotalCityPopulation > 1000000
order by TotalCityPopulation desc;
	






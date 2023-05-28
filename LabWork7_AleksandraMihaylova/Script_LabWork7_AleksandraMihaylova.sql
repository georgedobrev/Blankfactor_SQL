select employee_id, first_name, last_name, department_id, email, hire_date, salary, previous_experience  
from employees
union
select employee_id, first_name, last_name, 
null as department_id, null as email, null as hire_date, null as salary, null as previous_experience
from employees_duplicate
;

select c.Name, c.District, c.CountryCode
from city as c
where c.CountryCode in (
select c2.Code from country as c2
where c2.Continent = 'Europe'
);

select c2.Name, sum(c.Population) as population_cities
from country as c2
on c2.Code = c.CountryCode
where c2.Code in (
select c.CountryCode
from city as c
group by c.CountryCode
having sum(c.Population) > 1000000
)
order by cities_population desc
;

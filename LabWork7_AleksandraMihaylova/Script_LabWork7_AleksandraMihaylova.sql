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

select c.Name, e.TotalPopulation
from country c
join (select CountryCode, sum(Population) as total_population
from city c2
group by CountryCode
having SUM(Population) > 1000000) as e on c.Code = e.CountryCode
order by e.totalpopulation desc
;

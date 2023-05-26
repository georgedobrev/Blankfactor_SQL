/*Task1*/

select employee_id, first_name, last_name, department_id, email, hire_date, salary, previous_experience  
from employees
union
select employee_id, first_name, last_name, 
null as department_id, null as email, null as hire_date, null as salary, null as previous_experience
from employee_duplicate

/*Task2*/

select c.Name, c.District, c.CountryCode
from city as c
where c.CountryCode in (
select co.Code from country as co
where co.Continent = 'Europe'
);

/*Task3*/

select co.Name, sum(c.Population) as cities_population
from country as co
join city as c
on co.Code = c.CountryCode
where c2.Code in (
select c.CountryCode
from city as c
group by c.CountryCode
having sum(c.Population) > 1000000
)
group by co.code, co.Name
order by cities_population desc
;

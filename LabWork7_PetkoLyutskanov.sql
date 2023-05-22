select employee_id, first_name, last_name, department_id, email, hire_date, salary, previous_experience  
from employees
union
select employee_id, first_name, last_name, 
null as department_id, null as email, null as hire_date, null as salary, null as previous_experience
from employees_duplicate;

select c.Name, c.District, c.CountryCode
from city as c
where c.CountryCode in (
select co.Code from country as co
where co.Continent = 'Europe'
);

SELECT co.Name, sum(c.Population) AS cities_population
FROM country AS co
JOIN city AS c
ON co.Code = c.CountryCode
GROUP BY co.Code, co.Name
HAVING cities_population > 1000000
ORDER BY cities_population DESC;


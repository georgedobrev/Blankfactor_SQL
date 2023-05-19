select 
employee_id, first_name, last_name, email, hire_date, department_id, salary
from employees 
union
select 
employee_id, first_name, last_name , null as email, null as hire_date, null as department_id, null as salary
from employees_dup;  

select
name, district, countryCode  
from city where countryCode in (
(select code from country where continent = "Europe")
)

select 
c1.name, c1.Population
from country c1 
where c1.code in (
select 
countryCode
from city
group by countryCode
having sum(population) > 1000000 
)
order by c1.Population desc;

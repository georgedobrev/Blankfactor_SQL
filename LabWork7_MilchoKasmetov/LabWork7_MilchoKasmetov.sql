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


select c1.name, sum(c2.population) as population_sum
from country c1
join city c2 on c1.code = c2.countryCode
where c1.code in (
    select countryCode
    from city
    group by countryCode
    having sum(population) > 1000000
)
group by c1.name
order by population_sum desc;

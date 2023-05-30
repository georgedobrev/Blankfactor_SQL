////////task1////////

select
employee_id,
first_name,
last_name,
department_id ,
email ,
hire_date ,
salary ,
previous_experience
from employees
union
select
employee_id,
first_name,
last_name,
null as email,
null as hire_date,
null as department_id,
null as salary,
null as previous_experience 
from 
employee_duplicate
;
//////task2//////


select city.name, city.district, city.countrycode  
from city 
where countrycode in (
    select code 
    from country 
    where continent = "Europe"
);

/////task3/////

select country.name , sum(city.population) as total_city_pop
from country
join city on country.code = city.countrycode
group by country.name
having sum(city.population) > 1000000
order by total_city_pop desc;



-- Task 1:

create table if not exists employees_duplicate(
employee_id int primary key,
 first_name varchar(255) not null,
 last_name varchar(255) not null,
 department_id int,
 email varchar(255) unique,
 hire_date date default '2023-01-01',
 salary float,
 previous_experience enum('Yes','no'),
 FOREIGN key(department_id) REFERENCES departments(department_id)
);

-- Use the example with UNION from the lesson and rewrite it to perform an union but with all columns from the employees
-- table - missing columns from the duplicate table should be added with null values.

select employee_id, first_name, last_name, email, hire_date, salary, previous_experience,department_id
from employees 
union all
select employee_id, first_name , last_name , email, null as hire_date , null as salary, null as previous_experience, null as department_id 
from employees_duplicate;

-- Task 2:

-- Write a query to retrieve information about the city, distinct and country codes of all cities that are in the European 
-- continent. Use a subquery.


select Name, District, CountryCode
from city
where CountryCode in ( select code 
						from country
						where Continent = 'Europe');


-- Task 3: 

--  Write  a query to retrieve information about the countries from the country dataset and the sum of the population of
-- their cities from the city database. Leave in the result set only the countries with population in their cities over
-- 1 million people and present the result starting from the largest number.
					
					
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

)

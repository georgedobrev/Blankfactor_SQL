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
Name,
District,
CountryCode
from city
where CountryCode in (
	select code from country
	where continent = 'Europe'
)

#TASK 3
select *
from country c 
where c.Code in (
	select 
		CountryCode
	from city c2
	group by CountryCode
	having sum(c2.Population) > 1000000
)
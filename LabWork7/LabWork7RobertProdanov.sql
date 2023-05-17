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


create table if not exists employee_duplicate (
employee_id int,
first_name varchar(255),
last_name varchar(255)
);

insert into employee_duplicate
select employee_id,
first_name,
last_name
from employees 
limit 3;

select * from employee_duplicate;

insert into employee_duplicate values (1, 'Ben', 'Daril');

select
employee_id
, first_name
, last_name
from employees
union all
select
employee_id
, first_name
, last_name
from employee_duplicate;

select
employee_id
, first_name
, last_name
from employees
union 
select
employee_id
, first_name
, last_name
from employee_duplicate;

select
employee_id
, first_name
, last_name
from employees
intersect 
select
employee_id
, first_name
, last_name
from employee_duplicate;

select
employee_id
, first_name
, last_name
from employees
except 
select
employee_id
, first_name
, last_name
from employee_duplicate;


select
employee_id
, first_name
, last_name
from employees
where employee_id in (
select employee_id from employee_duplicate 
);

select
employee_id
, first_name
, last_name
from employees
where employee_id in (
select reports_to_id from employees e 
);

select
e1.employee_id
, first_name
, last_name
from employees e1
where exists (
select employee_id from employee_duplicate e2
where e1.employee_id = e2.employee_id
);

select department_name, 
(select count(employee_id)
from employees e
where e.department_id= d.department_id
group by department_id ) as count_employees
from departments d ;

select d.department_name,
e.count_employees
from departments d 
join
( select department_id, count(employee_id) as count_employees 
from employees e group by department_id ) as e
on e.department_id = d.department_id ;

#TASK1
select
employee_id, first_name, last_name, email , Salary , hire_date 
from employees
union 
select
employee_id , first_name , last_name , null as email, null as Salary , null as hire_date 
from employee_duplicate;

#TASK2
select
c.Name , c.District , c.CountryCode 
from city c 
where exists (
select c2.Name  from country c2 
where c.CountryCode = c2.Code and c2.Continent = 'Europe'
);

#TASK3

select * from country c where c.Code In (select c2.CountryCode 
 from city c2 group by c2.CountryCode having sum(c2.Population) > 1000000 order by c2.Population asc ) ;



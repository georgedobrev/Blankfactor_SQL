
with cte as (
select avg(Salary) as avg_salary 
from employees
)
select employee_id , 
salary,
avg_salary,
case when Salary <= avg_salary
then 'Below avg'
else 'Above avg'
end as label
from cte
join employees ;

create temporary table temp_employees
select e.employee_id,
concat(e.first_name,' ', e.last_name) as employee_name,
concat(m.first_name,' ', m.last_name) as manager_name,
d.department_id,
d.department_name,
e.salary
from employees e 
inner join departments d on e.department_id = d.department_id 
inner join managers m on d.Manager_id  = m.Manager_id 
order by d.department_id ;

select * from temp_employees;

select employee_name
, manager_name,
department_name,
salary
from temp_employees
where department_name = 'Marketing';


with cte as (select e.employee_id,
concat(e.first_name,' ', e.last_name) as employee_name,
concat(m.first_name,' ', m.last_name) as manager_name,
d.department_id,
d.department_name,
e.salary
from employees e 
inner join departments d on e.department_id = d.department_id 
inner join managers m on d.Manager_id  = m.Manager_id 
order by d.department_id )




#TASK1

with avg_salary_all as (
select 
avg(e.Salary) as avg_salary
from employees e 
),
avg_salary_hr as (
select avg(e1.Salary) as avg_hr_salary from employees e1
where e1.department_id  = 789
),
employee_salary as (
select e2.employee_id, e2.first_name , e2.last_name, e2.Salary  from employees e2 
)
select
es.avg_salary, gs.first_name , gs.last_name, d.department_name, gs.salary, es.avg_salary, hrs.avg_hr_salary 
from avg_salary_all es, departments d
cross join employee_salary gs
cross join avg_salary_hr hrs;


#without cross joining
with avg_salary_all as (
select 
avg(e.Salary) as avg_salary
from employees e 
),
avg_salary_hr as (
select avg(e1.Salary) as avg_hr_salary from employees e1
where e1.department_id  = 789
),
employee_salary as (
select e2.employee_id, e2.first_name , e2.last_name, e2.Salary  from employees e2 
)
select
 gs.first_name , gs.last_name, gs.salary, es.avg_salary, hrs.avg_hr_salary 
from avg_salary_all es join
  employee_salary gs
 join avg_salary_hr hrs ;



#TASK2

create view view_task2 as 
select d.department_name , d.Location , concat(m.first_name, ' ', m.last_name) as manager_name
from departments d inner join managers m ;


create temporary table temp_table as 
select d.department_name , d.Location , concat(m.first_name, ' ', m.last_name) as manager_name
from departments d inner join managers m ;




#TASK1
select CountryCode, c.Name as cityName , Continent, c2.Name as countyName from city c inner join country c2 on c.CountryCode  = c2.Code ;

#TASK2
select CountryCode, c.Name as cityName, Continent, c2.Name as countryName from city c inner join country c2 on c.CountryCode  = c2.Code where Continent = 'Europe' order by cityName  asc ;

#TASK3
select c2.Name , avg(c2.Population ) as City_AVG_Population from country c join city c2 ON c.Code = c2.CountryCode group by c2.Name order by City_AVG_Population asc;

#TASK4
select c.Name , count(c2.IsOfficial)  as count_Of_Official_Languages
from country c join countrylanguage c2 on c.Code = c2.CountryCode
where c2.IsOfficial = 'T'
group by c.Name  
having count_Of_Official_Languages >= 3
order by count_Of_Official_Languages desc ;



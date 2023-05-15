select * from employees;

select * from departments ;

select * from managers ;

#INNER JOIN
select employee_id, e.department_id,
first_name,
last_name,
department_name,
location
from employees e inner join departments d on e.department_id = d.department_id ;

insert into employees_test_hristiyana_shopova.managers 
values (666, 'Daniel', 'Myson', 'daniel@email.com', '2023-01-07'),
(555, 'Mary', 'Dolson', 'mry@emial.com', '2023-01-07');

insert into departments 
values
(1011, 'R&D', 666, 'Berlin');

select 
first_name,
last_name,
department_name
from managers m  inner join departments d on m.Manager_id  = d.Manager_id  ;

#LEFT JOIN

select 
first_name,
last_name,
department_name
from managers m  left join departments d on m.Manager_id  = d.Manager_id  ;

select 
first_name,
last_name,
department_name
from departments d  left join managers m on m.Manager_id  = d.Manager_id  ;

select 
first_name,
last_name,
department_name
,d.Manager_id 
,m.Manager_id 
from managers m  left join departments d on m.Manager_id  = d.Manager_id  ;

select * from employees e 
left join departments d on e.department_id = d.department_id ;

select * from employees e 
left join departments d on e.department_id = d.department_id 
left join managers m on d.Manager_id = m.Manager_id ;

select 
first_name,
last_name,
department_name
from managers m  left join departments d on m.Manager_id  = d.Manager_id  
where d.Manager_id is null ;

#RIGHT JOIN

select 
first_name,
last_name,
department_name
from managers m  right join departments d on m.Manager_id  = d.Manager_id  ;

select 
first_name,
last_name,
department_name
from managers m  right join departments d on m.Manager_id  = d.Manager_id  
where d.Manager_id is null ;

select first_name,
department_name
from managers m cross join departments d ;

select first_name,
department_name
from managers m cross join departments d 
where d.Manager_id <> m.Manager_id 

alter table employees 
add reports_to_id int;

update employees 
set reports_to_id = 1 where employee_id = 2 or employee_id = 3;
update employees 
set reports_to_id = 2 where employee_id = 4 or employee_id = 5;

select employee_id,
first_name ,
last_name ,
reports_to_id
from employees e ;

select distinct 
e1.*
from employees e1
join employees e2 on e1.employee_id = e2.reports_to_id;

#TASK1
select CountryCode, c.Name , Continent from city c left join country c2 on c.CountryCode  = c2.Code ;

#TASK2
select CountryCode, c.Name , Continent from city c left join country c2 on c.CountryCode  = c2.Code where Continent = 'Europe' order by Name  asc ;

#TASK3
select c2.Name , avg(c2.Population ) as City_AVG_Population from country c join city c2 ON c.Code = c2.CountryCode group by c2.Name ;

#TASK4
select c2.`Language`, count(c2.`Language`)  as count_Of_Official_Languages
from country c join countrylanguage c2 on c.Code = c2.CountryCode
where c2.IsOfficial = 'T'
group by c2.`Language`  having count_Of_Official_Languages >= 3
order by count_Of_Official_Languages desc ;


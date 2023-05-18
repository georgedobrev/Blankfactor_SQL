
#TASK1

insert into employees (employee_id, first_name , last_name ,department_id, Salary, Previous_experience)
values(6,'Robert', 'Bosch', 789, 245.60, 'no') ;

insert into departments (department_id, department_name,Manager_id, Location)
values(789,'HR', 777, 'Berlin');

#TASK2

commit;
update employees set department_id = 789, Salary = 120 where employee_id = 4;

select count(*) from country  where IndepYear >= 1970;

#TASK2

select count(distinct Continent) from country;

#Task3

select sum(SurfaceArea) from country where Continent = 'Europe';

#TASK4

select Continent, round(sum(SurfaceArea)) as continentSize  from country group by Continent order by continentSize desc limit 3;

#TASK5

select CountryCode , avg(Population) as avg_city_population from city group by CountryCode order by avg(Population) ;

#TASK6

select sum(Population), District from city  where CountryCode = 'NLD' group by District having sum(Population) > 1000000 order by sum(Population) desc;

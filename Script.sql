select count(name)
from country;
select count(distinct name)
from country;
select count(indepyear)
from country;
select count(*)
from country;

select language
from countrylanguage
group by `Language` ;

select * from countrylanguage;  

select distinct language
from countrylanguage ;

#TASK1

select count(*) from country  where IndepYear >= 1970;

#TASK2

select count(Continent) from country;

#Task3

select sum(SurfaceArea) from country where Continent = 'Europe';

#TASK4

select Name,SurfaceArea  from country order by SurfaceArea desc limit 3;

#TASK5

select CountryCode , avg(Population) as avg_city_population from city group by CountryCode order by avg(Population) ;

#TASK6

select sum(Population), District from city  where CountryCode = 'NLD' group by District having sum(Population) > 1000000 order by sum(Population) desc;

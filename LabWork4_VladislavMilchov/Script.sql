select count(name) 
from country
where IndepYear >=1970

select count(distinct continent)
from country;


select sum(surfacearea)
from country
where Region;

select 
Continent
, sum(SurfaceArea) 
from country
group by Continent 
order by sum(SurfaceArea) desc limit 3;

select 
CountryCode  
, avg(population)
from city
group by CountryCode
order by avg(Population) asc;

select 
District
, sum(Population) as District_population
from city
where CountryCode = 'nld'
group by District 
having District_population > 1000000;



#LAB WORK 4
use world;

#task 1:
select count(IndepYear) from country
where IndepYear >= 1970;

#task 2:
select distinct continent from country;

#task 3:
select sum(SurfaceArea) 
from country 
where Continent = 'Europe'
group by Continent;

#task 4:
select continent, round(sum(SurfaceArea)) as sum_surfaceArea
from country
group by continent
order by sum_surfaceArea desc
limit 3;

#task 5:
select CountryCode, AVG(population) as avg_population
from city
group by CountryCode  
order by avg_population asc;

#task 6:
select District, sum(population)
from city
where CountryCode = 'NLD'
group by District
having sum(population) > 1000000
order by sum(Population) desc;

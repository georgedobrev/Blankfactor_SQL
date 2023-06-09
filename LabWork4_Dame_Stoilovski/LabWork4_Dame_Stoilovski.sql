#TASK 1
select count(indepyear) as country_count
from country
where IndepYear >= 1970;

#TASK 2
select count(distinct Continent)
from country;

#TASK 3
select sum(SurfaceArea) as TotalSurfaceArea
from country c 
where Continent = 'Europe';

#TASK 4
select round(sum(SurfaceArea)) as TotalSurfaceArea,
Continent 
from country c 
group by Continent
order by TotalSurfaceArea desc 
limit 3;

#TASK 5
select CountryCode, round(avg(population)) as AveragePopulation
from city
group by CountryCode 
order by AveragePopulation asc;

#TASK 6
select District, round(sum(Population)) as District_population 
from city
where CountryCode = 'NLD'
group by District
having District_population > 1000000
;

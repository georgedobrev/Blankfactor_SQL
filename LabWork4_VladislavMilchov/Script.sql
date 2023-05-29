select count(*) as IndependenceAfter
from country
where IndepYear >=1970

select count(distinct continent) as TotalContinent
from country;

select sum(surfacearea) as TotalSurfaceArea
from country
where continent = 'Europe';

select 
Continent
, round(sum(SurfaceArea)) as Size
from country
group by Continent 
order by Size desc limit 3;

select 
CountryCode  
, round(avg(Population)) as AvgPopulation
from city
group by CountryCode
order by AvgPopulation asc;

select 
District
, sum(Population) as DistrictPopulation
from city
where UPPER(CountryCode) = 'NLD'
group by District 
having DistrictPopulation > 1000000;



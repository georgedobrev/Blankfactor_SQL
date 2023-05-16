
select count(*) as number_countries_after_1970
from country 
where IndepYear >= 1970;

select count(distinct Continent) as num_continents
from country;

select sum(SurfaceArea) as TotalSurfaceAreaEurope
from country where Continent = 'Europe';

select Continent, round(sum(SurfaceArea)) as continentSize
from country
group by Continent 
order by continentSize desc
limit 3;

select CountryCode  , round(avg(population)) as avg_population
from city
group by CountryCode  
order by avg_population asc;

select district, round(sum(population)) as district_population
from city
where CountryCode = 'NLD'
group by District
having district_population > 1000000;







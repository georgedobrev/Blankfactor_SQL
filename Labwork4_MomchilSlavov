1:
select count(*) as num_countries_with_independence_after_1970
from country
where IndepYear >= 1970;

2:
select count(distinct Continent) as num_continents from country;

3:
select sum(SurfaceArea) as TotalSurfaceAreaEurope from country where Continent = 'Europe';

4:
select Continent, round(sum(SurfaceArea)) as continent_surface_area
from country
group by Continent
order by continent_surface_area desc
limit 3;

5:
select CountryCode  , round(avg(population)) as avg_population
from city
group by CountryCode  
order by avg_population asc;

6:
select district, round(sum(population)) as district_population
from city
where CountryCode = 'NLD'
group by District
having district_population > 1,000,000;

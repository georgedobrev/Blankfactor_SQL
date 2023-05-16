-- 1
select count(*) as independed_countries_after_1970
from country 
where IndepYear >= 1970;

-- 2
select count(distinct Continent) as number_of_continents
from country ;

-- 3
select sum(SurfaceArea) as total_land_area
from country where Continent = 'Europe';

-- 4
select Continent, round(sum(surfaceArea)) as continent_surface_area
from country 
group by Continent 
order by continent_surface_area desc 
limit 3;

-- 5

select countryCode, round(avg(population)

-- 6
select countryCode, round(avg(population) as district_population
from city 
where CountryCode  = 'NLD'
group by District 
having district_population > 1000000
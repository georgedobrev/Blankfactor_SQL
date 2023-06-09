--Task1 

select count(*) as count_contries_after_1970
from country
where IndepYear >= 1970;

--Task2 

select count(distinct Continent) as num_continents 
from country;

--Task3 

select sum(SurfaceArea) as total_area_sum 
from country where Continent = 'Europe';

--Task4

select continent, round(sum(surfaceArea)) as continent_surface_area
from country 
group by Continent
order by continent_surface_area desc
limit 3
;

--Task5

select countryCode, round(avg(population)) as average_city_population
from city 
group by CountryCode 
order by average_city_population asc 
;

--Task6

select district, sum(population) as district_population
from city
where CountryCode = 'NLD'
group by District
having district_population > 1000000
;

select count(*) as num_countries_with_independence_after_1970 from country
where IndepYear >= 1970;

select count(Continent) as num_continents from country;

select sum(SurfaceArea) as europe_surface_area from country where Continent = "Europe";

select Continent, round(sum(SurfaceArea)) as continent_surface_area 
from country as c
group by Continent 
order by continent_surface_area desc 
limit 3; 

select CountryCode, round(avg(Population)) as average_city_population 
from city 
group by CountryCode 
order by average_city_population;

select District, sum(Population) as district_population 
from city 
where CountryCode = 'NLD'
group by District
having district_population > 1000000;
select count(*) 
as num_countries_ondependence_after_1970
from countries
where independance_year >= 1970;

select count(distinct
continent) as num_continents
from countries

select sum(surface_area) as 
total_surface_area
from continents
where name = 'Europe';

select name,
round(surface_area,2)
as surface_area
from continents
order by surface_area desc 
limit 3;

select country_code,
round(avg(population) as
avg_population
from cities
group by country_code
order by avg_population asc;

select name,population
from districs
where country = 'Netherlands'
and population > 1000000
order by population desc;
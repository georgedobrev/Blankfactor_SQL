select count(*) as indep_countries 
from country 
where indepYear >= 1970;

select count(distinct continent) as num_continents
from country;

select sum(surfaceArea) as total_area 
from country 
where continent = 'Europe';

select continent,
round(sum(surfaceArea)) as surfaceArea
from country
group by continent
order by surfaceArea
desc
limit 3; 

select countryCode, round(avg(Population)) as avg_city_pop
from city 
group by countryCode 
order by avg_city_pop asc;

select district, sum(population) as district_population 
from city 
where countryCode = 'NLD' 
group by district 
having district_population > 1000000;

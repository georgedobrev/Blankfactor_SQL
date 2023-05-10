select count(*) as num_countries from country where indepYear >= 1970;

select count(*) as num_countries from country;

select sum(surfaceArea) as total_area from country where continent = 'Europe';

select name, surfaceArea from country order by surfaceArea desc limit 3; 

select countryCode, round(avg(Population)) as avg_city_population from city group by countryCode order by avg_city_population asc;

select district, sum(population) as district_population from city where countryCode = 'NLD' group by district having district_population > 1000000;
select count(*) from country where IndepYear > 1970;

select count(distinct continent) as num_continent from country;

select sum(SurfaceArea) as totalSurfaceOfEurope from country where Continent = 'Europe';

select Name , SurfaceArea  from country order by SurfaceArea desc limit 3;

select countryCode, round(avg(Population)) as average_population from city group by countryCode order by average_population asc;

select district, sum(population) as dist from city where CountryCode = 'NLD' group by District having dist > 1000000;
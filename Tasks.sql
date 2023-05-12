select * from city c;

select count(*) as independent_countries from country c 
where IndepYear >= 1970;

select count(distinct continent) as continents from country c;

select sum(SurfaceArea) as combined_surface_area, Continent  from country c 
group by Continent order by combined_surface_area desc limit 3;

select Code, avg(population) as avarage_population from country c
group by Code order by avarage_population asc;

select District, sum(population) as district_population from city c
where CountryCode = 'NLD' group by District having district_population >= 1000000;
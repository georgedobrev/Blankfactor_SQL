-- The first task

select * from country where Continent = 'Asia'; 
select * from country where (Continent = 'Asia' or Continent = 'Africa') and Population > 100000000;
SELECT * from country where Name = 'Andorra' OR Name = 'Barbados' OR Name = 'Yemen' OR Name = 'Poland';
select * from country where (Continent <> 'South America' and Continent <> 'North America') and GovernmentForm like '%Republic%';

--The second task
select * from country where LifeExpectancy between 60 and 70;
select * from country where LifeExpectancy > 70;
select distinct Region, COUNT(*) as NumRegions
from country
group by Region;
select * from country order by SurfaceArea asc limit 1; 
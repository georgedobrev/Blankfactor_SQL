use world;

select *
from country;

select code, name
from country;

select code, continent, region, surfacearea, indepyear
from country
where continent = 'Europe';

select *
from country
where continent = 'Europe' and Region = 'Western Europe';

select *
from country
where continent = 'Europe' or Continent = 'South America';

select GovernmentForm, Continent, Name 
from country
where GovernmentForm  = 'Republic' and (Continent = 'Europe' or Continent = 'South America');

select *
from country
where Continent in ('Europe', 'South America', 'North America');

//

select *
from country
where continent = 'Asia';

select *
from country
where Continent in ('Asia', 'Africa') and Population >= 100000000;

select *
from country
where Name in ('Andorra', 'Barbados', 'Yemen', 'Vietnam', 'Poland');

select *
from country
where Continent not in ('South America', 'North America') and GovernmentForm  = 'Republic';

select *
from country
where LifeExpectancy between 60 and 70;

select *
from country
where LifeExpectancy > 70;

select distinct Region 
from country;

select *
from country
order by SurfaceArea asc
limit 1;


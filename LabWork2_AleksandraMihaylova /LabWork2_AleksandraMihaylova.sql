use world;

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


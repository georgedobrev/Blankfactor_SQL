use world;

--Task1
select *
from country where Continent  = 'Asia'
;

select *
from country where Population > 100000000 and (Continent  = 'Asia' or Continent = 'Africa')
;

select *
from country where Name in ('Andorra', 'Barbados', 'Yemen', 'Vietnam', 'Poland')
;

select *
from country where Continent not in ('South America', 'North America') 
and GovernmentForm like ('%republic%')
;

--Task2

select *
from country where LifeExpectancy between 60 and 70
;

select *
from country where LifeExpectancy > 70;
;

select count(*)
as Counter, Region from country group by Region
order by counter
;

select *
from country order by SurfaceArea asc limit 1
;
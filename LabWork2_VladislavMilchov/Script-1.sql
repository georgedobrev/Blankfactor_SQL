use world;

select *
from country
where Continent = 'Asia'

select *
from country
where Continent in ('Asia','Africa') and Population > 100000000;

select *
from country
where name in ('Andorra','Barbados','Yemen','Vietnam','Poland');

select *
from country
where Region not in ('South','North America') and governmentform not in ('Republic');

select *
from country
where LifeExpectancy between 60 and 70;

select *
from country 
where LifeExpectancy > 70;

select count(*) as counter, Region 
from country
group by Region;

select *
from country
order by SurfaceArea asc limit 1
;


  







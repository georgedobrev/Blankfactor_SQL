select * from country c
where LifeExpectancy between 60 and 70;

select * from country c 
where LifeExpectancy > 70;

select count(*) as counter, Region 
from country
group by Region;

select * from country c 
where SurfaceArea in (select min(SurfaceArea) from country c2);
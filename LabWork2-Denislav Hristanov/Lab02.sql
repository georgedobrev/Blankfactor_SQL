select * 
from country
where continent = 'Asia';

select *
from  country
where continent in ('Asia','Africa') and
population > 1000000;

select * 
from country
where name in('Andora','Barbados','Yemen','Vietnam','Poland');

select *
from country
where continent not in('South America','North America')
and GovernmentForm like '%Republic%';


select *
from country
where LifeExpectancy between 60 and 70;

select * 
from country
where LifeExpectancy > 70;

select count(distinct region) as
num_regions
from country;

select *
from country
order by SurfaceArea asc
limit 1;
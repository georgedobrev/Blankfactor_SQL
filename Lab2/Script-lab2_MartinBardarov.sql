use world;

select *
from country;

select *
from country
where continent ='Asia';

select *
from country
where continent ='Asia' or continent ='Africa' and Population >100000000 ;


select *
from country
where name in('Andorra', 'Barbados', 'Yemen', 'Vietnam','Poland');


select *
from country
where name in('Andorra', 'Barbados', 'Yemen', 'Vietnam','Poland');

select *
from country
where Continent not in('South America','North America') and GovernmentForm like('%republic%') ;


select *
from country
where LifeExpectancy >=60 and LifeExpectancy <=70;


select *
from country
where LifeExpectancy >70;

select distinct Region from country ;

select count(*) as NumberOfCountriesByRegion, Region from country group by Region;


select * from country order by SurfaceArea asc limit 1; 
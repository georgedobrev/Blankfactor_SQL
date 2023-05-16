use world;

select *
from country;

select code,name
from country;

select code, name, Continent, Region, SurfaceArea, IndepYear
from country
where Continent = 'Europe' 
;

select *
from country 
where Continent = 'Europe' and Region  ='Western Europe'
;

select *
from country 
where Continent = 'Europe' or Continent = 'South America'
;

-- LabWork 2

-- Task 1

select *
from country 
where Continent = 'Asia'
;

select *
from country 
where Population > 100000000  and (Continent ='Asia' or Continent = 'Africa')
;

select *
from country 
where Name = 'Andorra' or Name = 'Barbados' or Name ='Yemen' or Name ='Vietnam' or Name = 'Poland'
;

select *
from country 
where GovernmentForm = 'Republic' and (Continent != 'South America' and Continent != 'North America')
;

-- Task 2

select *
from country 
where LifeExpectancy > 60 and LifeExpectancy <70
;

select *
from country 
where LifeExpectancy > 70
;

select Region, count(Region) as CountofRegions
from country 
group by Region 
;

select *
from country 
order by SurfaceArea asc
limit 1
;



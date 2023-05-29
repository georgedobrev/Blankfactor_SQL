use world;

select count(*)
from country 
where IndepYear >=1970;



select count(distinct Continent)
from country;



select sum(SurfaceArea)
from country 
where Continent  = 'Europe';



select round(sum(SurfaceArea), 2) AS SurfaceArea, Continent 
from country
group by continent
order by SurfaceArea DESC
limit 3;


select round(avg(Population), 1) AS avg_Population , CountryCode  
from city 
group by CountryCode 
order by avg_Population  asc;


select District, sum(Population) as district_Population 
from city 
where CountryCode = 'NLD'
group by District
having district_Population > 1000000;






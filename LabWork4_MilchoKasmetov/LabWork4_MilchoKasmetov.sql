use world;

select count(*) as TotalCountries_With_Independence_After_1970 from country c 
where c.IndepYear >= 1970;


select count(DISTINCT c.Continent) as TotalContinents from country c 


select  SUM(c.SurfaceArea) as TotalSurfaceArea from country c 
where  c.Continent in ('Europe')



select Continent, round(sum(SurfaceArea)) as continentSize
from country
group by Continent 
order by continentSize desc
limit 3;


select round(avg(c.Population)) as AvgPopulation,c.CountryCode  from city c  
group by c.CountryCode  
order by AvgPopulation;

select c.District ,sum(c.Population) as DistrictPopulation  from city c 
where c.CountryCode  in ('NLD')
group by c.District 
having  DistrictPopulation > 1000000;


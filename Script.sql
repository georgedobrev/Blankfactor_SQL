
select ifnull(IndepYear, 'N/A') as IndepYear from country ;

select coalesce (indepyear, 'N/A') as IndepYear from country;

select gnPold, GNP, coalesce (GNPold, GNP, 0) as GNPnew from country;



#TASK1

select Name, ifnull(LifeExpectancy, 'N/A') as LifeExpectancy from country where LifeExpectancy is null; 


#TASK2

select name, SurfaceArea,
if(SurfaceArea > 1000000, 'Large country',
if(SurfaceArea between 50000 and 1000000, 'Medium country',
if(SurfaceArea between 20000 and 50000, 'Small country','Extra small country')))
as CountrySize from country ;


select name, surfaceArea,
case  
when surfacearea > 1000000 then 'Large country'
when SurfaceArea between 50001 and 1000000 then 'Medium country'
when surfaceArea between 20000 and 50000 then 'Small country'
else 'Extra small country'
end as CountrySize from country ;


#TASK1

select count(*) from country  where IndepYear >= 1970;

#TASK2

select count(distinct Continent) from country;

#Task3

select sum(SurfaceArea) from country where Continent = 'Europe';

#TASK4

select Continent, round(sum(SurfaceArea)) as continentSize  from country group by Continent order by continentSize desc limit 3;

#TASK5

select CountryCode , avg(Population) as avg_city_population from city group by CountryCode order by avg(Population) ;

#TASK6

select sum(Population), District from city  where CountryCode = 'NLD' group by District having sum(Population) > 1000000 order by sum(Population) desc;


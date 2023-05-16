select ifnull(IndepYear, 'N/A') as IndepYear from country ;

select coalesce (indepyear, 'N/A') as IndepYear from country;

select gnPold, GNP, coalesce (GNPold, GNP, 0) as GNPnew from country;



#TASK1

select Name, ifnull(LifeExpectancy, 'N/A') as LifeExpectancy from country where LifeExpectancy = 'N/A'; 


#TASK2

select name, SurfaceArea,
if(SurfaceArea > 1000000, 'Large country',
if(SurfaceArea between 50000 and 1000000, 'Medium country',
if(SurfaceArea between 20000 and 50000, 'Small country','Extra small country')))
as CountrySize from country ;


select name, surfaceArea,
case  
when surfacearea > 1000000 then 'Large country'
when SurfaceArea between 50000 and 1000000 then 'Medium country'
when surfaceArea between 20000 and 50000 then 'Small country'
else 'Extra small country'
end as CountrySize from country ;

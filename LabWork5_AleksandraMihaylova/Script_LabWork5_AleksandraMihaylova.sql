select Code, Name, Continent, ifnull(LifeExpectancy, 'N/A') as LifeExpectancy
from country
where LifeExpectancy is null;

select Code, Name, SurfaceArea,
case 
	when SurfaceArea > 1000000 then 'Large'
	when SurfaceArea between 50000 and 1000000 then 'Medium'
	when SurfaceArea between 20000 and 50000 then 'Small'
	when SurfaceArea < 20 then 'Extra small'
	else 'N/A'
end as country_size
FROM country;
 

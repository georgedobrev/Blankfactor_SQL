1:

select name, IFNULL(lifeExpectancy, 'N/A') AS lifeExpectancy FROM country WHERE lifeExpectancy IS NULL;

2:


select name, SurfaceArea,
case
when surfaceArea > 10000000 then 'Large'
when surfaceArea > 50000 then 'Medium'
when surfaceArea > 20000 then 'Small'
else 'Extra Small'
end as 'Countries Size'
from country



select name, SurfaceArea,
if(SurfaceArea  > 10000000 then 'Large',
if(SurfaceArea > 50000 then 'Medium',
if(SurfaceArea  > 20000 then 'Small',
else 'Extra small'
 as 'CountriesSize' 
from country;
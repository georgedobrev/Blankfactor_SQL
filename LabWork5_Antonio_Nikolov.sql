select name,
ifnull(lifeExpectancy,'N/A') as lifeExpectancy
from country
where lifeExpectancy is null
;


select name, surfaceArea,
case
	when surfaceArea > 1000000 then 'Large'
	when surfaceArea > 50000 then 'Medium'
	when surfaceArea > 20000 then 'Small'
	else 'Extra small'
end as surfacearea_country
from country; 

select name, SurfaceArea,
  if(SurfaceArea  > 10000000, 'Large',
        if(SurfaceArea > 50000, 'Medium',
	      if(SurfaceArea  > 20000, 'Small',
		'Extra Small'))) as 'CountriesSize'		
from country;

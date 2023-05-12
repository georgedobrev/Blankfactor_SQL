/*Task1*/

SELECT name, IFNULL(lifeExpectancy, 'N/A') AS lifeExpectancy 
FROM country 
WHERE lifeExpectancy IS NULL;

/*Task2*/

/*case*/
select name, SurfaceArea,
case
	when surfaceArea > 10000000 then 'Large'
	when surfaceArea > 50000 then 'Medium'
	when surfaceArea > 20000 then 'Small'
	else 'Extra Small'
end as 'Countries Size'
from country


/*if*/
select name, SurfaceArea,
	if(SurfaceArea  > 10000000, 'Large',
		if(SurfaceArea > 50000, 'Medium',
			if(SurfaceArea  > 20000, 'Small',
				'Extra Small'))) as 'Countries Size'
				
from country;

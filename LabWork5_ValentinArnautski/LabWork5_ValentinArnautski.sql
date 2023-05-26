select name, ifnull(LifeExpectancy , 'N/A') as NoLifeExpextancy from country; 


select name, SurfaceArea,
case
	when surfaceArea > 10000000 then 'Large'
			when surfaceArea > 50000 then 'Medium'
					when surfaceArea > 20000 then 'Small'
							else 'Extra Small'
end as 'Countries Size'
from country

select name, SurfaceArea,

	if(SurfaceArea  > 10000000, 'Large',
		if(SurfaceArea > 50000, 'Medium',
			if(SurfaceArea  > 20000, 'Small',
				'Extra Small'))) as 'Countries Size'
from country;





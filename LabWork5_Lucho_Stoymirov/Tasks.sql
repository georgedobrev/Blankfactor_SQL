select name, ifnull(lifeExpectancy,'N/A') as life_expectancy from country 
where lifeExpectancy is null;

select 
Name, SurfaceArea, if(SurfaceArea > 1000000,'Large'
							, if(SurfaceArea > 50000,'Medium'
								, if(SurfaceArea > 50000,'Medium'
									, if(SurfaceArea > 20000,'Small'
										, 'Extra small')))) as country_size
from country; 

select 
Name, SurfaceArea,
	case
		when surfaceArea > 1000000 then 'Large'
		when surfaceArea > 50000 then 'Medium'
		when surfaceArea > 20000 then 'Small'
		else 'Extra small'
	end as country_size
from country; 
select name, ifnull(lifeExpectancy,'N/A') as lifeExpectancy from country where lifeExpectancy is null;

select 
name, surfaceArea, if(surfaceArea > 1000000,'Large'
							, if(surfaceArea > 50000,'Medium'
								, if(surfaceArea > 50000,'Medium'
									, if(surfaceArea > 20000,'Small'
										, 'Extra small')))) as size_country
from country; 

select 
name, surfaceArea,
	case
		when surfaceArea > 1000000 then 'Large'
		when surfaceArea > 50000 then 'Medium'
		when surfaceArea > 20000 then 'Small'
		else 'Extra small'
	end as size_country
from country;  
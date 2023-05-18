select
	Code,
	Name,
	ifnull(LifeExpectancy, 'N/A') as life_expectancy
from
	country 
where
	LifeExpectancy is null;
	


select SurfaceArea 
	, case 
		when SurfaceArea  > 1000000 then 'Large country'
			when SurfaceArea  > 50000 then 'Medium country'
				when SurfaceArea  > 20000 then 'Small country'
					when SurfaceArea  < 20 then 'Extra small country'
						else 'N/A' end as CountrySize
from country;


select 
	SurfaceArea 
		,
	if(SurfaceArea > 1000000,
	'Large country'
			,
	if(SurfaceArea > 50000,
	'Medium country'
				,
	if(SurfaceArea > 20000,
	'Small country'
					,
	if(SurfaceArea < 20,
	'Extra small country',
	'N/A')))) as Age_group
from
	country;
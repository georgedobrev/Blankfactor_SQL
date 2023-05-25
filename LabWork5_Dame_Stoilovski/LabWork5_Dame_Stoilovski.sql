#TASK 1
select Name
	, ifnull(LifeExpectancy , 'N/A') as LifeExpectancy 
from country
where LifeExpectancy is null;


#TASK 2
select name
	, SurfaceArea
	, case 
		when SurfaceArea  > 1000000 then 'Large country'
			when SurfaceArea  > 50000 then 'Medium country'
				when SurfaceArea  > 20000 then 'Small country'
					when SurfaceArea  < 20 then 'Extra small country'
						else 'N/A' end as CountrySize
from country;


select name
	, SurfaceArea 
		, if(SurfaceArea  > 1000000, 'Large country'
			, if(SurfaceArea  > 50000, 'Medium country'
				, if(SurfaceArea  > 20000, 'Small country'
					, if(SurfaceArea  < 20, 'Extra small country', 'N/A')))) as Age_group
from country;


select * from country c 
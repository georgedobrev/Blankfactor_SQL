select Code, Name, ifnull(LifeExpectancy, 'N/A') as life_expectancy
from country c 
where LifeExpectancy is null;
 
select Code, Name, SurfaceArea,
  if (SurfaceArea > 1000000, 'Large',
    if (SurfaceArea between 50000 and 1000000, 'Medium',
      if (SurfaceArea between 20000 and 50000, 'Small',
      	if (SurfaceArea < 20, 'Extra small', 'No match')
      )
    )
  ) AS country_size
FROM country;
 
select Code, Name, SurfaceArea,
	case
		when SurfaceArea > 1000000 then 'Large'
		when SurfaceArea between 50000 and 1000000 then 'Medium'
		when SurfaceArea between 20000 and 50000 then 'Small'
		when SurfaceArea < 20 then 'Extra small'
		else 'No match'
	end as country_size
from country;
--Task1

select name, ifnull(lifeExpectancy, 'N/A') as life_expectancy
from country 
where  lifeExpectancy is null 
;

--Task2.1

select name, surfaceArea,
if(SurfaceArea > 1000000, 'Large',
  if(SurfaceArea between 50000 and 1000000, 'Medium',
    if(SurfaceArea between 20000 and 50000, 'Small',
      if(SurfaceArea < 20, 'Extra Small', 'N/A')
    )
  )
)
as surface_area_info
from country 
;

--Task2.2

select name, surfaceArea,
case 
  when SurfaceArea > 1000000 then 'Large'
  when SurfaceArea between 50000 and 1000000 then  'Medium'
  when SurfaceArea between 20000 and 50000 then 'Small'
  when SurfaceArea < 20 then 'Extra Small' else 'N/A'
end as surface_area_info
from country
;




#LAB WORK 5
use world;

#task 1:
select name, ifnull(LifeExpectancy , 'N/A') as LifeExpectancy 
from country
where isnull(nullif(lifeexpectancy, 'N/A'))
order by name asc;

#task 2:
select name, SurfaceArea,
if(SurfaceArea  > 1000000, 'Large country', 
  if(SurfaceArea  > 50000, 'Medium country', 
    if(SurfaceArea  > 20000, 'Small country', 'Extra small country'))) as SurfaceArea2
from country
order by surfaceArea desc;

select name, SurfaceArea,
  case 
	when SurfaceArea  > 1000000 then 'Large country' 
     when SurfaceArea  > 50000 then 'Medium country'
      when SurfaceArea  > 20000 then 'Small country'
        else 'Extra small country'
end as category_SurfaceArea
from country
order by surfaceArea desc;

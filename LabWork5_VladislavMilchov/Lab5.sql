select 
Name,
ifnull(LifeExpectancy, 'N/A') as LifeExpectancyNew
from country
where  LifeExpectancy is null;

select 
SurfaceArea
 , if(SurfaceArea > 1000000, 'Large countries'
 , if(SurfaceArea > 50000, 'Medium'
 , if(SurfaceArea > 20000, 'Small'
 , 'Extra small'  ))) as SizeOfCpuntry
from country;

select
SurfaceArea, 
case 
  when SurfaceArea > 1000000 then 'Large countries'
   when SurfaceArea > 50000 then 'Medium'
    when SurfaceArea > 20000 then 'Small'
     else  'Extra small'
  end as SizeOfcountry
  from country;


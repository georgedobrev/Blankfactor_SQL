select name, IFNULL(LifeExpectancy, 'N/A') as NoLifeExpectancy 
from country
where LifeExpectancy is null;


select name, SurfaceArea,
    case
        when SurfaceArea > 10000000 then 'Large'
        when SurfaceArea > 50000 then 'Medium'
        when SurfaceArea > 20000 then 'Small'
        ELSE 'Extra Small'
    end as 'Countries Size'
from country;


select name, SurfaceArea,
    if(SurfaceArea > 10000000, 'Large',
        if(SurfaceArea > 50000, 'Medium',
            if(SurfaceArea > 20000, 'Small',
                'Extra Small'))) as 'Countries Size'
from country;












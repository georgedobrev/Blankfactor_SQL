use world;

select c.Name ,ifnull(c.LifeExpectancy,'N/A') as Result from country c 
where isnull(c.LifeExpectancy); 

select  
    c.Name , 
    c.SurfaceArea , 
    case 
        when surfaceArea > 1000000 THEN 'Large'
        when surfaceArea > 50000 THEN 'Medium'
        when surfaceArea > 20000 THEN 'Small'
        else 'Extra small'
    end as size_country
from country c ;


select  
    c.Name , 
    c.SurfaceArea , 
    IF(surfaceArea > 1000000, 'Large',
        IF(surfaceArea > 50000, 'Medium',
            IF(surfaceArea > 20000, 'Small',
                'Extra small'
            )
        )
    ) as size_country
from country c ;

SELECT 
    name, 
    COALESCE(lifeExpectancy, 'N/A') AS life_expectancy 
FROM 
    country 
WHERE 
    lifeExpectancy IS NULL;


SELECT 
    Name, 
    SurfaceArea,
    CASE
        WHEN SurfaceArea > 1000000 THEN 'Large'
        WHEN SurfaceArea > 50000 THEN 'Medium'
        WHEN SurfaceArea > 20000 THEN 'Small'
        ELSE 'Extra small'
    END AS CountrySize 
FROM 
    country;


SELECT 
    Name, 
    SurfaceArea, 
    CASE
        WHEN SurfaceArea > 1000000 THEN 'Large'
        WHEN SurfaceArea > 50000 THEN 'Medium'
        WHEN SurfaceArea > 20000 THEN 'Small'
        ELSE 'Extra small'
    END AS CountrySize 
FROM 
    country;

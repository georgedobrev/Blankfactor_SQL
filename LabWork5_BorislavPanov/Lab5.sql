-- Task 1

SELECT name, ifnull(LifeExpectancy, 'N/A') AS LifeExpectancy FROM country c WHERE isnull(LifeExpectancy); 

-- Task 2

SELECT name, SurfaceArea,
IF (SurfaceArea > 1000000, 'Large country'
	, IF (SurfaceArea > 50000,  'Medium country' 
	, IF (SurfaceArea > 20000, 'Small country'
	, 'Extra small'
	)
  )
) AS SizeOfCountry FROM country c;


SELECT name, SurfaceArea,
	CASE 
		WHEN SurfaceArea > 1000000 THEN 'Large country'
		WHEN SurfaceArea > 50000 THEN 'Medium country'
		WHEN SurfaceArea > 20000 THEN 'Small country'
		ELSE 'Extra small'
	END AS SizeOfCountry 
FROM country c 


 
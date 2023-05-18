-- The first task


SELECT * FROM country WHERE Continent IN ('Asia');


SELECT * FROM country WHERE Continent IN ('Asia', 'Africa') AND Population > 100000000;


SELECT * FROM country WHERE Name IN ('Andorra', 'Barbados', 'Yemen', 'Poland');


SELECT * FROM country WHERE Continent NOT IN ('South America', 'North America') AND GovernmentForm LIKE '%Republic%';


SELECT * FROM country WHERE LifeExpectancy BETWEEN 60 AND 70;
SELECT * FROM country WHERE LifeExpectancy > 70;
SELECT Region, COUNT(*) AS NumRegions FROM country GROUP BY Region;
SELECT * FROM country ORDER BY SurfaceArea ASC LIMIT 1; 


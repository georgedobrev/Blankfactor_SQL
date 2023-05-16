-- Task 1 
SELECT * FROM country WHERE Continent = 'Asia'; 
SELECT * FROM country WHERE (Continent = 'Asia' OR Continent = 'Africa') AND Population > 100000000;
SELECT * FROM country WHERE Name = 'Andorra' OR Name = 'Barbados' OR Name = 'Yemen' OR Name = 'Poland';
SELECT * FROM country WHERE (Continent <> 'South America' AND Continent <> 'North America') AND GovernmentForm LIKE '%Republic%';


-- Task 2 
 
SELECT * FROM country WHERE LifeExpectancy BETWEEN 60 AND 70;
SELECT * FROM country WHERE LifeExpectancy > 70;
SELECT DISTINCT Region, COUNT(*) AS NumRegions
FROM country
GROUP BY Region;
SELECT * FROM country ORDER BY SurfaceArea ASC LIMIT 1; 

-- LAB WORK 4
USE world;

-- task 1:
SELECT COUNT(*) AS NumCountries
FROM country
WHERE IndepYear >= 1970;

-- task 2:
SELECT Continent
FROM country
GROUP BY Continent;

-- task 3:
SELECT Continent, SUM(SurfaceArea) AS TotalSurfaceArea
FROM country
WHERE Continent = 'Europe'
GROUP BY Continent;

-- task 4:
SELECT 
    Continent, 
    ROUND(SUM(SurfaceArea)) AS TotalSurfaceArea
FROM 
    country
GROUP BY 
    Continent
ORDER BY 
    TotalSurfaceArea DESC
LIMIT 
    3;

-- task 5:
SELECT 
    CountryCode, 
    AVG(population) AS AvgPopulation
FROM 
    city
GROUP BY 
    CountryCode
ORDER BY 
    AvgPopulation;

-- task 6:
SELECT 
    District, 
    SUM(population) AS TotalPopulation
FROM 
    city
WHERE 
    CountryCode = 'NLD'
GROUP BY 
    District
HAVING 
    TotalPopulation > 1000000
ORDER BY 
    TotalPopulation DESC;
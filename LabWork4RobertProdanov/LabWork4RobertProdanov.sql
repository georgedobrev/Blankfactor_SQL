/*Task1*/

use world;

SELECT COUNT(*)
FROM country 
WHERE IndepYear >=1970;


/*Task2*/

SELECT COUNT(DISTINCT Continent)
FROM country

/*Task3*/

SELECT SUM(SurfaceArea)
FROM country 
WHERE Continent  = 'Europe';

/*Task4*/

SELECT ROUND(SUM(SurfaceArea), 2) AS SurfaceArea, Continent 
FROM country
GROUP BY continent
ORDER BY SurfaceArea DESC
LIMIT 3;

/*Task5*/
SELECT ROUND(Avg(Population), 1) AS Population , CountryCode  
FROM city 
GROUP BY CountryCode 
ORDER BY Population  asc;

/*Task6*/
select District, sum(Population) as district_population 
from city 
where CountryCode = 'NLD'
group by District
having district_population > 1000000;







-- Task 1

SELECT count(*) AS independent_after_1970 FROM country WHERE IndepYear >= 1970;

-- Task 2

SELECT count(DISTINCT Continent) AS number_of_continents FROM country c;

-- Task 3

SELECT round(sum(SurfaceArea), 0) AS total_surface_area_europe FROM country c WHERE Continent = 'Europe';

-- Task 4

SELECT continent, sum(SurfaceArea) AS surface_area FROM country c GROUP BY Continent ORDER BY sum(SurfaceArea) DESC LIMIT 3;

-- Task 5

SELECT CountryCode, round(avg(Population), 0) AS avg_city_population FROM city c2 GROUP BY CountryCode ORDER BY avg(Population);

-- Task 6

SELECT District, sum(Population) FROM CITY WHERE CountryCode = 'NLD' GROUP BY District HAVING sum(Population) > 1000000 ORDER BY sum(Population) DESC;



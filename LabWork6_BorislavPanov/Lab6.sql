-- Task 1

SELECT 
	c.CountryCode 
	, c2.Name
	, c.Name 
	, c2.Continent 
FROM city c 
INNER JOIN country c2 ON c2.Code = c.CountryCode;

-- Task 2

SELECT 
	c.CountryCode,
	c2.Name,
	c.Name, 
	c2.Continent 
FROM city c
INNER JOIN country c2 ON c2.Code = c.CountryCode WHERE c2.Continent = 'Europe' ORDER BY c.Name ASC;


-- Task 3

SELECT 
	c.CountryCode,
	AVG(c.Population) AS avg_population,
	c2.Name AS country_name
FROM city c
INNER JOIN country c2 ON c2.Code = c.CountryCode
GROUP BY c.CountryCode, c2.Name, c.Name
ORDER BY avg_population ASC;


-- Task 4

SELECT * FROM countrylanguage c;

SELECT
	c.Code,
	c.Name,
	count(c2.`Language`) AS offical_languages
FROM country c 
INNER JOIN countrylanguage c2 ON c2.CountryCode = c.Code WHERE c2.IsOfficial = 'T'
GROUP BY c.Code, c.Name
HAVING offical_languages >= 3
ORDER BY offical_languages desc;



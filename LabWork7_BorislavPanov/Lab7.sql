-- Task 1

SELECT
employee_id, first_name, last_name, email, hire_date, department_id, Salary, Previous_experience 
FROM employees
UNION
SELECT
employee_id, first_name, last_name, NULL AS email, NULL AS hire_date, NULL AS department_id, NULL AS Salary, NULL AS Previous_experience 
FROM employees_duplicate;


-- Task 2

SELECT 
	Name, 
	District,
	CountryCode 
FROM city c
WHERE CountryCode IN(
	SELECT
	Code 
	FROM country c2 WHERE continent = 'Europe'
);

-- Task 3

SELECT
	c.Name,
	e.TotalPopulation
FROM
	country c
JOIN
	(
		SELECT
			CountryCode,
			SUM(Population) AS TotalPopulation
		FROM
			city c2
		GROUP BY
			CountryCode
		HAVING 
			SUM(Population) > 1000000 
	) AS e ON c.Code = e.CountryCode 
ORDER BY 
	e.totalpopulation desc;






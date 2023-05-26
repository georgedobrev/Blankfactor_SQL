-- First Query
SELECT 
    emp_id AS employee_id, 
    f_name AS first_name, 
    l_name AS last_name, 
    NULL AS department_id, 
    NULL AS email, 
    NULL AS hire_date, 
    NULL AS salary, 
    NULL AS previous_experience 
FROM 
    emp_duplicate;

-- Second Query
SELECT 
    cityName.Name AS CityName, 
    cityName.District AS CityDistrict, 
    cityName.CountryCode AS CountryCode 
FROM 
    city cityName 
WHERE 
    cityName.CountryCode IN (
        SELECT 
            countryDetails.Code 
        FROM 
            country countryDetails 
        WHERE 
            countryDetails.Continent = 'Europe'
    );

-- Third Query
SELECT 
    countryInfo.Name AS CountryName, 
    SUM(cityInfo.Population) AS CityPopulation
FROM 
    country countryInfo 
JOIN 
    city cityInfo ON countryInfo.Code = cityInfo.CountryCode 
WHERE 
    countryInfo.Code IN (
        SELECT 
            cityData.CountryCode 
        FROM 
            city cityData 
        GROUP BY 
            cityData.CountryCode 
        HAVING 
            SUM(cityData.Population) > 1000000
    )
GROUP BY 
    countryInfo.Code, 
    countryInfo.Name 
ORDER BY 
    CityPopulation DESC;
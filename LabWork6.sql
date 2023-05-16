-- Task 1:

-- Write a query to retrieve information about cities in the world database, including their country code, country name 
-- and continent. Include only the values that are present in both datasets (city and country tables).
select city.Name ,city.CountryCode ,country.Continent 
from city 
inner join country on city.CountryCode  = Country.Code ;


-- Task 2:

-- Write a query based on the previous one but only for the countries in Europe and order the result alphabetically by 
-- the city.
select city.Name, city.CountryCode, country.Continent 
from city 
inner join country on city.CountryCode = Country.Code
where country.Continent  = 'Europe';


-- Task 3:

-- Write a query to retrieve information about the average population of the cities of each country in the dataset. 
-- Present the result starting from the smallest average city population. Include only the countries and cities present
--  in both cities and countries datasets.
select round(avg(city.Population)) as Average_City_Population, country.Name as Country_Name
from city 
inner join country on city.CountryCode  = country.Code 
group by country.Name 
order by Average_City_Population asc;


-- Task 4:

-- Write a query to retrieve information about the number of official languages spoken in the different countries.
-- List the name of the country as well as the number of official languages spoken. Present only the countries that 3
--  or more official languages are present and order the result properly.

select country.Name  , sum(countrylanguage.IsOfficial) as Number_Of_Official_Languages
from country 
left join countrylanguage on country.Code = countrylanguage.CountryCode 
where countrylanguage.IsOfficial  = "T"
group by country.Name 
having Number_Of_Official_Languages >= 3
order by Number_Of_Official_Languages desc;


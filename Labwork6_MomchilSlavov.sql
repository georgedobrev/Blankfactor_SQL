1:
select city.name as cityname, city.CountryCode, country.name as Country_Name, country.continent
from city
inner join country on city.CountryCode  = Country.Code ;


2:
select city.name as cityname, city.CountryCode, Country_Name as countryname, country.continent
from city
join country on city.CountryCode = country.code
where country.continent = 'Europe'
order by city.name asc;


3:
select round(avg(city.Population)) as Average_City_Population, country.Name as Country_Name
from city 
inner join country on city.CountryCode  = country.Code 
group by country.Name 
order by Average_City_Population asc;


4:
select country.name, count(countrylanguage.IsOfficial) as Number_Of_Official_Languages
from country 
inner join countrylanguage  on country.code = countrylanguage.countryCode
where countrylanguage.IsOfficial = 'T'
group by country.name 
having sum_official_lang >= 3
order by sum_official_lang desc;

use world;
#TASK 1

select 
	city.Name as City
	, country.Code as CountryCode
	, country.Name as Country
	, country.Continent
from city
inner join country on city.CountryCode = country.Code ;


#TASK 2

select 
	city.Name as City
	, country.Code as CountryCode
	, country.Name as Country
	, country.Continent
from city
inner join country on city.CountryCode = country.Code 
where country.Continent = 'Europe'
order by city.Name asc;


#TASK 3

select 
	country.Name as Country
	, avg(city.Population) as AverageCityPopulation
from city
inner join country on city.CountryCode = country.Code 
group by country.Code, country.Name 
order by AverageCityPopulation asc;

#TASK 4

select
	c1.name
	, count(c2.IsOfficial) as NumberOfOfficialLanguages
from country c1
inner join countrylanguage c2 on c1.code = c2.countryCode
where c2.IsOfficial = 'T'
group by c1.name 
having NumberOfOfficialLanguages >= 3
order by NumberOfOfficialLanguages desc;










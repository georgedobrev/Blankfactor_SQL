/*Task1*/

select c.Name, c.CountryCode, co.Name, co.Continent 
from city as c
inner join country as co
on co.Code = c.CountryCode;
order by c.name asc; 

/*Task2*/

select city.Name, city.CountryCode, country.Name, country.Continent 
from city 
inner join country
on country.Code = city.CountryCode
where country.Continent = 'Europe';

/*Task3*/

select
round(avg(c.population)) as avg_city_population, cn.name as countryName
from city c 
inner join country cn on c.countryCode = cn.code
group by cn.name order by avg_city_population asc; 

/*Task4*/

select
c.name, count(c2.IsOfficial) as numOfficialLang
from country c
left join countrylanguage c2 on c.code = c2.countryCode and c2.IsOfficial = 'T'
group by c.name 
having numOfficialLang >= 3
order by numOfficialLang desc;


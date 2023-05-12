/*Task1*/

select c.Name, c.CountryCode, co.Name, co.Continent 
from city as c
inner join country as co
on co.Code = c.CountryCode;

/*Task2*/

select city.Name, city.CountryCode, country.Name, country.Continent 
from city 
inner join country
on country.Code = city.CountryCode
where country.Continent = 'Europe';

/*Task3*/



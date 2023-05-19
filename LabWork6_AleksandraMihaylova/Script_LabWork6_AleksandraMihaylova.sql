select c.Name, c.CountryCode, c2.Name, c2.Continent 
from city c 
inner join country c2 on c2.Code = c.CountryCode;

select c.Name as city_name, c.CountryCode, c2.Name as country_name, c2.Continent 
from city c 
inner join country c2 on c2.Code = c.CountryCode
where c2.Continent = 'Europe'
order by c.Name asc;

select c2.Name, avg(c.Population) as avarage_population
from city c 
inner join country c2 
on c.CountryCode = c2.Code 
group by c2.Name 
order by avarage_population asc;

select c.Name, count(c2.`Language`) as official_language_count
from country c 
inner join countrylanguage c2 on c2.CountryCode = c.Code 
group by c2.IsOfficial, c.Name 
having c2.IsOfficial = 'T' and official_language_count >= 3
order by official_language_count desc;

select c.Name, c.CountryCode, co.Name, co.Continent 
from city as c
inner join country as co
on co.Code = c.CountryCode;
 
select c.Name, c.CountryCode, co.Name, co.Continent 
from city as c
inner join country as co
on co.Code = c.CountryCode
where co.Continent = 'Europe'
order by c.Name asc;
 
select co.Name as country_name, avg(c.Population) as average_city_population
from city as c
inner join country as co
on c.CountryCode = co.Code
group by co.Name
order by average_city_population asc;
 
select c.Name, count(cl.IsOfficial) as count_of_official_languages
from country as c
inner join countrylanguage as cl
on cl.CountryCode = c.Code
group by cl.IsOfficial, c.Name 
having cl.IsOfficial = 'T' and count_of_official_languages >= 3
order by count_of_official_languages desc;
--Task1

select c.Name as city_name, c.CountryCode, c2.Name as country_name, c2.Continent 
from city c 
inner join country c2 
on c2.Code = c.CountryCode 
;

--Task2

select c.Name as city_name, c.CountryCode, c2.Name as country_name, c2.Continent 
from city c 
inner join country c2 
on c2.Code = c.CountryCode 
where c2.Continent = 'Europe'
order by c.Name asc
;

--Task3

select c2.Name as country_name, avg(c.Population) as avarage_city_population
from city c 
inner join country c2 
on c.CountryCode = c2.Code 
group by c2.Name 
order by avarage_city_population asc 
;

--Task4

select c.Name as country_name, count(cl.IsOfficial) as count_of_official_languages
from country as c
inner join countrylanguage as cl
on cl.CountryCode = c.Code
group by cl.IsOfficial, c.Name 
having cl.IsOfficial = 'T' and count_of_official_languages >= 3
order by count_of_official_languages desc
;
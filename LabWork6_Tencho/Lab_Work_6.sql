#LAB WORK 6
use world;

#task 1:
select
c2.Name as City,
c.Name as Country,
CountryCode,
continent
from country  c 
inner join city c2 on c2.CountryCode  = c.Code

#task 2:
select
c2.Name as City,
c.Name as Country,
CountryCode,
continent
from country  c 
inner join city c2 on c2.CountryCode  = c.Code
where Continent = 'Europe'
order by c2.name asc;

#task 3: 
select c2.Name as Country, 
avg(c.Population) as avarage_city_population
from city c 
inner join country c2 on c.CountryCode = c2.Code 
group by c2.Name 
order by avarage_city_population asc;

#task 4:
select c.Name as Country,
count(cl.IsOfficial) as official_languages
from country c
inner join countrylanguage cl
on cl.CountryCode = c.Code
group by cl.IsOfficial, c.Name 
having cl.IsOfficial = 'T' and official_languages >= 3
order by official_languages desc;

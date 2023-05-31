select
c1.countryCode, c1.name, 
c1.Population, c1.district,
c2.name as country_name, 
c2.continent 
from city c1 
inner join country c2 on c1.CountryCode = c2.Code; 

select
c1.countryCode,
c1.name,
c1.Population, 
c1.district, 
c2.name as country_name, 
c2.continent 
from city c1 
inner join country c2 on c1.CountryCode = c2.Code 
where c2.continent = 'Europe' 
order by c1.name asc; 

select
round(avg(c1.population)) as Avg_City_Population, 
c2.name as country_name
from city c1 
inner join country c2 on c1.countryCode = c2.code
group by c2.name order by 	Avg_City_Population asc; 

select
c1.name, count(c2.IsOfficial) as num_official_languages
from country c1
left join countrylanguage c2 on c1.code = c2.countryCode and c2.IsOfficial = 'T'
group by c1.name 
having num_official_languages >= 3
order by num_official_languages desc;
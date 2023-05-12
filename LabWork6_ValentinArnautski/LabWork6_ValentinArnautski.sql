select c.Code , c.Name as CountryName, c.Continent, c2.Name as cityName from country c 
inner join city c2 on c.Code = c2.CountryCode;

select c.Code , c.Name as CountryName, c.Continent, c2.Name as cityName from country c 
inner join city c2 on c.Code = c2.CountryCode where c.Continent = 'Europe'


select
round(avg(c1.population)) as avg_city_population, c2.name as countryName
from city c1 
inner join country c2 on c1.countryCode = c2.code
group by c2.name order by avg_city_population asc; 

select
c1.name, sum(c2.IsOfficial) as officialLanguages
from country c1
left join countrylanguage c2 on c1.code = c2.countryCode
where c2.IsOfficial = "T"
group by c1.name 
having num_official_lang >= 3
order by num_official_lang desc;



select * from city c1;
select * from country c2;
select * from countrylanguage l;








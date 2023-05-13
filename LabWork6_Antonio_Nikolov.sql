select city.name as cityname, city.countrycode, country.name as countryname, country.continent
from city
join country on city.countrycode = country.code;

select city.name as cityname, city.countrycode, country.name as countryname, country.continent
from city
join country on city.countrycode = country.code
where country.continent = 'Europe'
order by city.name asc;


select country.name as countryname, avg(city.population) as avg_city_pop
from country c1
join city on country.code = city.countrycode
group by country.name
order by avg_city_pop asc;


select
country.name, sum(countrylanguage.IsOfficial) as sum_official_lang
from country 
left join countrylanguage  on country.code = countrylanguage.countryCode
where countrylanguage.IsOfficial = "T"
group by country.name 
having sum_official_lang >= 3
order by sum_official_lang desc;



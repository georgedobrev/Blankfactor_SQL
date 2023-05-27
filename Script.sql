
#TASK1
select CountryCode, c.Name as cityName , Continent, c2.Name as countyName from city c inner join country c2 on c.CountryCode  = c2.Code ;

#TASK2
select CountryCode, c.Name as cityName, Continent, c2.Name as countryName from city c inner join country c2 on c.CountryCode  = c2.Code where Continent = 'Europe' order by cityName  asc ;

#TASK3
select c2.Name , avg(c2.Population ) as City_AVG_Population from country c join city c2 ON c.Code = c2.CountryCode group by c2.Name order by City_AVG_Population asc;

#TASK4
select c.Name , count(c2.IsOfficial)  as count_Of_Official_Languages
from country c join countrylanguage c2 on c.Code = c2.CountryCode
where c2.IsOfficial = 'T'
group by c.Name  
having count_Of_Official_Languages >= 3
order by count_Of_Official_Languages desc ;



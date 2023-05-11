use world;
select * from country;

select code, name from country;


select code,
name,
Continent,
Region,
SurfaceArea,
IndepYear
from country
where Continent = 'Europe';

select
*
from country
where continent = 'Europe' and region = 'Western Europe';
select
*
from country
where continent = 'Europe' or continent = 'South America';
select
*
from country
where governmentform = 'Republic' and continent = 'Europe' or continent = 'South
America';
select
*
from country
where governmentform = 'Republic' and (continent = 'Europe' or continent = 'South
America');

select
*
from country
where continent = 'Europe' or continent = 'South America' or continent = 'North
America';

select
*
from country
where continent in ('Europe', 'South America','North America');

select
*
from country
where continent not in ('Europe', 'South America','North America');

select governmentform, continent, name from country where GovernmentForm = 'Republic' and (Continent = 'Europe'
 or Continent = 'South America');
 

select * from country 
where name like('%B');

select * from country 
where name like('Be%');

select * from country 
where name like('%a');

select * from country 
where name like('a%a');

select * from country 
where name like('%a%');

select * from country 
where name like('Belarus');

select * from country 
where name like('Belaru_');

select * from country 
where name like('Belar_');

select * from country 
where name not like('Belarus');

select * from country 
where name not like('Belaru%');

select * from country 
where name like('belarus');

select *
from country where IndepYear between 1925 and 1950;

select name, IndepYear from country where name between 'A' and 'C';

select name, IndepYear
from country where IndepYear not between 1925 and 1950;

select name, IndepYear
from country where IndepYear  is null;

select *from country;


Select
*
from country
order by continent desc, name asc
limit 100;

#TASK1

select * from country where (Continent = 'Asia' or Continent = 'Africa') and Population > 100000;

select * from country where Name in ( 'Andorra','Barbados', 'Yemen', 'Vietnam', 'Poland');

select * from country where name not like 'South%' and name not like 'North%' and GovernmentForm not like ('Republic');


#TASK2

select * from country where LifeExpectancy between 60 and 70;
select * from country where LifeExpectancy > 70;
select count(*) as counter, Region from country group by Region;
select * from country order by SurfaceArea limit 1;

#TASK1
select * from country where Continent = 'Asia';

select * from country where (Continent = 'Asia' or Continent = 'Africa') and Population > 1000000;

select * from country where Name in ( 'Andorra','Barbados', 'Yemen', 'Vietnam', 'Poland');

select * from country where name not like '%America' and GovernmentForm like ('%Republic%');


#TASK2

select * from country where LifeExpectancy between 60 and 70;
select * from country where LifeExpectancy > 70;
select count(*) as counter, Region from country group by Region;
select * from country order by SurfaceArea limit 1;

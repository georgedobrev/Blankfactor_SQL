use world; 

/*Task 1*/

select * from country where Continent  = 'Asia';
select * from country where (Continent  = 'Asia' or Continent  = 'Africa') and Population >100000000;
select * from country where Name ='Andorra' or Name ='Barbados' or Name ='Yemen' or Name ='Vietnam' or Name = 'Poland';
select * from country where Continent not in ('South America' or'North America') and GovernmentForm like ('%republic%');

/*Task 2*/

select * from country where LifeExpectancy between 60 and 70;
select * from country where LifeExpectancy > 70;
select count(*) as numberOfCountries, Region from country group by Region;
select * from country order by SurfaceArea asc limit 1;




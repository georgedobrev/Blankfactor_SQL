use world 

select * from country c 
where Continent = 'Asia';

select * from country c 
where Continent  in ('Africa', 'Asia') and Population > 100000000;

select * from country c 
where Name in ('Andorra', 'Barbados', 'Yemen', 'Vietnam', 'Poland.');

select * from country c 
where Continent not in ('South America', 'North America') and GovernmentForm like('%republic%');


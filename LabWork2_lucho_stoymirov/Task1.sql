select * from country c where Continent = 'Asia';

select * from country c
where Continent = 'Asia'
or Continent = 'Africa'
and Population > 100000000;

select * from country c 
where name = 'Andorra'
or name = 'Barbados'
or name = 'Yemen'
or name = 'Vietnam'
or name = 'Poland';

select GovernmentForm  from country c 
where not Continent = 'North America'
and not Continent = 'South America'
and not GovernmentForm like '%Republic%';
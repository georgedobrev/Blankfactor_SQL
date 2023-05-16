use world;


select * from country where Continent = 'Asia';
select * from country where Continent in ('Asia', 'Africa') and Population > 100000000;
select * from country where Name like ('Andorra') or Name like ('Barbados') or Name like ('Yemen') or Name like ('Vietnam') or Name like ('Poland');
select * from country where Name like ('Andorra' or 'Barbados' or 'Yemen' or 'Vietnam' or 'Poland');




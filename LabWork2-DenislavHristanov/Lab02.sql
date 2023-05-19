select * 
from countries
where continent = 'Asia';

select *
from  countries
where continent in ('Asia','Africa') and
populartion > 1000000;

select * 
from countries
where name in('Andora','Barbados','Yemen','Vietnam','Poland');

select *
from countries
where continent not in('South America','North America')
and government_form like '%Republic%';

Task 2
select *
from countries
where life expectancy between 60 and 70 years;

select * 
from countries
where life expectancy > 70 years;

select count(distinct region) as
num_regions
from countries;

select *
from countries
order by surface_area asc;
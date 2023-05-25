use world;

select * from country c 
where c.Continent IN('Asia');

select * from country c 
where c.Continent IN('Asia','Africa') and c.Population > 100000000;

select * from country c 
where c.Name  IN('Andorra', 'Barbados', 'Yemen', 'Vietnam','Poland');

select * from country c 
where c.Continent not IN('South America','North America') and c.GovernmentForm like('%republic%');

select * from country c 
where c.LifeExpectancy between 60 and 70;

select * from country c 
where c.LifeExpectancy > 70;

select count(*) as TotalRegionCount,c.Region  from country c 
group by c.Region 

select * from country c 
order by c.SurfaceArea
limit 1;




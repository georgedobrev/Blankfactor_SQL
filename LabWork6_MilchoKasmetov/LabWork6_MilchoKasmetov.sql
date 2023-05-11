use world;

select c.Name ,c.CountryCode ,c2.Name as Country_Name ,c2.Continent  from city c 
inner join country c2 on c2.Code = c.CountryCode; 

select c.Name ,c.CountryCode ,c2.Name as Country_Name ,c2.Continent  from city c 
inner join country c2 on c2.Code = c.CountryCode
where c2.Continent in ('Europe')
order by c.Name ;


select c2.Name as Country_Name ,avg(c.Population) as AvgPopulation  from city c 
inner join country c2 on c2.Code = c.CountryCode
group by c2.Name 
order by AvgPopulation ;

select c2.Name ,sum(c.IsOfficial) as TotalOfcLang from countrylanguage c  
inner join country c2 on c2.Code =c.CountryCode 
where c.IsOfficial = 'T'
group by c2.Name 
having TotalOfcLang >= 3
order by TotalOfcLang desc;


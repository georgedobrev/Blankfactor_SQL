use world

select c.CountryCode , c.Name,  c1.Code , c1.Continent from city c
inner join country c1 on c.CountryCode = c1.Code;

select c.CountryCode , c.Name,  c1.Code , c1.Continent from city c
inner join country c1 on c.CountryCode = c1.Code
where c1.Continent = 'Europe'
order by c.Name asc;

select round(sum(c.Population)) as avarege_population from city c
inner join country c1 on c1.Code = c.CountryCode
group by c1.Name order by avarege_population asc;

select c.Name, sum(cl.IsOfficial) as languages_spoken from country c 
left join countrylanguage cl on c.Code = cl.CountryCode
where cl.IsOfficial = 'T'
group by c.Name
having languages_spoken >= 3
order by languages_spoken desc;
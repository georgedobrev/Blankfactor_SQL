#Lab Work 7
use world;

#task 1:
select employee_id, first_name, last_name, department_id, email, hire_date, salary, previous_experience  
from employees
union
select employee_id, first_name, last_name, 
null as department_id, null as email, null as hire_date, null as salary, null as previous_experience
from employees_duplicate;

use world;

#task 2:
select  
cityName.Name as City, 
cityName.District as CityDistrict, 
cityName.CountryCode as CountryCode 
from 
city cityName 
where 
cityName.CountryCode in (select 
                         countryDetails.Code 
                         from 
                         country countryDetails 
                         where 
                         countryDetails.Continent = 'Europe');

#task 3:
select
countryInfo.Name as Country, 
SUM(cityInfo.Population) as CityPopulation
from 
    country countryInfo 
join 
    city cityInfo on countryInfo.Code = cityInfo.CountryCode 
where 
    countryInfo.Code in ( select 
                          cityData.CountryCode 
                          from 
                          city cityData 
                          group by 
                          cityData.CountryCode 
                          having 
                          SUM(cityData.Population) > 1000000)
group by
    countryInfo.Code, 
    countryInfo.Name 
order by 
    CityPopulation desc;
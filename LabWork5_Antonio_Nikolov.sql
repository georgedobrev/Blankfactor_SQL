select name,
ifnull(lifeExpectancy,'N/A') as lifeExpectancy
from country
;


select name, surfaceArea,
case
	when surfaceArea > 1000000 then 'Large'
	when surfaceArea > 50000 then 'Medium'
	when surfaceArea > 20000 then 'Small'
	else 'Extra small'
end as surfacearea_country
from country; 
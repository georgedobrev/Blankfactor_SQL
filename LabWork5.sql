-- Task 1:

-- Write a query to retrieve information about the countries with not available life expectancy values. Replace the missing values with ‘N/A‘.

select Name 
,ifnull(LifeExpectancy,'N/A') as Life_Expectancy
from country ;

-- Task 2:

-- Write a query to retrieve information about the size of each country in the dataset as follows:

-- Large countries - Surface area more than 1 million  sq.km

-- Medium - between 50 000 and 1 million sq.km

-- Small - between 20 000 and 50 000 sq.km

-- Extra small - less than 20 sq.km

-- Write the query in two ways - with nested if statements and with case.


select SurfaceArea, Name 
, case 
	when SurfaceArea > 1000000 then 'Large country'
	when SurfaceArea >50000 then 'Medium country'
	when SurfaceArea >20000 then 'Small country'
	when SurfaceArea < 20 then 'Extra small'
	else 'N/A' end as Country_Size
	from country ;

select Name, SurfaceArea
,if (SurfaceArea >1000000, 'Large country'
, if (SurfaceArea >50000, 'Medium country'
, if (SurfaceArea >20000, 'Small country'
,if (SurfaceArea <20, 'Extra small'
,'N/A')))) as Country_Size
from country ;


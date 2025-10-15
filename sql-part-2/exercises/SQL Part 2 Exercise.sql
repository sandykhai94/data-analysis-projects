--STRING FUNCTIONS

--QUESTION 1
SELECT RIGHT(Base_Name,3)
FROM other_FHV_services_jan_aug_2015

--QUESTION 2
select CHARINDEX(' ', Number_of_Trips) AS Trip_spaces,
CHARINDEX(' ', Number_of_Vehicles ) AS Vehicle_spaces
from other_FHV_services_jan_aug_2015


--DATE FUNCTIONS

--QUESTION 1
SELECT DATENAME(MONTH, Pick_Up_Date)
FROM other_FHV_services_jan_aug_2015
ORDER BY MONTH(Pick_Up_Date) DESC


--QUESTION 2
SELECT DAY(Pick_Up_Date) AS Day_number, DATENAME(MONTH, Pick_Up_Date) as month_name
FROM other_FHV_services_jan_aug_2015
ORDER BY Day_number ASC

--AGGREGATE FUNCTIONS

--QUESTION 1 

SELECT *
FROM lyft
WHERE start_lng = (
  SELECT MAX(start_lng)
  FROM lyft
);


--QUESTION 2
SELECT *
FROM lyft
WHERE start_lat = (
    SELECT MAX(start_lat)
    FROM lyft
)
--  QUESTION 3
SELECT CONCAT(Base_Number, ': ', Base_Name) 
from other_FHV_services_jan_aug_2015
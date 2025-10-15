SELECT LEFT(surname, 3) as Surname_first_3, nationality, driverId
FROM formula_one.dbo.drivers;


SELECT MONTH(date) AS race_month,
DATENAME(MONTH, date) AS month_name,
COUNT(*) AS num_races
FROM formula_one.DBO.races
GROUP BY month(date), datename(month, date)
order by num_races desc;



--Race reviews occur 4 days after each race. calculate the day of the race review for every race in the races each day
SELECT name AS race_name,
date AS race_date,
DATEADD(DAY, 4, DATE) AS review_date
FROM FORMULA_ONe.dbo.races

--how can we display each race date as a formatted string like "sunday, March 28, 2021?"
SELECT name as race_name, 
FORMAT(date, 'dddd, MMMM dd, yyyy')
from formula_one.dbo.races

*/

-- create a column that has original title, if it exists, or title if original_titla is null
SELECT authors, book_id, COALESCE(ORIGINAL_TITLE, TITLE) AS ORIGINAL_TITLE_REFINED
FROM BOOKSDB.DBO.BOOKS

--cell phone, home phone, work phone 
--primary phone contact
COALESCE(cell_phone, home_phone, work_phone)



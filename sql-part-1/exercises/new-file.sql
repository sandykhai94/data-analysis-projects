-- Question One
SELECT TOP 1000 *
FROM [dbo].[books]

-- QUESTION TWO
SELECT COUNT(Title)
FROM [dbo].[books]

-- QUESTION THREE
SELECT COUNT(*)
FROM [dbo].[books]
WHERE original_publication_year < 1800

-- QUESTION FOUR
SELECT DISTINCT authors
FROM [dbo].[books]


-- QUESTION FIVE
SELECT books_count
from [dbo].[books]
WHERE language_code = 'eng'
OR language_code = 'en-'

-- QUESTION SIX
SELECT original_title
FROM [dbo].[books]
WHERE original_publication_year
BETWEEN 1914 AND 1921


--The Book Tags TABLE
--QUESTION ONE
Select top 1000 *
FROM [dbo].[book_tags]
ORDER BY tag_id DESC

--QUESTION TWO
SELECT COUNT(GOODREADS_BOOK_ID)
FROM [dbo].[book_tags]
GROUP BY tag_id

--QUESTION THREE
SELECT COUNT(GOODREADS_BOOK_ID) AS BOOKS
FROM [dbo].[book_tags]
GROUP BY tag_id

--THE RATINGS TABLE
--QUESTION ONE
SELECT TOP 1000 *
from [dbo].[ratings]
order by book_id DESC

--QUESTION TWO
SELECT COUNT(USER_ID)
FROM [dbo].[ratings]
WHERE rating < 2;

--QUESTION THREE
SELECT SUM(book_id)
FROM BooksDB.dbo.ratings
WHERE rating >4;

--The Tags Table
--QUESTION ONE
SELECT tag_name
FROM [dbo].tags
WHERE tag_name LIKE 'mystery%'
OR tag_name LIKE '%mystery'
OR tag_name LIKE '%mystery%'

--QUESTION TWO
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name < 'd' 
AND tag_name >= 'c';
--SELECTING ALL WHERE TAG NAME STARTS WITH LETTER C 

--THE To Read Table
--QUESTION ONE
SELECT COUNT(book_id) as 'Total Books to Read'
FROM [dbo].[to_read]
GROUP BY [user_id]
ORDER BY [user_id] ASC

--QUESTION TWO
SELECT COUNT(book_id) as 'Total Books to Read'
FROM [dbo].[to_read]
GROUP BY [user_id]
ORDER BY 1 DESC


--QUESTION 1 

--PART A. 
--BooksDB.dbo.books is Left and BooksDB.dbo.to_read is right

--PART B.
--Before we added the WHERE clause, it returned all the user and book id's where the values were empty or missing (NULL). When we added IS NOT NULL, it returned a numerical value for user and book ID


--QUESTION 2
--PART A.
--BooksDB.dbo.books is left and BooksDB.dbo.to_read is RIGHT

--PART B.
--The RIGHT-JOINED tables differ from the LEFT-join table because it is returning all values in the RIGHT table and matching results from the left. 

--QUESTION 3
--PART A.
--It was populated by combining two tables to return the top 30 books from the columns. You would use a full join when you want all data from both tables.

--QUESTION 4
--PART A.
--An inner joins returns the results that only includes values in both tables
--PART B.
--No, because inner join will return results from both tables that have the same data. 

--PART C. 
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM dbo.books AS b
INNER JOIN dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE b.title IS NOT NULL
ORDER BY tr.book_id;

--QUESTION 5
--PART A. 
--The Alchemist 
SELECT book_tags.[count], books.title
FROM BooksDB.DBO.books
INNER JOIN book_tags ON books.best_book_id = book_tags.goodreads_book_id
ORDER BY [count] DESC

--PART B.
--100
SELECT tag_id, [count], title
FROM BooksDB.DBO.books
INNER JOIN book_tags ON books.best_book_id = book_tags.goodreads_book_id
WHERE title = 'The Alchemist'
ORDER BY [count] DESC

--PART C
SELECT tag_name
FROM tags
WHERE tag_id = '30574'

SELECT book_tags.tag_id, tags.tag_name, [count], title
FROM BooksDB.DBO.books
INNER JOIN book_tags ON books.best_book_id = book_tags.goodreads_book_id
INNER JOIN tags ON book_tags.tag_id = tags.tag_id
WHERE title = 'The Alchemist'
ORDER BY [count] DESC

--QUESTION 6
--PART A.
SELECT *
FROM tags
WHERE tag_name LIKE '%BAKING%'
--3819

--PART B.
SELECT book_tags.tag_id, [count], title
FROM BooksDB.DBO.books
INNER JOIN book_tags ON books.best_book_id = book_tags.goodreads_book_id
WHERE tag_id = '3819'

--QUESTION 7
--PART A
select *
FROM books
INNER JOIN to_read ON books.book_id = to_read.book_id

--PART B
SELECT TOP (10) title, COUNT(to_read.[user_id]) AS Popularity
from to_read
INNER JOIN books ON to_read.book_id = books.book_id
GROUP BY title 
ORDER BY Popularity DESC

--QUESTION 8
--PART A.
SELECT TOP 10 [user_id], COUNT(title) AS title_count
FROM to_read
INNER JOIN books ON to_read.book_id = books.book_id
GROUP BY [user_id]
ORDER BY (title_count) DESC

--PART B.
SELECT title
FROM to_read
INNER JOIN books ON to_read.book_id = books.book_id
WHERE to_read.[user_id] = '12483'

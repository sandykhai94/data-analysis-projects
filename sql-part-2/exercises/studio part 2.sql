--QUESTION 1

SELECT TOP 1 len(title) as title_length, title
from BooksDB.dbo.books
order BY title_length DESC

--QUESTION 2

SELECT MIN(len(authors)) as author_length,authors, title
FROM BooksDB.DBO.books
GROUP BY authors,title
ORDER BY author_length ASC


--QUESTION 3
SELECT title
FROM BooksDB.DBO.books
WHERE title like '%the%'

--QUESTION 4
SELECT LEFT(authors,1) as begin_author_name
FROM BooksDB.DBO.books
WHERE left (authors,1) = 'z'

--QUESTION 5
SELECT COUNT(title) 
FROM BooksDB.DBO.books
WHERE LEFT(language_code, 2) <> 'EN'


--QUESTIONS 6



--QUESTION 7
SELECT CONCAT(title, ' by ', authors,' in ',language_code,' language.')
FROM BooksDB.dbo.books
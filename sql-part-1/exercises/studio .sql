---QUESTION ONE
use BooksDB
select top 100 book_id,title,average_rating as "rating"
from dbo.books
where average_rating > 4.5
order by rating DESC
--The Complete Calvin and Hobbies

--QUESTION TWO
select top 1 book_id, authors, title, average_rating AS "average rating"
from BooksDB.dbo.books
order by "average rating"
--2.47

--QUESTION THREE
select top 1 tag_id, "COUNT"
from BooksDB.dbo.book_tags
order by "count" DESC
--596234

--QUESTION FOUR 
USE BooksDB
SELECT tag_id, SUM("count") AS total_sum
FROM book_tags
GROUP BY tag_id
ORDER BY total_sum DESC
--30574

--QUESTION FIVE
SELECT COUNT(original_title) FROM BooksDB.dbo.books
WHERE original_publication_year < 2010
AND original_publication_year >= 2000

--QUESTION SIX
SELECT COUNT(original_title) FROM BooksDB.dbo.books
WHERE title LIKE '%Happy%'

--QUESTION SEVEN
use BooksDB
select *
from dbo.books
where average_rating > 4.5
AND authors = 'J.K. Rowling'
ORDER BY authors ASC, average_rating ASC

--QUESTION EIGHT
use BooksDB
select COUNT(authors)
from dbo.books
WHERE authors < 'Roll'
AND authors > 'Rock'

/* PART TWO */
--QUESTION ONE
/* I'd like to know how many distinct authors there are in the database. */

SELECT COUNT(DISTINCT authors) AS distinct_number_of_authors
FROM BooksDB.dbo.books

--QUESTION TWO
/* I'd like to know how many distinct books there are in the database. */
SELECT COUNT(DISTINCT title) AS distinct_number_of_books
FROM BooksDB.dbo.books
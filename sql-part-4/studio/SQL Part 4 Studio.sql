-- Willow wants a list of book titles that have multiple authors attributed to them.  Write a query to return her desired results.

--QUESTION 1. 

SELECT b.original_title
FROM BooksDB.dbo.books as b
WHERE b.authors IN
    (SELECT b.authors 
        FROM BooksDB.dbo.books as b
        WHERE b.authors LIKE '%,%' 
    )

--QUESTION 2.
-- Ira was asked by a customer for titles that have been tagged "Meditation".  As you create a query for Ira, think about how the tables in BooksDB are organized as you write your query.

SELECT b.title
FROM BooksDB.dbo.books AS b
WHERE b.book_id IN (
    select bt.goodreads_book_id
    FROM BooksDB.dbo.book_tags as bt
    WHERE tag_id IN (
        select t.tag_id
        FROM BooksDB.dbo.tags as t
        WHERE tag_name = 'Meditation'
    )
)

--QUESTION 3.
-- Alyce wants to create a display of books with an average rating of 4.2 or higher, but she only wants books that share both title and original title.  Write a query that displays both the original title and title for Alyce, in descending order by rating.  Make sure that none of the original titles contain NULL values either.

SELECT DISTINCT title, original_title, average_rating
FROM BooksDB.dbo.books
WHERE average_rating > 4.2
INTERSECT
SELECT DISTINCT title, original_title, average_rating
FROM BooksDB.dbo.books
WHERE title = original_title
INTERSECT
SELECT DISTINCT title, original_title, average_rating
FROM BooksDB.dbo.books
WHERE original_title is NOT NULL
ORDER BY average_rating DESC


--QUESTION 4.
-- Thisbe is planning to make a long-term display of popular books that she will update monthly, reflecting different time periods.  She wants to make it reader-centric by including titles that readers have averagely rated higher than the book's actual average rating. 

-- **Part A:**   Write a query that compares the publication time with average reader ratings.

-- **Part B:**  She wants the list ordered by year, then the book title


SELECT b.title, b.original_publication_year, (SELECT AVG(r.rating) FROM ratings r WHERE r.book_id = b.book_id) AS average_user_rating, B.average_rating 
FROM books as b 
WHERE b.book_id IN ( 
    SELECT r.book_id 
    FROM ratings r 
    GROUP BY r.book_id 
    HAVING AVG(r.rating) > b.average_rating)
ORDER BY original_publication_year, title
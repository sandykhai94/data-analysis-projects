--QUESTION 1.

SELECT COUNT(DISTINCT [user_id]) AS raters_above_average FROM ratings
WHERE rating > (
    SELECT average_rating
    FROM books
    WHERE ratings.book_id = books.book_id
)

--QUSTION 2.
--Write a query that returns the book ids of all books that have over 1000 ratings of 1 star or over 1000 ratings of 5 stars.

SELECT book_id
FROM books
WHERE ratings_1 > 1000 
UNION 
SELECT book_id
from books
WHERE ratings_5 > 1000 

--QUESTION 3.
--Write a query that returns the book ids of all books that have over 1000 ratings of 1 star and over 1000 ratings of 5 stars.

SELECT book_id
FROM books
WHERE ratings_1 > 1000 
INTERSECT
SELECT book_id
from books
WHERE ratings_5 > 1000 

--QUESION 4.
--Write a query that returns the book ids of books that have a language code of "en-US" and not a langugae code of "en-GB".

SELECT book_id
FROM books
WHERE language_code = 'en-US'
EXCEPT
SELECT book_id
FROM books
WHERE language_code = 'en-GB'

--QUESTION 5.
--Write a query that returns the names of the tags and the tag ids for tags that were used over 100,000 times for a book. 

SELECT tag_name, tag_id 
FROM tags
WHERE tag_id IN (
    SELECT tag_id
    FROM book_tags
    WHERE COUNT >= 100000
)
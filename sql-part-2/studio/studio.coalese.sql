-- 1. Write a query that will return the number of users who rated a book above it's average rating.


SELECT COUNT(USER_ID)
FROM books AS b
JOIN ratings AS r
    ON b.book_id = r.book_id
WHERE r.rating > b.average_rating

select *
from books

SELECT *
FROM ratings
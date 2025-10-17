
--EVENT 1

SELECT 
    bt.tag_id,
    COUNT(bt.tag_id) AS tag_usage_count,
    t.tag_name
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t
    ON bt.tag_id = t.tag_id
WHERE 
    t.tag_name LIKE '%woman%'
    OR t.tag_name LIKE '%female%'
GROUP BY 
    bt.tag_id, 
    t.tag_name
ORDER BY 
    tag_usage_count DESC;


--EVENT 2
SELECT *
FROM tags
WHERE tag_name LIKE '%birthday%'

SELECT authors, title, ratings_1, tag_id
FROM books
INNER JOIN book_tags ON books.book_id = book_tags.goodreads_book_id
WHERE tag_id = '4655'

-- I first ran a query to find the tag ID for my selected event then I joined the books and book tags table and searched for the tag id.

--PART 2
--1. May and July
--2. Summer and Fourth of July

-- PART 3
SELECT *
FROM tags
WHERE tag_name LIKE '%Summer%'

SELECT authors, title, ratings_1, tag_id
FROM books
INNER JOIN book_tags ON books.book_id = book_tags.goodreads_book_id
WHERE tag_id = '22407'

SELECT *
FROM tags
WHERE tag_name LIKE '%July%'

SELECT authors, title, ratings_1, tag_id
FROM books
INNER JOIN book_tags ON books.book_id = book_tags.goodreads_book_id
WHERE tag_id = '16728'
Having AVG(ratings_1) > 4

--SUMMARIZE EVENT 1
--I chose summer as my event, so I found books about summer.


--SUMMARIZE EVENT 2
-- I chose the fourth of july so I found the books about July with an average rating over 4. 
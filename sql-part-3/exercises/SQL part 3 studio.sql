


SELECT bt.tag_id, COUNT(*) AS tag_name, bt.goodreads_book_id
FROM BooksDB.DBO.book_tags AS bt
FULL JOIN BooksDB.dbo.book_tags as tag
ON bt.tag_id = tag.tag_id
HAVING tag.tag_id LIKE '%females&'
ORDER BY tag_name DESC


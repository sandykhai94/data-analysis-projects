---QUESTION ONE
use BooksDB
select top 100 book_id,title,average_rating as "rating"
from dbo.books
where average_rating > 4.5
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
select top 1 

--QUESTION FIVE
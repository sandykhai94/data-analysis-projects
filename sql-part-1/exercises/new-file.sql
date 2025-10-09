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
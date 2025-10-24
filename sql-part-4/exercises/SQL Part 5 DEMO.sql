-- -- Create a table

-- CREATE TABLE Sep2025JunkDB.sandy_khaithianthong.Customers (
--     customer_id INT PRIMARY KEY IDENTITY (1,1),
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR (50) NOT NULL,
--     email VARCHAR (100),
--     subscription VARCHAR (50),
--     join_date DATE DEFAULT GETDATE()
-- );

-- INSERT INTO Sep2025JunkDB.sandy_khaithianthong.Customers (First_name, last_name, email, subscription)
-- VALUES ('Ava', 'Rodriguez', 'ava.rodriguez@gmail.com', 'pro'),
-- ('Liam', 'Patel', 'liam.patel@email.com', 'free'),
-- ('Noah', 'Chen', 'noah.chen@email.com', 'basic');

-- SELECT *
-- FROM Sep2025JunkDB.sandy_khaithianthong.Customers
-- */

-- UPDATE Sep2025JunkDB.sandy_khaithianthong.Customers
-- SET email = 'noah.chen@newdomain.com'
-- WHERE customer_id = 4

-- SELECT *
-- INTO #payingcustomers
-- FROM Sep2025JunkDB.sandy_khaithianthong.Customers
-- WHERE subscription <> 'free'

-- SELECT *
-- FROM #payingcustomers

-- SELECT customer_id FROM #payingcustomers

-- WITH email_users AS (
--     SELECT * FROM Sep2025JunkDB.sandy_khaithianthong.Customers
--     WHERE email LIKE '%email.com%'
-- )

-- SELECT *
-- from email_users

-- SELECT email from email_users

--temp table from stratch
-- CREATE TABLE #Tempsales (
--     sales_id INT IDENTITY (1,1) PRIMARY KEY,
--     product_name VARCHAR (100),
--     quantity INT, 
--     Sale_date DATE DEFAULT GETDATE()
-- );
-- --inserting data manaually
-- INSERT INTO #Tempsales (product_name, quantity)
-- VALUES ('Notebook', 5), ('Pencil', 20);

-- DELETE FROM Sep2025JunkDB.sandy_khaithianthong.Customers
-- WHERE email like '%newdomain.com%'

-- SELECT * FROM Sep2025JunkDB.sandy_khaithianthong.Customers

-- CREATE TABLE Sep2025JunkDB.sandy_khaithianthong.Orders
-- (
--     order_id INT PRIMARY KEY IDENTITY(1,1),
--     customer_id INT FOREIGN KEY REFERENCES Sep2025JunkDB.sandy_khaithianthong.Customers (customer_id),
--     order_date DATE DEFAULT GETDATE(),
--     total_amount DECIMAL (10,2)
-- );

-- INSERT INTO (customer_id, total_amount)
-- VALUES (1, 249.99) (2, 175.50)

-- DELETE FROM Sep2025JunkDB.sandy_khaithianthong.Customers
-- WHERE customer_id = 2;

DROP TABLE Sep2025JunkDB.sandy_khaithianthong.Orders

SELECT * FROM Sep2025JunkDB.sandy_khaithianthong.Orders

DROP TABLE Sep2025JunkDB.sandy_khaithianthong.Customers

SELECT * FROM Sep2025JunkDB.sandy_khaithianthong.Customers
-- CREATE TABLE sandy_khaithianthong.planned_makes (
--     Id INT,
-- Recipe_name VARCHAR (255),
--     Ingredients varchar (255),
--     Directions VARCHAR (255),
--     Prep_time INT,
--     Cook_time INT
-- )

-- Used these commands as helpers

-- SELECT *
-- FROM sandy_khaithianthong.Planned_makes

--SHOW TABLES;

--DESCRIBE sandy_khaithianthong.planned_makes;

INSERT INTO sandy_khaithianthong.planned_makes (Id, Recipe_name, Ingredients, Directions, Prep_time, Cook_time)
VALUES (0, 'Sandys special cupcakes', 'flour, butter, milk', 'whisk, pour into pan, put into oven', 10, 15)

INSERT INTO sandy_khaithianthong.planned_makes (Id, Recipe_name, Ingredients, Directions, Prep_time, Cook_time)
VALUES (1, 'Sandys special brownies', 'flour, chocolate, milk', 'whisk, pour into pan, put into oven', 12, 20)

INSERT INTO sandy_khaithianthong.planned_makes (Id, Recipe_name, Ingredients, Directions, Prep_time, Cook_time)
VALUES (2, 'Sandys special cookies', 'flour, sugar, butter', 'whisk, roll into ball, put into oven', 10, 25)

UPDATE sandy_khaithianthong.planned_makes
SET Prep_time = 12
WHERE id = 0

DELETE FROM sandy_khaithianthong.planned_makes
WHERE Id = 0

DROP TABLE sandy_khaithianthong.planned_makes
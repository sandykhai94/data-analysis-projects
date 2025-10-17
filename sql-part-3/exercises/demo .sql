-- What circuit did each race take place at (across all years)?
-- circuit table: circuitID, name 
-- races: year, name, circuitID, date
/*

SELECT races.name AS race_name,
races.year AS race_year,
races.date AS race_date,
cir.name AS circuit_name
FROM formula_one.DBO.races AS races 
INNER JOIN formula_one.dbo.circuits AS cir
ON races.circuitId = cir.circuitId;


-- I want the pitstop data, but with race name instead of race_id
-- pitstop: raceID, driverId, stop, lap, time, duration, milliseconds
-- races: raceId, year, name

SELECT races.year, races.name, pit.driverId, pit.stop, pit.lap, pit.time, pit.duration, pit.milliseconds
FROM formula_one.dbo.races AS races
LEFT JOIN formula_one.dbo.pit_stops AS pit
ON races.raceId = pit.raceId
WHERE pit.raceId IS NULL

-- Which circuits hosted races in 2021?
-- year, name of race, name of circuit 

SELECT R.year, r.name AS race_name, cir.name AS circuit_name
FROM formula_one.dbo.races AS R
INNER JOIN formula_one.DBO.circuits AS cir
ON R.circuitId = cir.circuitId
WHERE r.year = 2021
ORDER BY cir.name


-- Who won each race in 2021?
-- I want a table with first and last name of the winners and the name of the name of the race they won
-- names are in drivers table, race name is in races table
-- And position (where 1 = winner) is in results table

SELECT r.name AS racc_name, 
d.forename + ' ' + d.surname AS winner_name
FROM formula_one.DBO.results AS res 
INNER JOIN formula_one.DBO.races as R ON RES.raceid = r.raceId
INNER JOIN formula_one.DBO.drivers AS d on res.driverId = d.driverId
WHERE R.year = 2021 AND res.position = '1' AND res.[position] <> '\N'


-- How many races has each circuit held?
-- Circuit table (name), and races table (raceId)

SELECT C.NAME AS circuit_name,
COUNT(r.raceid) AS TOTAL_RACES
FROM formula_one.dbo.circuits AS C
LEFT JOIN formula_one.dbo.races AS r ON c.circuitId = r.circuitID
GROUP BY c.name 
ORDER BY TOTAL_RACES DESC

-- How many races did each driver participate in 2021?
-- drives (name), results (diver ids?)

SELECT
    d.forename + ' ' + d.surname AS driver_name
    count(res.resultid) as races_entered
    FROM formula_one.dbo.drivers AS d 
    INNER JOIN formula_one.dbo.results AS res ON D.driverID = res.droverid
    GROUP BY d.forename, d.surname
    ORDER BY races_entered DESC

    -- How many races did each driver participate in 20221?
    -- races tables needs to come in for year
    SELECT
    d.forename + ' ' + d.surname AS driver_name
    count(res.resultid) as races_entered
    FROM formula_one.dbo.drivers AS d 
    INNER JOIN formula_one.dbo.results AS res ON D.driverID = res.droverid
    INNER JOIN formula_one.races as r on res.raceid = r.raceid 
    WHERE r.year = 2021
    GROUP BY d.forename, d.surname
    ORDER BY races_entered DESC


    -- How many races have been at each circuit?
    SELECT c.name as circuit_name,
    COUNT(R.RACEID) as TOTAL_RACES
    from formula_one.dbo.circuits as C
    left join formula_one.dbo.races as r on c.circuitId = r.circuitId
    WHERE r.year >= 2000
    GROUP BY c.name
    HAVING COUNT(r.raceId) > 5 
*/

-- How many races have been won by drivers of each nationality?
SELECT
--d.forename + ' ' + d.surname as winner_name,
d.nationality, COUNT(nationality) as num_of_wins
FROM formula_one.dbo.results AS res
INNER JOIN formula_one.dbo.races as r on res.raceid = r.raceid 
INNER JOIN formula_one.dbo.drivers as d on res.driverId = d.driverId
WHERE res.position = 1 and res.position <> '\N'
GROUP by D.nationality
ORDER BY num_of_wins DESC nationality = 'british' or nationality = 'canadian' or nationality = 'australian'
--this is my SQL cheat sheet

CREATE TABLE animals(
    id INTEGER,
    type TEXT,
    age INTEGER);

INSERT INTO animals (id, type, age) VALUES (1, 'dog', 6);

INSERT INTO animals (id, type, age) VALUES (2, 'cat', 9);

INSERT INTO animals (id, type, age) VALUES (3, 'alpaca', 13);

ALTER TABLE animals ADD COLUMN gender TEXT;

UPDATE animals SET gender = 'female' WHERE id = 1;

DELETE FROM animals WHERE gender IS NULL;

SELECT * FROM animals;

SELECT 'type' FROM animals;

SELECT * FROM animals WHERE age > 1 OR type = 'dog';

SELECT * FROM animals WHERE type LIKE 'C__s' and age > 1;

SELECT * FROM animals WHERE type LIKE '%s'; -- any amount of letters before 's'

SELECT * FROM animals WHERE type BETWEEN 'a' AND 'e'; --type starting with a not including e


SELECT DISTINCT 'age' FROM animals; --this means showing every id with age that
--does not repeat and only showing the first use of a repeat

SELECT age AS 'numberino' FROM animals; -- renames the column;

SELECT id, age FROM animals ORDER BY age DESC; -- high to low listing or Z - A

SELECT * FROM animals ORDER BY age DESC LIMIT 3; -- only shows 3, Limits aren't always supported
--by all SQL databases

SELECT type,
    CASE
        WHEN age > 0 and age < 4
            THEN 'Youngin'
        WHEN age > 3 and age < 8
            THEN 'Mid-Aged Woman'
        ELSE 'Old bruh'
    END AS 'done'
FROM animals; -- this is an if else thingy

SELECT COUNT(*) FROM animals WHERE age > 5; --counting all of the animals that are older than 5
SELECT ROUND(AVG(age), 2) FROM animals; -- finds rounded average of animals to two decimal places


        

--Calculations performed on multiple rows of a table are called aggregates.
-- COUNT(): count the number of rows
--SUM(): the sum of the values in a column
--MAX()/MIN(): the largest/smallest value
--AVG(): the average of the values in a column
--ROUND(): round the values in the column
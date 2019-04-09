--this is my SQL cheat sheet

CREATE TABLE animals(
    id INTEGER,
    type TEXT,
    age INTEGER);

INSERT INTO animals (id, type, age)
VALUES (1, 'dog', 3);

INSERT INTO animals (id, type, age) 
VALUES (2, 'cat', 2);

ALTER TABLE animals add COLUMN gender TEXT;

UPDATE animals SET gender = 'female' WHERE id = 1;

DELETE FROM animals WHERE gender IS NULL;

SELECT * FROM animals;

SELECT 'type' FROM animals;

SELECT * FROM animals WHERE age > 1 OR type = 'dog';

SELECT * FROM animals WHERE type LIKE 'C__s' and age > 1;

SELECT * FROM animals WHERE type LIKE '%s'; -- any amount of letters before 's'

SELECT * FROM animals WHERE type BETWEEN 'a' AND 'e'; --type starting with a not including e


--SELECT DISTINCT 'age' FROM animals; this means showing every id with age that
--does not repeat and only showing the first use of a repeat

--Calculations performed on multiple rows of a table are called aggregates.
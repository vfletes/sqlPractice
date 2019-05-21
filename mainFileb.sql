-- this is my SQL cheat sheet

CREATE TABLE animals(
    id INTEGER,
    breed TEXT,
    age INTEGER);

INSERT INTO animals (id, breed, age) VALUES (1, 'dog', 6);

INSERT INTO animals (id, breed, age) VALUES (2, 'cat', 9);

INSERT INTO animals (id, breed, age) VALUES (3, 'alpaca', 13);

ALTER TABLE animals ADD gender TEXT;

UPDATE animals SET gender = 'female' WHERE id = 1;

DELETE FROM animals WHERE gender IS NULL;

SELECT * FROM animals;

--SELECT 'breed' FROM animals;

--SELECT * FROM animals WHERE age > 1 OR breed = 'dog';

--SELECT * FROM animals WHERE breed LIKE 'C__s' and age > 1;

--SELECT * FROM animals WHERE breed LIKE '%s'; -- any amount of letters before 's'

--SELECT * FROM animals WHERE breed BETWEEN 'a' AND 'e'; -- breed starting with a not including e


--SELECT DISTINCT 'age' FROM animals; -- this means showing every id with age that
--does not repeat and only showing the first use of a repeat

--SELECT age AS 'numberino' FROM animals; -- renames the column;

--SELECT id, age FROM animals ORDER BY age DESC; -- high to low listing or Z - A

--SELECT * FROM animals [ORDER BY age DESC LIMIT 3]; -- only shows 3, Limits aren't always supported
--by all SQL databases

--SELECT breed,
  --  CASE
     --   WHEN age > 0 and age < 4
           -- THEN 'Youngin'
        --WHEN age > 3 and age < 8
          --  THEN 'Mid-Aged Woman'
        --ELSE 'Old bruh'
    --END AS 'done'
--FROM animals; -- this is an if else thingy

--SELECT COUNT(*) FROM animals WHERE age > 5; -- counting all of the animals that are older than 5
--SELECT ROUND(AVG(age), 2) FROM animals; -- finds rounded average of animals to two decimal places

--SELECT age, COUNT(*)
--FROM animals
--GROUP BY age; -- this is getting the mean of the ages in animals

--SELECT breed, SUM(age)
--FROM animals
--GROUP BY breed
--HAVING SUM(age) > 3; -- finds sum of ages in each breed (dog, cat, alpaca)        
-- could select multiple categories then breed GROUP BY 1, 2 to order in that order
-- having allows the editor to only show the sum of each breed of animal with at the sum 
-- being more than 3
 
 -- this joins multiple tables
-- SELECT *
-- FROM orders
-- JOIN subscriptions
	-- ON orders.subscription_id = subscriptions.subscription_id;

-- the beginning of ON before WHERE has to be and id they both possess, in the codecademy case description was not in both
-- SELECT *
-- FROM orders
-- JOIN subscriptions
	-- ON orders.subscription_id = subscriptions.subscription_id WHERE subscriptions.description = 'Fashion Magazine';



-- Calculations performed on multiple rows of a table are called aggregates.
-- COUNT(): count the number of rows
-- SUM(): the sum of the values in a column
-- MAX()/MIN(): the largest/smallest value
-- AVG(): the average of the values in a column
-- ROUND(): round the values in the column
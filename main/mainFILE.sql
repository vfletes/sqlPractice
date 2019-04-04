--this is my SQL project
CREATE TABLE animals(
    id INTEGER,
    type TEXT,
    age INTEGER);
INSERT INTO animals (id, type, age)
VALUES (1, 'dog', 3);
SELECT * FROM animals;
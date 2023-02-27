/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';


SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';


SELECT name FROM animals WHERE neutered=true AND escape_attempts<3;


SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';


SELECT name, escape_attempts FROM animals WHERE weight_kg>10.5;


SELECT * FROM animals WHERE neutered=true;


SELECT * FROM animals WHERE name!= 'Gabumon';


SELECT * FROM animals WHERE weight_kg>= 10.4 AND weight_kg<=17.3;


/* Transactions */
/* 1st Transaction */
BEGIN;
UPDATE animals SET species='unspecified';

SELECT * FROM animals;

ROLLBACK;

SELECT * FROM animals;

/* 2nd Transaction */
BEGIN;
UPDATE animals SET species='digimon' WHERE name LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species IS NULL;

SELECT * FROM animals;

COMMIT; 

SELECT * FROM animals;


/*3rd Transaction*/
BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;


/*4th Transaction*/
BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SELECT * FROM animals;
SAVEPOINT sp1;
UPDATE animals SET weight_kg=weight_kg*-1;
SELECT * FROM animals;
ROLLBACK sp1;
SELECT * FROM animals;
UPDATE animals SET weight_kg=weight_kg*-1 WHERE weight_kg<0;
COMMIT;
SELECT * FROM animals;


/*queries for the question*/
/*How many animals are there*/
SELECT COUNT(*) FROM animals;

/*How many animals have never tried to escape*/
SELECT COUNT(*) FROM animals WHERE escape_attempts=0;


/*What is the average weight of animals*/
SELECT AVG(weight_kg) FROM animals;


/*Who escapes the most, neutered or not neutered animals*/
SELECT neutered , MAX(escape_attempts) FROM animals GROUP BY neutered;

/*What is the minimum and maximum weight of each type of animal*/
SELECT species, MAX(weight_kg), MIN(weight_kg) FROM animals GROUP BY species;


/*What is the average number of escape attempts per animal type of those born between 1990 and 2000*/
SELECT species,AVG(escape_attempts) FROM animals WHERE date_of_birth>'1990-01-01' AND date_of_birth<'2000-01-01' GROUP BY species;


/*JOIN QUERIES*/
SELECT name,full_name FROM animals INNER JOIN owners ON owners.id=owner_id WHERE full_name='Melody Pond';


SELECT animals.name, species.name FROM animals INNER JOIN species ON species.id=species_ID WHERE species.name='Pokemon';


SELECT * FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;


SELECT species.name, COUNT(*) AS num_of_animals FROM animals JOIN species ON animals.species_ID=species.id GROUP BY species.name;


SELECT animals.name, owners.full_name FROM animals LEFT JOIN owners ON owner_id=owners.id WHERE animals.species_ID=2 AND owner_ID=4;


SELECT animals.name, owners.full_name, animals.escape_attempts FROM animals LEFT JOIN owners ON owner_id=owners.id WHERE animals.owner_ID=7 AND animals.escape_attempts=0;

 
SELECT owners.full_name, COUNT(*) AS number_of_animals FROM animals JOIN owners ON animals.owner_ID=owners.id GROUP BY owners.full_name;
SELECT owners.full_name, COUNT(*) AS number_of_animals FROM animals JOIN owners ON animals.owner_ID=owners.id WHERE full_name='Melody Pond' GROUP BY owners.full_name;
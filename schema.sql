/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    ID INT PRIMARY KEY NOT NULL,
    name varchar(100),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg float
);


ALTER TABLE animals ADD species varchar(100);

/*Create owners table*/
CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name varchar(100),
    age INT
);


/*Create species table*/
CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100)
);

/*Modify animals table*/
ALTER TABLE animals DROP ID;
ALTER TABLE animals ADD COLUMN id int GENERATED BY DEFAULT AS IDENTITY;
SELECT * FROM animals;

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE species ADD PRIMARY KEY (id);
ALTER TABLE animals ADD COLUMN species_ID int;
ALTER TABLE animals ADD FOREIGN KEY (species_ID) REFERENCES species(id);

ALTER TABLE owners ADD PRIMARY KEY (id);
ALTER TABLE animals ADD COLUMN owner_id int;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners(id);
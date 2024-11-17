--------------------------------
-- CREATE TABLES
--------------------------------
CREATE TABLE galaxy(
  galaxy_id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE NOT NULL,
  habitable_planets NUMERIC(10),
  description TEXT,
  discovery_date DATE
);

CREATE TABLE star(
  star_id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE NOT NULL,
  description TEXT,
  discovery_date DATE
);

CREATE TABLE planet(
  planet_id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE NOT NULL,
  diameter INTEGER,
  description TEXT,
  can_support_life BOOLEAN
);

CREATE TABLE moon(
  moon_id serial  PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE NOT NULL,
  diameter INTEGER,
  can_support_life BOOLEAN,
  description TEXT
);

CREATE TABLE space_mission (
  space_mission_id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE NOT NULL,
  description TEXT,
  launch_date DATE,
  end_date DATE,
  galaxy_id INTEGER REFERENCES galaxy(galaxy_id),
  star_id INTEGER REFERENCES star(star_id),
  planet_id INTEGER REFERENCES planet(planet_id)
);
--------------------------------
-- ADD FOREIGN KEYS
--------------------------------
ALTER TABLE star
ADD COLUMN 
  galaxy_id INTEGER REFERENCES galaxy(galaxy_id);

ALTER TABLE planet
ADD COLUMN 
  star_id INTEGER REFERENCES star(star_id);

ALTER TABLE moon
ADD COLUMN 
  planet_id INTEGER REFERENCES planet(planet_id);

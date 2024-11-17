--------------------------------
-- DROP FOREIGJN CONSTRAINTS
--------------------------------
ALTER TABLE moon
DROP CONSTRAINT moon_planet_id_fkey;

ALTER TABLE planet
DROP CONSTRAINT planet_star_id_fkey;

ALTER TABLE star
DROP CONSTRAINT star_galaxy_id_fkey;

--------------------------------
-- DROP TABLES
--------------------------------
DROP TABLE IF EXISTS space_mission;
DROP TABLE IF EXISTS moon;
DROP TABLE IF EXISTS planet;
DROP TABLE IF EXISTS star;
DROP TABLE IF EXISTS galaxy;

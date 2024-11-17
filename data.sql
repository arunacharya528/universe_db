
--------------------------------
-- INSERT DATA
--------------------------------

INSERT INTO galaxy (galaxy_id, name, habitable_planets, description, discovery_date)
VALUES
  (1, 'Andromeda Galaxy', 5, 'A spiral galaxy with a supermassive black hole.', '2020-01-01'),
  (2, 'Milky Way Galaxy', 3, 'The galaxy that contains our solar system.', '2019-01-01'),
  (3, 'Whirlpool Galaxy', 2, 'A grand-design spiral galaxy with a large central bulge.', '2018-01-01'),
  (4, 'Sombrero Galaxy', 1, 'A face-on spiral galaxy with a large central bulge.', '2017-01-01'),
  (5, 'Pinwheel Galaxy', 4, 'A face-on spiral galaxy with a large central bulge.', '2016-01-01'),
  (6, 'Black Eye Galaxy', 0, 'A spiral galaxy with a large central bulge and a dark dust lane.', '2015-01-01');

INSERT INTO star (star_id, name, galaxy_id, description, discovery_date)
VALUES
  (1, 'Sun', 2, 'The star at the center of our solar system.', '2020-01-01'),
  (2, 'Sirius', 2, 'The brightest star in the night sky.', '2019-01-01'),
  (3, 'Betelgeuse', 3, 'A red supergiant star in the constellation Orion.', '2018-01-01'),
  (4, 'Rigel', 3, 'A blue supergiant star in the constellation Orion.', '2017-01-01'),
  (5, 'Deneb', 5, 'A blue-white supergiant star in the constellation Cygnus.', '2016-01-01'),
  (6, 'Vega', 5, 'A white main-sequence star in the constellation Lyra.', '2015-01-01');

INSERT INTO planet (planet_id, name, diameter, star_id, can_support_life, description)
VALUES
  (1, 'Earth', 12742, 1, TRUE, 'A terrestrial planet with a diverse range of life.'),
  (2, 'Mars', 6792, 1, FALSE, 'A rocky planet with a thin atmosphere.'),
  (3, 'Kepler-452b', 15000, 5, TRUE, 'A potentially habitable exoplanet.'),
  (4, 'Venus', 12104, 1, FALSE, 'A rocky planet with a thick atmosphere.'),
  (5, 'Mercury', 4879, 1, FALSE, 'A small rocky planet with a thin atmosphere.'),
  (6, 'Jupiter', 142984, 1, FALSE, 'A gas giant planet.'),
  (7, 'Saturn', 116460, 1, FALSE, 'A gas giant planet with rings.'),
  (8, 'Uranus', 51118, 1, FALSE, 'An ice giant planet.'),
  (9, 'Neptune', 49528, 1, FALSE, 'An ice giant planet.'),
  (10, 'Kepler-10b', 10000, 5, FALSE, 'A hot Jupiter exoplanet.'),
  (11, '55 Cancri e', 15000, 6, FALSE, 'A super-Earth exoplanet.'),
  (12, 'HD 209458b', 10000, 6, FALSE, 'A hot Jupiter exoplanet.');

INSERT INTO moon (moon_id, name, diameter, planet_id, can_support_life, description)
VALUES
  (1, 'The Moon', 3474, 1, FALSE, 'The natural satellite of Earth.'),
  (2, 'Io', 2634, 2, FALSE, 'The innermost moon of Jupiter.'),
  (3, 'Europa', 3139, 2, FALSE, 'A moon of Jupiter with a possible subsurface ocean.'),
  (4, 'Ganymede', 5262, 2, FALSE, 'The largest moon of Jupiter.'),
  (5, 'Callisto', 4821, 2, FALSE, 'The outermost moon of Jupiter.'),
  (6, 'Titan', 5151, 3, FALSE, 'The largest moon of Saturn.'),
  (7, 'Enceladus', 5042, 3, FALSE, 'A moon of Saturn with a possible subsurface ocean.'),
  (8, 'Dione', 1123, 3, FALSE, 'A moon of Saturn.'),
  (9, 'Rhea', 1528, 3, FALSE, 'A moon of Saturn.'),
  (10, 'Triton', 2700, 4, FALSE, 'The largest moon of Neptune.'),
  (11, 'Nereid', 340, 4, FALSE, 'A moon of Neptune.'),
  (12, 'Phobos', 22, 5, FALSE, 'A moon of Mars.'),
  (13, 'Deimos', 12, 5, FALSE, 'A moon of Mars.'),
  (14, 'Hyperion', 270, 6, FALSE, 'A moon of Saturn.'),
  (15, 'Iapetus', 1460, 6, FALSE, 'A moon of Saturn.'),
  (16, 'Phoebe', 213, 6, FALSE, 'A moon of Saturn.'),
  (17, 'Janus', 179, 6, FALSE, 'A moon of Saturn.'),  
  (18, 'Kepler-10b I', 500, 10, FALSE, 'A moon of Kepler-10b, a hot Jupiter exoplanet.'),
  (19, 'Kepler-10b II', 400, 10, FALSE, 'A moon of Kepler-10b, a hot Jupiter exoplanet.'),
  (20, 'Kepler-10b III', 600, 10, FALSE, 'A moon of Kepler-10b, a hot Jupiter exoplanet.');

INSERT INTO space_mission (name, description, launch_date, end_date, galaxy_id, star_id, planet_id)
VALUES 
  ('Voyager 1', 'A space probe that has traveled to interstellar space.', '1977-09-05', NULL, 1, 1, NULL),
  ('Mars Curiosity Rover', 'A rover that has explored the surface of Mars.', '2011-11-26', NULL, 1, 1, 2),
  ('Kepler Space Telescope', 'A space telescope that has discovered thousands of exoplanets.', '2009-03-07', NULL, 1, 2, NULL);

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    habitable_planets numeric(10,0),
    description text,
    discovery_date date
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter integer,
    can_support_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter integer,
    description text,
    can_support_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    launch_date date,
    end_date date,
    galaxy_id integer,
    star_id integer,
    planet_id integer
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    discovery_date date,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 5, 'A spiral galaxy with a supermassive black hole.', '2020-01-01');
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 3, 'The galaxy that contains our solar system.', '2019-01-01');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 2, 'A grand-design spiral galaxy with a large central bulge.', '2018-01-01');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 1, 'A face-on spiral galaxy with a large central bulge.', '2017-01-01');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 4, 'A face-on spiral galaxy with a large central bulge.', '2016-01-01');
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 0, 'A spiral galaxy with a large central bulge and a dark dust lane.', '2015-01-01');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 3474, false, 'The natural satellite of Earth.', 1);
INSERT INTO public.moon VALUES (2, 'Io', 2634, false, 'The innermost moon of Jupiter.', 2);
INSERT INTO public.moon VALUES (3, 'Europa', 3139, false, 'A moon of Jupiter with a possible subsurface ocean.', 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5262, false, 'The largest moon of Jupiter.', 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 4821, false, 'The outermost moon of Jupiter.', 2);
INSERT INTO public.moon VALUES (6, 'Titan', 5151, false, 'The largest moon of Saturn.', 3);
INSERT INTO public.moon VALUES (7, 'Enceladus', 5042, false, 'A moon of Saturn with a possible subsurface ocean.', 3);
INSERT INTO public.moon VALUES (8, 'Dione', 1123, false, 'A moon of Saturn.', 3);
INSERT INTO public.moon VALUES (9, 'Rhea', 1528, false, 'A moon of Saturn.', 3);
INSERT INTO public.moon VALUES (10, 'Triton', 2700, false, 'The largest moon of Neptune.', 4);
INSERT INTO public.moon VALUES (11, 'Nereid', 340, false, 'A moon of Neptune.', 4);
INSERT INTO public.moon VALUES (12, 'Phobos', 22, false, 'A moon of Mars.', 5);
INSERT INTO public.moon VALUES (13, 'Deimos', 12, false, 'A moon of Mars.', 5);
INSERT INTO public.moon VALUES (14, 'Hyperion', 270, false, 'A moon of Saturn.', 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 1460, false, 'A moon of Saturn.', 6);
INSERT INTO public.moon VALUES (16, 'Phoebe', 213, false, 'A moon of Saturn.', 6);
INSERT INTO public.moon VALUES (17, 'Janus', 179, false, 'A moon of Saturn.', 6);
INSERT INTO public.moon VALUES (18, 'Kepler-10b I', 500, false, 'A moon of Kepler-10b, a hot Jupiter exoplanet.', 10);
INSERT INTO public.moon VALUES (19, 'Kepler-10b II', 400, false, 'A moon of Kepler-10b, a hot Jupiter exoplanet.', 10);
INSERT INTO public.moon VALUES (20, 'Kepler-10b III', 600, false, 'A moon of Kepler-10b, a hot Jupiter exoplanet.', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 'A terrestrial planet with a diverse range of life.', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6792, 'A rocky planet with a thin atmosphere.', false, 1);
INSERT INTO public.planet VALUES (3, 'Kepler-452b', 15000, 'A potentially habitable exoplanet.', true, 5);
INSERT INTO public.planet VALUES (4, 'Venus', 12104, 'A rocky planet with a thick atmosphere.', false, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 4879, 'A small rocky planet with a thin atmosphere.', false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 142984, 'A gas giant planet.', false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 116460, 'A gas giant planet with rings.', false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 51118, 'An ice giant planet.', false, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 49528, 'An ice giant planet.', false, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-10b', 10000, 'A hot Jupiter exoplanet.', false, 5);
INSERT INTO public.planet VALUES (11, '55 Cancri e', 15000, 'A super-Earth exoplanet.', false, 6);
INSERT INTO public.planet VALUES (12, 'HD 209458b', 10000, 'A hot Jupiter exoplanet.', false, 6);


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES (4, 'Voyager 1', 'A space probe that has traveled to interstellar space.', '1977-09-05', NULL, 1, 1, NULL);
INSERT INTO public.space_mission VALUES (5, 'Mars Curiosity Rover', 'A rover that has explored the surface of Mars.', '2011-11-26', NULL, 1, 1, 2);
INSERT INTO public.space_mission VALUES (6, 'Kepler Space Telescope', 'A space telescope that has discovered thousands of exoplanets.', '2009-03-07', NULL, 1, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system.', '2020-01-01', 2);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky.', '2019-01-01', 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion.', '2018-01-01', 3);
INSERT INTO public.star VALUES (4, 'Rigel', 'A blue supergiant star in the constellation Orion.', '2017-01-01', 3);
INSERT INTO public.star VALUES (5, 'Deneb', 'A blue-white supergiant star in the constellation Cygnus.', '2016-01-01', 5);
INSERT INTO public.star VALUES (6, 'Vega', 'A white main-sequence star in the constellation Lyra.', '2015-01-01', 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: space_mission space_mission_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: space_mission space_mission_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: space_mission space_mission_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


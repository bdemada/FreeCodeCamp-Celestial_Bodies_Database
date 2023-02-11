--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(30) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    asteroid_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    description text,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_in_mill_km numeric(4,2),
    planet_id integer NOT NULL,
    is_spheric boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('Ceres', NULL, 3, 1, 1);
INSERT INTO public.asteroid VALUES ('Vesta', NULL, 3, 1, 2);
INSERT INTO public.asteroid VALUES ('Pallas', NULL, 3, 1, 3);
INSERT INTO public.asteroid VALUES ('Hygiea', NULL, 3, 1, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'Condor', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Sunflower', NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3, true);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 4, true);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 4, true);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 5, true);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 5, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, 5, true);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 5, true);
INSERT INTO public.moon VALUES (8, 'Amathea', NULL, 5, false);
INSERT INTO public.moon VALUES (9, 'Himalia', NULL, 5, false);
INSERT INTO public.moon VALUES (10, 'Elara', NULL, 5, false);
INSERT INTO public.moon VALUES (11, 'Pasiphae', NULL, 5, true);
INSERT INTO public.moon VALUES (12, 'Sinope', NULL, 5, true);
INSERT INTO public.moon VALUES (13, 'Lysithea', NULL, 5, true);
INSERT INTO public.moon VALUES (14, 'Carme', NULL, 5, true);
INSERT INTO public.moon VALUES (15, 'Ananke', NULL, 5, true);
INSERT INTO public.moon VALUES (16, 'Leda', NULL, 5, true);
INSERT INTO public.moon VALUES (17, 'Thebe', NULL, 5, false);
INSERT INTO public.moon VALUES (18, 'Metis', NULL, 5, false);
INSERT INTO public.moon VALUES (19, 'Adrastea', NULL, 5, true);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', NULL, 5, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', NULL, false, 3);
INSERT INTO public.planet VALUES (10, 'Proxima d', NULL, false, 3);
INSERT INTO public.planet VALUES (11, 'Proxima c', NULL, false, 3);
INSERT INTO public.planet VALUES (12, 'Methuselah', NULL, false, 6);
INSERT INTO public.planet VALUES (13, 'HD 145377 b', NULL, false, 6);
INSERT INTO public.planet VALUES (14, 'HD 153950 b', NULL, false, 6);
INSERT INTO public.planet VALUES (15, 'HIP 78530 b', NULL, false, 6);
INSERT INTO public.planet VALUES (16, 'HIP 79431 b', NULL, false, 6);
INSERT INTO public.planet VALUES (17, 'K2-24b', NULL, false, 6);
INSERT INTO public.planet VALUES (18, 'K2-24c', NULL, false, 6);
INSERT INTO public.planet VALUES (19, 'K2-33b', NULL, false, 6);
INSERT INTO public.planet VALUES (20, 'WASP-17b', NULL, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 3, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, 3, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', NULL, 3, NULL);
INSERT INTO public.star VALUES (4, 'Vega', NULL, 3, NULL);
INSERT INTO public.star VALUES (5, 'Altair', NULL, 3, NULL);
INSERT INTO public.star VALUES (6, 'Antares', NULL, 3, NULL);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

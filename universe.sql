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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(5,2),
    galaxy_types character varying(15),
    mass integer,
    radius integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    lifespan integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeform_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(5,2),
    distance_from_earth numeric(5,2),
    moon_id integer NOT NULL,
    description text,
    planet_id integer,
    mass integer,
    radius integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(5,2),
    distance_from_earth numeric(5,2),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    planet_types character varying(15),
    orbit_radius integer,
    planet_radius integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(5,2),
    galaxy_id integer,
    radius integer,
    mass integer
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
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeform_lifeform_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14.00, 'spiral galaxy', 133, 20);
INSERT INTO public.galaxy VALUES (2, 'Republic', 7.00, 'unkown', 53, 12);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 12.00, 'spiral galaxy', 443, 23);
INSERT INTO public.galaxy VALUES (4, 'Garbok', 122.00, 'unkown', 4243, 2233);
INSERT INTO public.galaxy VALUES (5, 'Vibros', 2.00, 'unkown', 33, 10);
INSERT INTO public.galaxy VALUES (6, 'Misk', 123.00, 'unkown', 2, 3);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, 110, 'Human');
INSERT INTO public.lifeform VALUES (2, NULL, 'Thargoid');
INSERT INTO public.lifeform VALUES (3, 2400, 'Obelisks');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 20.00, 400.00, 1, 'Rocks and dust make such a  pretty nightlight', 1, 2500, 3000);
INSERT INTO public.moon VALUES ('Phobos', 20.00, 400.00, 2, 'dusty', 2, 2500, 3000);
INSERT INTO public.moon VALUES ('Deimos', 20.00, 400.00, 3, 'anger', 2, 2500, 3000);
INSERT INTO public.moon VALUES ('Centax-1', 20.00, 400.00, 4, 'fear', 3, 2500, 3000);
INSERT INTO public.moon VALUES ('Centax-2', 20.00, 400.00, 5, 'panic', 3, 2500, 3000);
INSERT INTO public.moon VALUES ('Centax-3', 20.00, 400.00, 6, 'whatever', 3, 2500, 3000);
INSERT INTO public.moon VALUES ('Hesperidium', 20.00, 400.00, 7, 'amazing', 3, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 1 A', 20.00, 400.00, 8, 'remember the name', 4, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 1 B', 20.00, 400.00, 9, '100% will', 4, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 1 C', 20.00, 400.00, 10, '20% power', 4, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 2 A', 20.00, 400.00, 11, '50% consistency', 4, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 2 B', 20.00, 400.00, 12, 'just a beginning', 5, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 2 C', 20.00, 400.00, 13, 'water everywhere', 5, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 2 D', 20.00, 400.00, 14, 'trying so hard',6, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 4 a', 20.00, 400.00, 15, 'just completing description', 7, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 4 b', 20.00, 400.00, 16, 'filling description', 8, 2500, 3000);
INSERT INTO public.moon VALUES ('LHS 20 A 4 c', 20.00, 400.00, 17, 'description', 9, 2500, 3000);
INSERT INTO public.moon VALUES ('ezs 22', 20.00, 400.00, 18, 'completing task', 10, 2500, 3000);
INSERT INTO public.moon VALUES ('nava sitara', 20.00, 400.00, 19, 'completing task', 11, 2500, 3000);
INSERT INTO public.moon VALUES ('Nawaz ganja', 20.00, 400.00, 20, 'most corrupt leader of pakistan', 12, 2500, 3000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 10.00, 0.00, 'Only habitable Sol planet. Home to humanity.', true, true, 1, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (2, 'Venice', 40.00, 10.00, 'just filled description', false, false, 2, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (3, 'Mars', 80.00, 20.00, 'just filled description', false, false, 3, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (4, 'Urenus', 120.00, 30.00, 'just filled description', false, false, 4, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (5, 'Saturn', 200.00, 40.00, 'just filled description', false, false, 5, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (6, 'Pluto', 300.00, 50.00, 'just filled description', false, false, 6, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (7, 'Planet1', 400.00, 60.00, 'just filled description', false, false, 1, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (8, 'Planet2', 500.00, 70.00, 'just filled description', false, false, 2, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (9, 'Planet3', 600.00, 80.00, 'just filled description', false, false, 3, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (10, 'Planet4', 700.00, 90.00, 'just filled description', false, false, 4, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (11, 'Planet5', 800.00, 100.00, 'just filled description', false, false, 5, 'spherical', 3000, 300);
INSERT INTO public.planet VALUES (12, 'Planet6', 900.00, 110.00, 'just filled description', false, false, 6, 'spherical', 3000, 300);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 30.00, 1, 3100, 30000);
INSERT INTO public.star VALUES (2, 'Coruscant', 30.00, 2, 3100, 30000);
INSERT INTO public.star VALUES (3, 'LHS 20', 30.00, 1, 3100, 30000);
INSERT INTO public.star VALUES (4, 'Franks', 30.00, 3, 3100, 30000);
INSERT INTO public.star VALUES (5, 'Oberon', 30.00, 4, 3100, 30000);
INSERT INTO public.star VALUES (6, 'Bisk', 30.00, 6, 3100, 30000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_lifeform_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 2, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxyuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxyuniqueconstraint UNIQUE (galaxy_id);


--
-- Name: lifeform lifeform_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_id PRIMARY KEY (lifeform_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moonuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonuniqueconstraint UNIQUE (moon_id);


--
-- Name: planet myuniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT myuniqueconstraint UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star staruniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT staruniqueconstraint UNIQUE (star_id);


--
-- Name: lifeform uniqueconstraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT uniqueconstraint UNIQUE (lifeform_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


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
    description text,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    presence_of_water boolean,
    orbit integer,
    color text,
    size integer,
    planet_id integer NOT NULL
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
    has_life boolean,
    number_of_moons integer,
    rotation numeric(5,2),
    star_id integer NOT NULL
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
    luminosity integer,
    temperature numeric,
    brightness integer,
    galaxy_id integer NOT NULL
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
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Sattelite of Milky Way', false, 240000000, 0.00);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy of Earth', true, 0, 0);
INSERT INTO public.galaxy VALUES (3, 'Saggitarius Dwarf Sphr', 'Satellite of Milky Way', false, 8000000, 0.078);
INSERT INTO public.galaxy VALUES (4, 'Triangulum II', 'Satellite of Milky Way', true, 11500000, 0.098);
INSERT INTO public.galaxy VALUES (5, 'Reticulum II', 'Satellite of Milky Way', false, 11500000, 0.102);
INSERT INTO public.galaxy VALUES (6, 'Andromeda II', 'Satellite of Andromeda', true, 10000000, 2.22);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (4, 'human', 1);
INSERT INTO public.life VALUES (5, 'no life', 2);
INSERT INTO public.life VALUES (6, 'no life_', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Io', false, 421800, 'yellow', 4, 5);
INSERT INTO public.moon VALUES (3, 'Europa', true, 671100, 'blue', 4, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 1070400, 'grey', 2, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', true, 1883000, 'brownish', 3, 5);
INSERT INTO public.moon VALUES (6, 'Amalthea', false, 181400, 'red', 76, 5);
INSERT INTO public.moon VALUES (7, 'Adrastea', true, 129000, 'grey', 80, 5);
INSERT INTO public.moon VALUES (8, 'Thebe', false, 220000, 'red', 90, 5);
INSERT INTO public.moon VALUES (9, 'Valetudo', false, 19000000, 'purple', 90, 5);
INSERT INTO public.moon VALUES (10, 'Elara', false, 11740000, 'orange', 148, 5);
INSERT INTO public.moon VALUES (11, 'Carme', false, 23404000, 'light red', 150, 5);
INSERT INTO public.moon VALUES (1, 'Moon', false, 384000, 'white', 50, 1);
INSERT INTO public.moon VALUES (12, 'Titan', true, 1221870, 'purple', 1, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', true, 2380000, 'magenta', 1, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', true, 1400, 'yellow', 9, 6);
INSERT INTO public.moon VALUES (15, 'Dione', true, 562, 'orangish', 0, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', true, 295000, 'white', 150, 6);
INSERT INTO public.moon VALUES (17, 'Iapetus', true, 3561000, 'reddish', 0, 6);
INSERT INTO public.moon VALUES (18, 'Hyperion', true, 1481900, 'reddish tint', 19, 6);
INSERT INTO public.moon VALUES (19, 'Rhea', true, 1528, 'grey', 5, 6);
INSERT INTO public.moon VALUES (20, 'Telesto', false, 40865, 'grey', 60, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 460.00, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 0, 3.03, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 0, 1.81, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 241.00, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 79, 13.07, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 82, 9.60, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 27, 2.59, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 14, 23.50, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 5, 1.21, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 0, 0.51, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 2, 0.71, 1);
INSERT INTO public.planet VALUES (12, 'Eres', false, 1, 3.43, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5.778, -27, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0, 3.042, 11, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 25, 9.940, -1, 2);
INSERT INTO public.star VALUES (4, 'Amadioha', 1, 5.459, 9, 2);
INSERT INTO public.star VALUES (5, 'Pistol Star', 2, 11.800, 12, 3);
INSERT INTO public.star VALUES (6, 'Beta Trianguli', 74, 10.000, 3, 4);
INSERT INTO public.star VALUES (7, 'Alfa Trianguli', 6, 4.150, 3, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: life life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_name_key UNIQUE (name);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


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
-- Name: life life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


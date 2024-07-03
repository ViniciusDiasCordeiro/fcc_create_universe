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
-- Name: commet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commet (
    commet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    area_sqr_km integer,
    average_temp numeric(4,2),
    description text,
    inhabitable boolean
);


ALTER TABLE public.commet OWNER TO freecodecamp;

--
-- Name: commet_coomet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commet_coomet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commet_coomet_id_seq OWNER TO freecodecamp;

--
-- Name: commet_coomet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commet_coomet_id_seq OWNED BY public.commet.commet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    area_sqr_km integer,
    average_temp numeric(4,2),
    description text,
    inhabitable boolean
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    area_sqr_km integer,
    average_temp numeric(4,2),
    description text,
    inhabitable boolean,
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    area_sqr_km integer,
    average_temp numeric(4,2),
    description text,
    inhabitable boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    area_sqr_km integer,
    average_temp numeric(4,2),
    description text,
    inhabitable boolean,
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
-- Name: commet commet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet ALTER COLUMN commet_id SET DEFAULT nextval('public.commet_coomet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: commet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commet VALUES (1, '???', 4442, 1337, 55.70, '', true);
INSERT INTO public.commet VALUES (2, '????', 4442, 1337, 55.70, '', true);
INSERT INTO public.commet VALUES (3, '?????', 4442, 1337, 55.70, '', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 99999, 66666, 75.50, '', true);
INSERT INTO public.galaxy VALUES (2, 'Corvus', 99999, 66666, 75.70, '', true);
INSERT INTO public.galaxy VALUES (3, 'Centaurus', 99999, 66666, 17.50, '', true);
INSERT INTO public.galaxy VALUES (4, 'Lynx', 99999, 66666, 1.75, '', true);
INSERT INTO public.galaxy VALUES (5, 'Coma Berenices', 99999, 66666, 33.60, '', true);
INSERT INTO public.galaxy VALUES (6, 'Ursa Major', 99999, 66666, 43.60, '', true);
INSERT INTO public.galaxy VALUES (7, 'Virgo', 99999, 66666, 14.90, '', true);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 99999, 66666, 75.70, '', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (10, 'Moon', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (11, 'Deimos', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (12, 'Phobos', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (13, 'Amalthea', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (14, 'Callisto', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (15, 'Europa', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (16, 'Ganymede', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (17, 'IO', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (18, 'Lol', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (19, 'Dione', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (20, 'Enceladus', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (21, 'Hyperion', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (22, 'Iapetus', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (23, 'Mimas', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (24, 'Phoebe', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (25, 'Rhea', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (26, 'Tethys', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (27, 'Titan', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (28, 'Ariel', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (29, 'Miranda', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (30, 'Oberon', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (31, 'Titania', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (32, 'Umbriel', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (33, 'Nereid', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (34, 'Triton', 4442, 1337, 55.70, '', true, 1);
INSERT INTO public.moon VALUES (35, 'Charon', 4442, 1337, 55.70, '', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Lorem', 4442, 1337, 55.70, '', true, 3);
INSERT INTO public.planet VALUES (2, 'Ipsum', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (3, 'Dolor', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (4, 'Sit', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (5, 'Amet', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (6, 'Consectetur', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (7, 'Adipiscing', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (8, 'Elit', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (9, 'Phasellus', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (10, 'At', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (11, 'Tincidunt', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (12, 'Ex', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (13, 'Sed', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (14, 'Eu', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (15, 'Enim', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (16, 'Ultrices', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (17, 'Auctor', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (18, 'Mi', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (19, 'Ut', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (20, 'Gravida', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (21, 'Eros', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (22, 'Intrincidunt', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (23, 'Solades', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (24, 'Nisi', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (25, 'Dictum', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (26, 'Tellus', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (27, 'Bibendum', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.planet VALUES (28, 'Praesent', 4442, 1337, 55.70, '', true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Absolutno', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (2, 'Acamar', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (3, 'Achernar', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (4, 'Achird', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (5, 'Acrab', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (6, 'Acrux', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (7, 'Acrubens', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (8, 'Adhafera', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (9, 'Adhara', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (10, 'Adhil', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (11, 'Ain', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (12, 'Ainalrami', 4442, 1337, 55.70, '', true, 8);
INSERT INTO public.star VALUES (13, 'Aiolos', 4442, 1337, 55.70, '', true, 8);


--
-- Name: commet_coomet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commet_coomet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 35, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: commet commet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_name_key UNIQUE (name);


--
-- Name: commet commet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_pkey PRIMARY KEY (commet_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


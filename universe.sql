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
    asteroid_id integer NOT NULL,
    name character varying(25) NOT NULL,
    year_discovered integer NOT NULL,
    mass_in_moon_masses numeric(3,2) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type character varying(15) NOT NULL,
    year_discovered integer NOT NULL,
    constellation character varying(15) NOT NULL,
    description text NOT NULL
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
    name character varying(25) NOT NULL,
    is_natural boolean NOT NULL,
    orbit_in_days integer NOT NULL,
    year_discovered integer NOT NULL,
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
    name character varying(20) NOT NULL,
    type character varying(15) NOT NULL,
    mass_in_earth_masses numeric(6,2) NOT NULL,
    orbit_in_years numeric(4,2) NOT NULL,
    is_habitable boolean NOT NULL,
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
    name character varying(20) NOT NULL,
    spectral_type character varying(30) NOT NULL,
    luminosity character varying(10) NOT NULL,
    galaxy character varying(20) NOT NULL,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Andromeda Asteroid', 2001, 0.02, 1);
INSERT INTO public.asteroid VALUES (2, 'Whirlpool Asteroid', 1995, 0.04, 2);
INSERT INTO public.asteroid VALUES (3, 'Centauri Asteroid', 1979, 0.01, 3);
INSERT INTO public.asteroid VALUES (4, 'Sombrero Asteroid', 1987, 0.03, 4);
INSERT INTO public.asteroid VALUES (5, 'Triangulum Asteroid', 1963, 0.02, 5);
INSERT INTO public.asteroid VALUES (6, 'Cigar Asteroid', 2004, 0.05, 6);
INSERT INTO public.asteroid VALUES (7, 'Sculptor Asteroid', 1956, 0.01, 7);
INSERT INTO public.asteroid VALUES (8, 'Black Eye Asteroid', 1998, 0.04, 8);
INSERT INTO public.asteroid VALUES (9, 'Bode''s Asteroid', 1973, 0.02, 9);
INSERT INTO public.asteroid VALUES (10, 'Cartwheel Asteroid', 2009, 0.06, 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', 964, 'Andromeda', 'The Andromeda Galaxy is the closest spiral galaxy to our Milky Way and is visible to the naked eye in the night sky.');
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'Elliptical', 1826, 'Centaurus', 'Centaurus A is a peculiar galaxy with a distinctive dark band of dust across its center, resulting from a past merger with a smaller galaxy.');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Spiral', 1781, 'Virgo', 'The Sombrero Galaxy, also called Messier 104, is characterized by its prominent dust lane and a bright bulge resembling a sombrero hat.');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Spiral', 0, 'Triangulum', 'The Triangulum Galaxy is a small spiral galaxy located approximately 3 million light-years away from Earth.');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'Spiral', 1779, 'Ursa Major', 'The Cigar Galaxy, or Messier 82, is a starburst galaxy with intense star formation activity and distinctive filamentary structures.');
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 'Spiral', 1773, 'Ursa Major', 'The Whirlpool Galaxy, also known as Messier 51, is famous for its prominent spiral arms and interacting companion galaxy.');
INSERT INTO public.galaxy VALUES (7, 'Sculptor', 'Spiral', 1937, 'Sculptor', 'The Sculptor Galaxy, also known as NGC 253, is one of the brightest spiral galaxies visible from the southern hemisphere.');
INSERT INTO public.galaxy VALUES (8, 'Black Eye', 'Spiral', 1779, 'Coma Berenices', 'The Black Eye Galaxy, or Messier 64, gets its name from a dark band of absorbing dust that appears like a black eye against its bright core.');
INSERT INTO public.galaxy VALUES (9, 'Bode''s', 'Spiral', 1774, 'Ursa Major', 'Bode''s Galaxy, or Messier 81, is a grand design spiral galaxy and is one of the brightest members of the Ursa Major galaxy group.');
INSERT INTO public.galaxy VALUES (10, 'Cartwheel', 'Ring', 1941, 'Sculptor', 'The Cartwheel Galaxy is a unique galaxy with a distinctive ring-like structure resulting from a collision with a smaller companion galaxy.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Andromeda Luna', true, 28, 1898, 1);
INSERT INTO public.moon VALUES (2, 'Andromeda Satellite', true, 14, 1922, 1);
INSERT INTO public.moon VALUES (3, 'Whirlpool Moonlet', true, 548, 2005, 2);
INSERT INTO public.moon VALUES (4, 'Whirlpool Companion', true, 1168, 1999, 2);
INSERT INTO public.moon VALUES (5, 'Centauri Minor', true, 50, 1983, 3);
INSERT INTO public.moon VALUES (6, 'Centauri Satellite', true, 75, 1976, 3);
INSERT INTO public.moon VALUES (7, 'Sombrero Satellite', true, 2373, 2010, 4);
INSERT INTO public.moon VALUES (8, 'Sombrero Moonlet', true, 1022, 2008, 4);
INSERT INTO public.moon VALUES (9, 'Triangulum Minoris', true, 65, 1954, 5);
INSERT INTO public.moon VALUES (10, 'Triangulum Satellite', true, 40, 1968, 5);
INSERT INTO public.moon VALUES (11, 'Cigar Moonlet', true, 1570, 2015, 6);
INSERT INTO public.moon VALUES (12, 'Cigar Companion', true, 2592, 2003, 6);
INSERT INTO public.moon VALUES (13, 'Sculptor Minor', true, 38, 1958, 7);
INSERT INTO public.moon VALUES (14, 'Sculptor Satellite', true, 22, 1965, 7);
INSERT INTO public.moon VALUES (15, 'Black Eye Moonlet', true, 2117, 2012, 8);
INSERT INTO public.moon VALUES (16, 'Black Eye Companion', true, 1533, 2009, 8);
INSERT INTO public.moon VALUES (17, 'Bode''s Satellite', true, 44, 1971, 9);
INSERT INTO public.moon VALUES (18, 'Bode''s Minoris', true, 56, 1962, 9);
INSERT INTO public.moon VALUES (19, 'Cartwheel Moonlet', true, 3249, 2018, 10);
INSERT INTO public.moon VALUES (20, 'Cartwheel Companion', true, 2336, 2016, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Andromeda Prime', 'Terrestrial', 1.20, 1.00, true, 1);
INSERT INTO public.planet VALUES (2, 'Whirlpool Orbit', 'Gas Giant', 794.77, 4.50, false, 2);
INSERT INTO public.planet VALUES (3, 'Centauri Majoris', 'Terrestrial', 0.80, 0.55, true, 3);
INSERT INTO public.planet VALUES (4, 'Sombrero Orbis', 'Gas Giant', 1208.05, 9.00, false, 4);
INSERT INTO public.planet VALUES (5, 'Triangulum Terra', 'Terrestrial', 1.10, 1.15, true, 5);
INSERT INTO public.planet VALUES (6, 'Cigar Cloud', 'Gas Giant', 1875.65, 6.20, false, 6);
INSERT INTO public.planet VALUES (7, 'Sculptor Sphere', 'Terrestrial', 0.60, 0.49, true, 7);
INSERT INTO public.planet VALUES (8, 'Black Eye Orb', 'Gas Giant', 1303.42, 7.80, false, 8);
INSERT INTO public.planet VALUES (9, 'Bode''s Beryl', 'Terrestrial', 0.90, 0.60, true, 9);
INSERT INTO public.planet VALUES (10, 'Cartwheel Circle', 'Gas Giant', 2066.39, 11.50, false, 10);
INSERT INTO public.planet VALUES (11, 'Andromeda Minor', 'Terrestrial', 0.70, 0.77, true, 1);
INSERT INTO public.planet VALUES (12, 'Whirlpool Wanderer', 'Gas Giant', 1049.09, 5.70, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda Star', 'G2V (Yellow Dwarf)', 'Medium', 'Andromeda Galaxy', 1);
INSERT INTO public.star VALUES (2, 'Whirlpool Star', 'B5V (Blue Dwarf)', 'High', 'Whirlpool Galaxy', 2);
INSERT INTO public.star VALUES (3, 'Centaurus A Star', 'E2 (Elliptical Galaxy)', 'Low', 'Centaurus A Galaxy', 3);
INSERT INTO public.star VALUES (4, 'Sombrero Star', 'K0III (Orange Giant)', 'High', 'Sombrero Galaxy', 4);
INSERT INTO public.star VALUES (5, 'Triangulum Star', 'A7V (White-Main-Sequence)', 'Medium', 'Triangulum Galaxy', 5);
INSERT INTO public.star VALUES (6, 'Cigar Star', 'F8LAB (Yellow Supergiant)', 'Very High', 'Cigar Galaxy', 6);
INSERT INTO public.star VALUES (7, 'Sculptor Star', 'F6V (Yellow-Main-Sequence)', 'Medium', 'Sculptor Galaxy)', 7);
INSERT INTO public.star VALUES (8, 'Black Eye Star', 'M0III (Red Giant)', 'Medium', 'Black Eye Galaxy', 8);
INSERT INTO public.star VALUES (9, 'Bode''s Star', 'A9III (White Giant)', 'High', 'Bode''s Galaxy', 9);
INSERT INTO public.star VALUES (10, 'Cartwheel Star', 'O7V (Blue-Main-Sequence)', 'Very High', 'Cartwheel Galaxy', 10);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: planet planet_id_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_pk PRIMARY KEY (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_key UNIQUE (galaxy);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    radio numeric NOT NULL,
    diameter integer,
    cuantity_of_planets integer,
    is_espiral boolean,
    name character varying(30) NOT NULL
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
    radio numeric,
    diameter integer,
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
    radio numeric,
    diameter integer,
    star_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planetoid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetoid (
    planetoid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planetoid OWNER TO freecodecamp;

--
-- Name: planetoids_planetoid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetoids_planetoid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetoids_planetoid_id_seq OWNER TO freecodecamp;

--
-- Name: planetoids_planetoid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetoids_planetoid_id_seq OWNED BY public.planetoid.planetoid_id;


--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio numeric,
    diameter integer,
    quantity_of_planets integer,
    galaxy_id integer NOT NULL,
    is_nova boolean
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

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: planetoid planetoid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoid ALTER COLUMN planetoid_id SET DEFAULT nextval('public.planetoids_planetoid_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'ceres', NULL);
INSERT INTO public.asteroid VALUES (2, 'eros', NULL);
INSERT INTO public.asteroid VALUES (3, 'vesta', NULL);
INSERT INTO public.asteroid VALUES (4, 'apophis', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100.5, 100000, 8, true, 'via lactea');
INSERT INTO public.galaxy VALUES (2, 85.2, 120000, 5, true, 'andromeda');
INSERT INTO public.galaxy VALUES (3, 70.8, 8000000, 2, true, 'sombrero');
INSERT INTO public.galaxy VALUES (4, 120.3, 150000, 0, false, 'centauro');
INSERT INTO public.galaxy VALUES (5, 60.0, 70000, 7, true, 'triangulo');
INSERT INTO public.galaxy VALUES (6, 50.7, 60000, 3, true, 'bode');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1737.1, 3474, 7);
INSERT INTO public.moon VALUES (2, 'Fobos', 11.1, 22, 8);
INSERT INTO public.moon VALUES (3, 'Deimos', 6.2, 12, 8);
INSERT INTO public.moon VALUES (4, 'Europa', 1560.8, 3121, 9);
INSERT INTO public.moon VALUES (5, 'Ganimedes', 2634.1, 5268, 9);
INSERT INTO public.moon VALUES (6, 'Ío', 1821.6, 3643, 9);
INSERT INTO public.moon VALUES (7, 'Calisto', 2410.3, 4821, 9);
INSERT INTO public.moon VALUES (8, 'Titán', 2574.7, 5150, 10);
INSERT INTO public.moon VALUES (9, 'Encélado', 252.1, 504, 10);
INSERT INTO public.moon VALUES (10, 'Mimas', 198.2, 396, 10);
INSERT INTO public.moon VALUES (11, 'Rea', 764.3, 1529, 10);
INSERT INTO public.moon VALUES (12, 'Dione', 561.4, 1123, 10);
INSERT INTO public.moon VALUES (13, 'Tetis', 531.1, 1062, 10);
INSERT INTO public.moon VALUES (14, 'Hiperión', 135.0, 270, 10);
INSERT INTO public.moon VALUES (15, 'Japeto', 734.5, 1469, 10);
INSERT INTO public.moon VALUES (16, 'Miranda', 235.8, 471, 11);
INSERT INTO public.moon VALUES (17, 'Ariel', 578.9, 1158, 11);
INSERT INTO public.moon VALUES (18, 'Umbriel', 584.7, 1169, 11);
INSERT INTO public.moon VALUES (19, 'Titania', 788.4, 1577, 11);
INSERT INTO public.moon VALUES (20, 'Oberón', 761.4, 1523, 11);
INSERT INTO public.moon VALUES (21, 'Tritón', 1353.4, 2707, 12);
INSERT INTO public.moon VALUES (22, 'Nereida', 170.0, 340, 12);
INSERT INTO public.moon VALUES (23, 'Caronte', 606.0, 1212, 13);
INSERT INTO public.moon VALUES (24, 'Estigia', 5.0, 10, 13);
INSERT INTO public.moon VALUES (25, 'Nix', 23.0, 46, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Mercurio', 2439.7, 4879, 14, 'El planeta más cercano al Sol.');
INSERT INTO public.planet VALUES (6, 'Venus', 6051.8, 12104, 14, 'Conocido como el planeta gemelo de la Tierra.');
INSERT INTO public.planet VALUES (7, 'Tierra', 6371.0, 12742, 14, 'Nuestro hogar.');
INSERT INTO public.planet VALUES (8, 'Marte', 3389.5, 6779, 14, 'El planeta rojo.');
INSERT INTO public.planet VALUES (9, 'Júpiter', 69911.0, 139822, 14, 'El gigante gaseoso.');
INSERT INTO public.planet VALUES (10, 'Saturno', 58232.0, 116464, 14, 'Famoso por sus anillos.');
INSERT INTO public.planet VALUES (11, 'Urano', 25362.0, 50724, 14, 'El planeta inclinado.');
INSERT INTO public.planet VALUES (12, 'Neptuno', 24622.0, 49244, 14, 'El último planeta del sistema solar.');
INSERT INTO public.planet VALUES (13, 'Plutón', 1188.3, 2370, 14, 'Antiguamente considerado el noveno planeta.');
INSERT INTO public.planet VALUES (14, 'Alfa Centauri Bb', 0.0, 0, 6, 'Exoplaneta en el sistema estelar Alfa Centauri.');
INSERT INTO public.planet VALUES (15, 'Kepler-186f', 0.0, 0, 13, 'Exoplaneta potencialmente habitable.');
INSERT INTO public.planet VALUES (16, 'Tatooine', 0.0, 0, 11, 'Famoso por aparecer en Star Wars.');


--
-- Data for Name: planetoid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetoid VALUES (1, 'Sedna', NULL);
INSERT INTO public.planetoid VALUES (2, 'Orcus', NULL);
INSERT INTO public.planetoid VALUES (3, 'Quaoar', NULL);
INSERT INTO public.planetoid VALUES (4, 'Varuna', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Sirio', 1180000, 2340000, 2, 1, false);
INSERT INTO public.star VALUES (6, 'Alfa Centauri A', 1100000, 2200000, 0, 4, true);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 887000, 1774000, 0, 6, false);
INSERT INTO public.star VALUES (8, 'Rigel', 700000, 1400000, 0, 6, false);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 192000, 384000, 0, 4, true);
INSERT INTO public.star VALUES (10, 'Antares', 883000, 1766000, 0, 3, false);
INSERT INTO public.star VALUES (11, 'Vega', 2360000, 4720000, 1, 5, false);
INSERT INTO public.star VALUES (12, 'Deneb', 2030000, 4060000, 0, 5, false);
INSERT INTO public.star VALUES (13, 'Capella', 755000, 1510000, 0, 3, false);
INSERT INTO public.star VALUES (14, 'Sol', 696340, 1392684, 8, 1, false);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planetoids_planetoid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetoids_planetoid_id_seq', 4, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: asteroid asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroid asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planetoid planetoids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoid
    ADD CONSTRAINT planetoids_name_key UNIQUE (name);


--
-- Name: planetoid planetoids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoid
    ADD CONSTRAINT planetoids_pkey PRIMARY KEY (planetoid_id);


--
-- Name: planet planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_name_key UNIQUE (name);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

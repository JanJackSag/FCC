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
-- Name: dataisland; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dataisland (
    weight text,
    size text,
    life text,
    dataisland_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.dataisland OWNER TO freecodecamp;

--
-- Name: dataisland_dataid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dataisland_dataid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataisland_dataid_seq OWNER TO freecodecamp;

--
-- Name: dataisland_dataid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dataisland_dataid_seq OWNED BY public.dataisland.dataisland_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size_ly integer,
    black_hole boolean,
    life boolean NOT NULL
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
    name character varying(20) NOT NULL,
    weight numeric(5,1),
    size_mm integer NOT NULL,
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
    life boolean NOT NULL,
    description text,
    weight numeric(5,1),
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
    description text,
    size_ly integer NOT NULL,
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
-- Name: dataisland dataisland_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dataisland ALTER COLUMN dataisland_id SET DEFAULT nextval('public.dataisland_dataid_seq'::regclass);


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
-- Data for Name: dataisland; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dataisland VALUES ('452', '7000', 'Will go extinct', 1, 'Earth');
INSERT INTO public.dataisland VALUES ('45', '700', 'Will go extinct', 2, 'Jup');
INSERT INTO public.dataisland VALUES ('45', '700', 'Will go extinct', 3, 'Ju');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 1000, false, true);
INSERT INTO public.galaxy VALUES (3, 'silkyroad', 1500, true, false);
INSERT INTO public.galaxy VALUES (7, 'A3', 200, true, false);
INSERT INTO public.galaxy VALUES (8, 'A4', 5895258, true, true);
INSERT INTO public.galaxy VALUES (9, 'A5', 523, false, false);
INSERT INTO public.galaxy VALUES (10, 'A6', 100, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (17, 'moon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (18, 'Soon', 2.0, 2, 2);
INSERT INTO public.moon VALUES (19, 'Koon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (20, 'Loon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (21, 'Toon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (22, 'Yoon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (23, 'Poon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (24, 'Doon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (25, 'Woon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (26, 'Qoon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (27, 'Foon', 2.0, 2, 1);
INSERT INTO public.moon VALUES (28, 'Xoon', 2.0, 2, 3);
INSERT INTO public.moon VALUES (29, 'Xoan', 2.0, 2, 3);
INSERT INTO public.moon VALUES (30, 'Xoun', 2.0, 2, 3);
INSERT INTO public.moon VALUES (31, 'Xoin', 2.0, 2, 3);
INSERT INTO public.moon VALUES (32, 'Xaon', 2.0, 2, 3);
INSERT INTO public.moon VALUES (33, 'Xoen', 2.0, 2, 3);
INSERT INTO public.moon VALUES (34, 'Xoyn', 2.0, 2, 3);
INSERT INTO public.moon VALUES (35, 'Xuon', 2.0, 2, 3);
INSERT INTO public.moon VALUES (36, 'Xion', 2.0, 2, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, NULL, 150.0, 1);
INSERT INTO public.planet VALUES (2, 'Mercurius', false, NULL, 40.0, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, NULL, 40.0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, NULL, 100.0, 1);
INSERT INTO public.planet VALUES (5, 'Saturnus', false, NULL, 350.0, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, NULL, 540.0, 1);
INSERT INTO public.planet VALUES (7, 'Neptunus', false, NULL, 200.0, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', false, NULL, 60.0, 1);
INSERT INTO public.planet VALUES (9, 'Kruto', false, NULL, 75.0, 1);
INSERT INTO public.planet VALUES (10, 'Prutto', false, NULL, 50.0, 1);
INSERT INTO public.planet VALUES (11, 'Trutto', false, NULL, 25.0, 1);
INSERT INTO public.planet VALUES (12, 'Klutto', false, NULL, 10.0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our Sun', 1, 1);
INSERT INTO public.star VALUES (2, 'bun', 'not our Sun', 1, 3);
INSERT INTO public.star VALUES (3, 'cun', 'not our Sun', 2, 7);
INSERT INTO public.star VALUES (4, 'tun', 'not our Sun', 1, 8);
INSERT INTO public.star VALUES (5, 'lun', 'not our Sun', 1, 9);
INSERT INTO public.star VALUES (6, 'pun', 'not our Sun', 1, 10);


--
-- Name: dataisland_dataid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dataisland_dataid_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dataisland dataisland_dataid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dataisland
    ADD CONSTRAINT dataisland_dataid_key UNIQUE (dataisland_id);


--
-- Name: dataisland dataisland_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dataisland
    ADD CONSTRAINT dataisland_pkey PRIMARY KEY (dataisland_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


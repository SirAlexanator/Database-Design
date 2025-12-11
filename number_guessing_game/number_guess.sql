--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 956);
INSERT INTO public.games VALUES (2, 1, 676);
INSERT INTO public.games VALUES (3, 2, 39);
INSERT INTO public.games VALUES (4, 2, 610);
INSERT INTO public.games VALUES (5, 1, 556);
INSERT INTO public.games VALUES (6, 1, 595);
INSERT INTO public.games VALUES (7, 1, 867);
INSERT INTO public.games VALUES (8, 3, 741);
INSERT INTO public.games VALUES (9, 3, 837);
INSERT INTO public.games VALUES (10, 4, 19);
INSERT INTO public.games VALUES (11, 4, 128);
INSERT INTO public.games VALUES (12, 3, 459);
INSERT INTO public.games VALUES (13, 3, 914);
INSERT INTO public.games VALUES (14, 3, 524);
INSERT INTO public.games VALUES (15, 5, 1);
INSERT INTO public.games VALUES (16, 5, 1);
INSERT INTO public.games VALUES (17, 6, 1);
INSERT INTO public.games VALUES (18, 6, 1);
INSERT INTO public.games VALUES (19, 5, 3);
INSERT INTO public.games VALUES (20, 5, 1);
INSERT INTO public.games VALUES (21, 5, 1);
INSERT INTO public.games VALUES (22, 7, 960);
INSERT INTO public.games VALUES (23, 7, 240);
INSERT INTO public.games VALUES (24, 8, 796);
INSERT INTO public.games VALUES (25, 8, 51);
INSERT INTO public.games VALUES (26, 7, 271);
INSERT INTO public.games VALUES (27, 7, 878);
INSERT INTO public.games VALUES (28, 7, 417);
INSERT INTO public.games VALUES (29, 9, 330);
INSERT INTO public.games VALUES (30, 9, 194);
INSERT INTO public.games VALUES (31, 10, 129);
INSERT INTO public.games VALUES (32, 10, 957);
INSERT INTO public.games VALUES (33, 9, 530);
INSERT INTO public.games VALUES (34, 9, 2);
INSERT INTO public.games VALUES (35, 9, 801);
INSERT INTO public.games VALUES (36, 11, 621);
INSERT INTO public.games VALUES (37, 11, 123);
INSERT INTO public.games VALUES (38, 12, 99);
INSERT INTO public.games VALUES (39, 12, 611);
INSERT INTO public.games VALUES (40, 11, 197);
INSERT INTO public.games VALUES (41, 11, 294);
INSERT INTO public.games VALUES (42, 11, 165);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1765434399148');
INSERT INTO public.users VALUES (2, 'user_1765434399147');
INSERT INTO public.users VALUES (3, 'user_1765434429867');
INSERT INTO public.users VALUES (4, 'user_1765434429866');
INSERT INTO public.users VALUES (5, 'user_1765434719601');
INSERT INTO public.users VALUES (6, 'user_1765434719600');
INSERT INTO public.users VALUES (7, 'user_1765434909020');
INSERT INTO public.users VALUES (8, 'user_1765434909019');
INSERT INTO public.users VALUES (9, 'user_1765435024587');
INSERT INTO public.users VALUES (10, 'user_1765435024586');
INSERT INTO public.users VALUES (11, 'user_1765435033068');
INSERT INTO public.users VALUES (12, 'user_1765435033067');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


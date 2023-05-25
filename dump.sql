--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: public.Cidades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."public.Cidades" (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- Name: public.Cidades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."public.Cidades_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: public.Cidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."public.Cidades_id_seq" OWNED BY public."public.Cidades".id;


--
-- Name: public.Hospedagens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."public.Hospedagens" (
    id integer NOT NULL,
    cidade_id integer NOT NULL,
    diaria real NOT NULL,
    nome_hotel text NOT NULL,
    "Café_da_manhã" boolean NOT NULL,
    piscina boolean NOT NULL,
    "Ar_condicionado" boolean NOT NULL
);


--
-- Name: public.Hospedagens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."public.Hospedagens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: public.Hospedagens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."public.Hospedagens_id_seq" OWNED BY public."public.Hospedagens".id;


--
-- Name: public.Passagens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."public.Passagens" (
    id integer NOT NULL,
    cidade_id integer NOT NULL,
    preco real NOT NULL,
    cia_aerea text NOT NULL,
    data date NOT NULL,
    h_saida text NOT NULL,
    h_chegada text NOT NULL,
    c_origem text NOT NULL,
    c_destino text NOT NULL
);


--
-- Name: public.Passagens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."public.Passagens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: public.Passagens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."public.Passagens_id_seq" OWNED BY public."public.Passagens".id;


--
-- Name: public.Cidades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."public.Cidades" ALTER COLUMN id SET DEFAULT nextval('public."public.Cidades_id_seq"'::regclass);


--
-- Name: public.Hospedagens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."public.Hospedagens" ALTER COLUMN id SET DEFAULT nextval('public."public.Hospedagens_id_seq"'::regclass);


--
-- Name: public.Passagens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."public.Passagens" ALTER COLUMN id SET DEFAULT nextval('public."public.Passagens_id_seq"'::regclass);


--
-- Data for Name: public.Cidades; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: public.Hospedagens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: public.Passagens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: public.Cidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."public.Cidades_id_seq"', 1, false);


--
-- Name: public.Hospedagens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."public.Hospedagens_id_seq"', 1, false);


--
-- Name: public.Passagens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."public.Passagens_id_seq"', 1, false);


--
-- Name: public.Cidades Cidades_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."public.Cidades"
    ADD CONSTRAINT "Cidades_pk" PRIMARY KEY (id);


--
-- Name: public.Hospedagens Hospedagens_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."public.Hospedagens"
    ADD CONSTRAINT "Hospedagens_pk" PRIMARY KEY (id);


--
-- Name: public.Passagens Passagens_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."public.Passagens"
    ADD CONSTRAINT "Passagens_pk" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


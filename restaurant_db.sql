--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.takeout_orders DROP CONSTRAINT takeout_orders_pkey;
ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_pkey;
DROP TABLE public.takeout_orders;
DROP TABLE public.restaurants;
DROP TABLE public.restaurant_features;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restaurant_features; Type: TABLE; Schema: public; Owner: steve
--

CREATE TABLE restaurant_features (
    restaurant_id integer,
    feature character varying
);


ALTER TABLE restaurant_features OWNER TO steve;

--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: steve
--

CREATE TABLE restaurants (
    restaurant_id integer NOT NULL,
    name character varying,
    location character varying
);


ALTER TABLE restaurants OWNER TO steve;

--
-- Name: takeout_orders; Type: TABLE; Schema: public; Owner: steve
--

CREATE TABLE takeout_orders (
    order_id integer NOT NULL,
    restaurant_id integer,
    order_date date,
    order_amount integer
);


ALTER TABLE takeout_orders OWNER TO steve;

--
-- Data for Name: restaurant_features; Type: TABLE DATA; Schema: public; Owner: steve
--

COPY restaurant_features (restaurant_id, feature) FROM stdin;
1	Good for Groups
2	Good for Groups
4	Good for Groups
5	Good for Groups
1	Takes Reservations
1	Cash Only
2	Outdoor Seating
5	Outdoor Seating
3	Has TV
5	Has TV
3	Coat Check
5	Coat Check
4	Wheelchair Accessible
\.


--
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: steve
--

COPY restaurants (restaurant_id, name, location) FROM stdin;
1	a	\N
2	b	\N
4	d	\N
5	e	\N
\.


--
-- Data for Name: takeout_orders; Type: TABLE DATA; Schema: public; Owner: steve
--

COPY takeout_orders (order_id, restaurant_id, order_date, order_amount) FROM stdin;
1	1	2016-01-01	8
2	1	2016-02-01	15
3	1	2016-02-01	3
4	1	2016-03-01	37
5	1	2016-03-01	48
6	1	2016-03-01	5
7	2	2016-01-01	17
8	2	2016-02-01	43
9	2	2016-02-01	15
10	2	2016-03-01	35
11	2	2016-03-01	22
12	2	2016-03-01	50
13	3	2016-01-01	16
14	3	2016-02-01	9
15	3	2016-02-01	26
16	3	2016-03-01	2
17	3	2016-03-01	43
18	3	2016-03-01	18
19	4	2016-01-01	38
20	4	2016-02-01	22
21	4	2016-02-01	1
22	4	2016-03-01	9
23	4	2016-03-01	1
24	4	2016-03-01	43
25	5	2016-01-01	13
26	5	2016-02-01	36
27	5	2016-02-01	18
28	5	2016-03-01	47
29	5	2016-03-01	22
30	5	2016-03-01	3
\.


--
-- Name: restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: steve
--

ALTER TABLE ONLY restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (restaurant_id);


--
-- Name: takeout_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: steve
--

ALTER TABLE ONLY takeout_orders
    ADD CONSTRAINT takeout_orders_pkey PRIMARY KEY (order_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


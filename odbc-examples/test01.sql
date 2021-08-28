--
-- PostgreSQL database dump
--
-- dropdb -U alumnodb -h localhost test01
-- createdb -U alumnodb -h localhost test01
-- cat test01.sql | psql -U alumnodb -h localhost test01


SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--



--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--


--
-- Name: a; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE a (
    x integer NOT NULL,
    y text
);



--
-- Data for Name: a; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY a (x, y) FROM stdin;
1	uno
2	dos
1000	mil
\.


--
-- Name: a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY a
    ADD CONSTRAINT a_pkey PRIMARY KEY (x);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

--
-- PostgreSQL database dump complete
--


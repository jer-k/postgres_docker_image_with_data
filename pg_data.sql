--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-01-13 23:46:28.806197	2019-01-13 23:46:28.806197
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20190113233905
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, email) FROM stdin;
1	Olimpia DuBuque	sol@ruecker.io
2	Karolyn Harvey IV	mina@white.io
3	Otto Roberts	deeheaney@lindgrenhodkiewicz.co
4	Dr. Adela Rosenbaum	cheristokes@schuppe.net
5	Enola Maggio	gale@hauckmarvin.org
6	Branden Howell	summerhartmann@purdy.info
7	Gladys Howe	efrenbeer@denesikgibson.com
8	Mose Daugherty DDS	oraleebahringer@gorczany.name
9	Victorina Haag	seymourschmeler@gorczany.net
10	Latina Bogan	oraliawill@purdy.co
11	Earlene Crooks	jarred@pollich.com
12	Caroyln Pacocha	florine@kutch.io
13	Mrs. Kermit Marquardt	reed@strosinabbott.io
14	Mee Zboncak	merri@reynoldsbogan.io
15	Joshua Bednar	ashanti@ratkequitzon.io
16	Melonie Larkin	neriavolkman@klocko.io
17	Marhta Grant	kareen@stracke.net
18	Mahalia Purdy	pedrorobel@wyman.net
19	Ivory Batz	jorge@cummerataokeefe.net
20	Cira Conn	julianpurdy@upton.org
21	Dr. Stacy Quitzon	halina@prosacco.io
22	Karma Wolf	delbertkoch@abernathy.net
23	Delphia Franecki	dwayneemard@carroll.net
24	Lorraine Funk	twilakoelpin@marks.info
25	Letisha Farrell MD	yingbaumbach@smith.org
26	Nichole Adams	refugiobartell@hirthepagac.net
27	Arletha Hickle	shaynahirthe@robel.org
28	Ardith Green	levi@ortizquigley.net
29	Consuela Boyle	yvette@welchspencer.co
30	Dr. Lucas Schinner	charlette@ruelschultz.io
31	Dallas Fay	lashawndagrant@wisoky.io
32	Darrell Casper	victorkoepp@schaden.com
33	Jackelyn Lemke	mafalda@ruel.com
34	Carlota Dietrich	jacki@leffler.name
35	Hubert Adams	freddie@feest.io
36	Tarah Davis	trevor@wintheiser.co
37	Gisela Deckow	shawn@schulistkub.net
38	Seth Harvey	cami@dubuque.co
39	Miss Wilford Oberbrunner	antionecronin@stroman.com
40	Saturnina Nolan III	luther@jaskolskimetz.com
41	Tamekia Padberg Jr.	joline@thielkling.org
42	Cornelia Collins	roderickfadel@crona.co
43	Marinda Donnelly	kirby@willms.com
44	Ardis Schneider	conniedaniel@spencer.name
45	Isaias Jacobson	lesli@rolfson.io
46	Ms. Leola Gottlieb	orvalmohr@beatty.net
47	Donovan Cremin	sonwelch@considineschuster.io
48	Miss Aubrey Schimmel	suk@torphy.name
49	Diego Champlin V	jerrie@hermistonupton.name
50	Lannie Lindgren	pinkie@denesik.name
51	Danae Rath	ronnie@ko.org
52	Elisa Kirlin	ron@erdmanmcclure.name
53	Omar Morissette	arletteborer@runolfon.biz
54	Kimberli Schmeler	carlosharber@emmerich.co
55	Susann Ward	deidremedhurst@braun.name
56	Tai Rau	tanja@ward.name
57	Karlyn VonRueden	arielle@bernhard.com
58	Lyndon Kemmer	wendell@marksromaguera.biz
59	Elias Schuppe	jewel@hagenesglover.net
60	Tracey Funk	shalanda@wiegand.biz
61	Dick Krajcik	louisagleason@kuhic.biz
62	Darrin Grant	ronny@crist.co
63	Ms. Delena Fadel	moriahpagac@ondricka.co
64	Kim Dibbert PhD	casey@lynchthiel.name
65	Jenae Rogahn	dominick@schulist.org
66	Neville Goyette DVM	cleliahauck@schuster.name
67	Melva Auer	emile@bergnaum.co
68	Rudolph Gusikowski	deannharvey@marvinziemann.org
69	Quincy Stamm	irvingtorp@weberwest.biz
70	Cecil Yundt	oswaldoadams@paucekblock.io
71	Rosamond Schultz	moshethiel@keelinggerlach.co
72	Dave Ratke	alecbatz@wuckert.org
73	Dr. Manual Lockman	landonharris@connelly.org
74	Russell Ziemann	milly@osinskithompson.biz
75	Lai Christiansen	teodorodenesik@rau.biz
76	May Hermiston	mike@torp.org
77	Dr. Kaylene Cruickshank	clifton@stroman.io
78	Miss Deon Borer	phuongmurray@botsford.name
79	Mrs. Osvaldo Raynor	erasmogreenholt@kublesch.biz
80	Mr. Wyatt Klein	pilar@abernathy.net
81	Jay Boyer	alexia@bashirian.io
82	Caren Corwin DVM	carltonnikolaus@hermannlueilwitz.co
83	Octavio Tremblay	rana@schustereffertz.net
84	Anjelica Hartmann	cedrickkrajcik@friesen.co
85	Sterling Osinski	clarence@rice.io
86	Nicholas Huels	rosario@jenkins.name
87	Norbert Ferry	samella@kovacek.org
88	Dr. Casandra Murphy	reva@gorczany.com
89	Ronald Heller	laylafisher@mullerkemmer.io
90	Rhett Zulauf	martyhand@smithamrath.com
91	Leonard Bergnaum II	jaime@connelly.io
92	Chanda Wehner	max@kreigerkovacek.io
93	Malorie Dickens	toshiadamore@kshlerin.net
94	Renato Reinger	steviehammes@hettingerlowe.name
95	Stanford Gutmann Sr.	allen@beer.io
96	Allan Kling PhD	hubert@hackettdickinson.io
97	Janetta Thiel	rickey@reichertwill.org
98	Pilar Mayer PhD	maragarethirthe@yundt.co
99	Micheal Tromp	bowehner@rodriguezbruen.com
100	Malcom Trantow III	chang@hilllmorar.co
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 100, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


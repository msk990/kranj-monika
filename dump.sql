--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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
-- Name: food; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food (
    id uuid NOT NULL,
    b12 double precision,
    b6 double precision,
    ca double precision,
    carbs double precision,
    carotenoide double precision,
    dietary_fibre double precision,
    energy_kcal double precision,
    energy_kj double precision,
    fat double precision,
    fe double precision,
    folate double precision,
    food_name character varying(255),
    food_name_sl character varying(255),
    gen boolean,
    k double precision,
    mg double precision,
    na double precision,
    niacin double precision,
    food_processing character varying(255),
    protein double precision,
    retinol double precision,
    riboflavin double precision,
    saturated double precision,
    sugars double precision,
    thiamin double precision,
    vitamin_c double precision,
    vitamin_d double precision,
    vitamin_e double precision,
    zn double precision
);


ALTER TABLE public.food OWNER TO postgres;

--
-- Name: food_ingredients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food_ingredients (
    food_id uuid NOT NULL,
    ingredients_id uuid NOT NULL
);


ALTER TABLE public.food_ingredients OWNER TO postgres;

--
-- Name: food_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food_tag (
    food_id uuid NOT NULL,
    tag_id uuid NOT NULL
);


ALTER TABLE public.food_tag OWNER TO postgres;

--
-- Name: ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient (
    id uuid NOT NULL,
    ingredient_quantity double precision,
    item_id uuid
);


ALTER TABLE public.ingredient OWNER TO postgres;

--
-- Name: ingredient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingredient_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredient_seq OWNER TO postgres;

--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id uuid NOT NULL,
    b12 double precision,
    b6 double precision,
    ca double precision,
    carbs double precision,
    carotenoide double precision,
    dietary_fibre double precision,
    energy_kcal double precision,
    energy_kj double precision,
    fat double precision,
    fe double precision,
    folate double precision,
    item_name_en character varying(255),
    item_name_sl character varying(255),
    k double precision,
    mg double precision,
    na double precision,
    niacin double precision,
    item_processing character varying(255),
    protein double precision,
    retinol double precision,
    riboflavin double precision,
    saturated double precision,
    sugars double precision,
    thiamin double precision,
    vitamin_c double precision,
    vitamin_d double precision,
    vitamin_e double precision,
    zn double precision
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items_tag (
    item_id uuid NOT NULL,
    tag_id uuid NOT NULL
);


ALTER TABLE public.items_tag OWNER TO postgres;

--
-- Name: meals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meals (
    id uuid NOT NULL,
    start timestamp(6) with time zone
);


ALTER TABLE public.meals OWNER TO postgres;

--
-- Name: meals_foods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meals_foods (
    meal_id uuid NOT NULL,
    foods_id uuid NOT NULL
);


ALTER TABLE public.meals_foods OWNER TO postgres;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id uuid NOT NULL,
    color character varying(255),
    tag character varying(255),
    tag_sl character varying(255)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Data for Name: food; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food (id, b12, b6, ca, carbs, carotenoide, dietary_fibre, energy_kcal, energy_kj, fat, fe, folate, food_name, food_name_sl, gen, k, mg, na, niacin, food_processing, protein, retinol, riboflavin, saturated, sugars, thiamin, vitamin_c, vitamin_d, vitamin_e, zn) FROM stdin;
2d893702-6e46-46e6-a031-1307d7a0b37e	0.6	0.22	19	1.5	0	2.8	327	1367	28.2	0.83	5	Juje	DjuDje	t	328	20	11	7.8199999999999985	light	16.2	8	109	10.95	1	525	0	0	0.27	1.29
\.


--
-- Data for Name: food_ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food_ingredients (food_id, ingredients_id) FROM stdin;
2d893702-6e46-46e6-a031-1307d7a0b37e	fbbae7ee-7d98-4a52-b5e4-4a835e568ca4
2d893702-6e46-46e6-a031-1307d7a0b37e	bad4a90d-ecc5-41e3-b86d-e588131196dc
\.


--
-- Data for Name: food_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food_tag (food_id, tag_id) FROM stdin;
\.


--
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredient (id, ingredient_quantity, item_id) FROM stdin;
bad4a90d-ecc5-41e3-b86d-e588131196dc	10	30a99d4e-5d9a-412a-a32a-833141543a30
fbbae7ee-7d98-4a52-b5e4-4a835e568ca4	10	244c6b4a-6221-4d7f-9fa5-5f320f865ac5
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, b12, b6, ca, carbs, carotenoide, dietary_fibre, energy_kcal, energy_kj, fat, fe, folate, item_name_en, item_name_sl, k, mg, na, niacin, item_processing, protein, retinol, riboflavin, saturated, sugars, thiamin, vitamin_c, vitamin_d, vitamin_e, zn) FROM stdin;
fe6f717c-b6c3-4fe5-8990-c32c241a1a9d	0	0	2	8.2	0	0	33	137	0	0	0	Fruit drink, apple juice	Sadna pijača, jabolčni sok	47	2	5	0	pocessed	0.1	0	0	0	7.8	0	31	0	0	0
e381943d-57b0-4214-95dc-8ac44481dacd	0	0.05	8	11.3	27	0.1	43	182	0	0.25	1	Fruit drink, cranberry	Sadna pijača, brusnica	20	6	16	0.09	processed	0	4	18	0	11.3	9	16	0	1.2	0.1
0be28dfb-7a77-4514-bdc4-b04c0c25375c	0	0.01	8	9.6	46	0	39	163	0	0.05	8	Fruit drink, orange juice	Sadna pijača, pomarančni sok	72	5	9	0.01	processed	0.2	8	20	0	9.6	0	5	0	0	0.01
fc3ae7ff-457a-4da0-8973-74f9048abdfd	0	0	6	7	2	0.2	29	121	0	0.05	32	Juice, apple, added vitamin C	Sok, jabolko, dodan vitamin c	120	6	6	0.25	processed	0.2	0	70	0	7	0	33	0	0	0.02
78b0daf5-a218-456f-8a19-276f40128963	0	0	5	9.3	0	0	39	162	0	0	0	Juice, apple & blackcurrant	Sok, jabolko in črno ribet	94	4	6	0	processed	0.2	0	0	0	9.3	0	27	0	0	0.01
ee49a967-8b99-47fc-b69d-b93854ecadfd	0	0.08	20	1.8	10	2.5	27	115	0.2	0.3	8	Juice, lemon	Sok, limona	120	9	2	0.24	processed	0.6	2	19	0	1.8	38	46	0	0.14	0.1
b090496d-5b0a-4e0e-ad0b-3b734fb365cf	0	0.04	22	1.2	29	4.1	29	122	0.2	0.3	6	Juice, lime	Sok, limete	150	11	3	0.26	processed	0.8	5	19	0	1.2	28	45	0	0.21	0.1
a13850b2-6ac4-4295-9aea-b544034a4d32	0	0	7	5.4	14	0.3	27	112	0	0.04	51	Juice, orange	Sok, oranžna	145	7	2	0.03	processed	0.8	2	0	0	5.4	110	69	0	0.1	0.03
84279118-def6-483f-ae03-4526c692ba0c	0	0	9	7.7	46	0.2	35	146	0	0	26	Juice, orange & mango	Sok, oranžna in mango	160	9	4	0.03	processed	0.6	8	0	0	7.7	40	82	0	0	0.04
1c6fa9e2-9acd-4bcb-adeb-9987dd1e73f6	0	0	12	3.2	0	0	13	54	0	0	0	Water, coconut	Voda, kokos	200	9	36	0	raw	0.2	0	0	0	3.2	0	10	0	0	0.02
5594b5a6-f46c-49da-b0de-7529240adaf9	0	0	6	0	0	0	0	0	0	0	0	Mineral water, natural, unflavoured	Mineralna voda, naravna, neizpolnjena	1	4	8	0	raw	0	0	0	0	0	0	0	0	0	0
4ac4d826-4abe-4c90-8c9e-d49364bd385e	0	0	5	9.3	0	0	36	152	0	0.06	1	Mineral water, citrus flavoured	Mineralna voda, aromatizirana z citrusi	5	4	15	0	raw	0	0	0	0	9.3	0	0	0	0	0
e2f0b879-f44c-4ee6-9ffd-121cb0d823b3	0	0	1	0	0	0	0	0	0	0	0	Water, bottled, still	Voda, ustekleničena, še vedno	0	5	1	0	raw	0	0	0	0	0	0	0	0	0	0
6586d67e-08b5-45e5-ae2e-609e8908c538	0	0	2	0	0	0	0	0	0	0	0	Water, tap	Voda, pipa	0	1	3	0	raw	0	0	0	0	0	0	0	0	0	0
397a3d7d-14c4-45a6-9980-67d387b097a7	0	0	2	0	0	0	0	0	0	0	0	Water, soda	Voda, soda	0	1	3	0	light	0	0	0	0	0	0	0	0	0	0
8e660b3a-1fb4-492b-9ed4-91fb43898ffd	0	0	7	78.8	0	0.9	389	1626	4.3	0.41	0	Biscuit, savoury, rice cracker, plain	Biskvit, slani, rižev kreker, navaden	94	19	400	2.91	pocessed	7	0	20	0.81	0.7	30	0	0	0.91	1.4
3ba0b309-1e68-4b29-a1a5-c7920036a952	0.1	0	30	57.3	0	5.3	407	1701	15.6	1.7	56	Biscuit, sweet, breakfast style, with or without dried fruit	Biskvit, sladek, zajtrk, s suhim sadjem ali brez njega	190	54	270	2.27	processed	7.5	0	20	1.39	20.1	200	0	0	4.63	1.1
31d62327-60fd-4738-abde-fbba41f8112d	0	0	33	60.8	102	2.3	504	2110	26.3	0.77	5	Biscuit, sweet, shortbread style	Biskvit, sladek, slog s kratkimi	110	19	270	0.99	processed	6.2	177	40	16.06	20.4	100	0	0.1	1.1	0.45
13d9993b-3dda-4c98-a5e0-b9f140f39342	0.2	0	46	61.9	0	3	473	1979	22.7	2.7	0	Biscuit, sweet, chocolate chip or coated	Piškot, sladki, čokoladni čip ali prevlečen	220	41	210	0.9	processed	5.8	20	80	12.79	35.8	40	2	0	1.47	0.7
8f308b86-2ec5-416b-903e-32e7565fe318	0.1	0.04	27	64.1	14	1.8	472	1974	22.5	0.9	28	Biscuit, sweet, sandwich, cream & jam filling	Biskvit, sladki, sendvič, krema in marmelado	85	14	260	2.19	processed	4	2	0	11.24	33.5	20	0	0	3.9	0.45
927e1971-2d4a-4caa-a486-cdb3e4ab3469	0.1	0.11	124	68.5	0	4.7	382	1598	4.1	2	449	Breadcrumbs, white	Drobtine, bele	193	43	650	6.21	light	14	0	63	0.5	4.6	768	0	0	0.49	1.2
fef2fb50-c645-4c95-9a3a-1e3cee5b536c	0	0.06	107	44.6	0	3	250	1044	2.9	1.26	392	Bread roll, from white flour	Kruh, iz bele moke	137	29	380	5.04	light	9.3	0	41	0.47	3.4	391	0	0	1.02	0.82
8868619d-0d08-48db-b577-22799831386f	0	0	39	46.9	0	3	303	1266	8.4	0.95	265	Bread, wrap, white	Kruh, ovoj, bel	150	24	610	1.34	light	7.8	0	0	3.71	5.3	606	0	0	0.3	0.46
08c81a4f-8e12-473c-b721-ff144750d4b0	0	0.08	21	42.9	0	3.1	230	961	1.4	1.1	304	Bread, from white flour, sour dough	Kruh, iz bele moke, kislo testo	130	31	490	3.74	light	8.8	0	40	0.45	1.2	710	0	0	0	0.65
debc7886-c47d-4934-9ac7-7b756f188f36	0	0.08	133	39.2	0	6.9	237	993	2.5	1.97	313	Bread, from wholemeal flour	Kruh, iz polnozrnate moke	212	63	418	4.75	light	10.4	0	70	0.39	3.2	553	0	0	0.2	1.24
e420cb44-e9eb-4403-82fb-0959510d5263	0.3	0	120	47.8	0	2.6	293	1224	7.1	1.1	196	Bread, Naan	Kruh, Naan	160	28	630	2.63	light	8	6	60	1.35	6	470	0	0	0.79	0.62
c07800c1-5dab-42d4-be78-5cb9472123dc	0.3	0.03	70	48.5	0	2.7	265	1109	3.3	0.94	220	Bread, pizza base	Kruh, baza za pice	140	28	390	2.63	light	8.6	0	50	0.52	3.7	760	0	0	0.23	0.69
b7e0febc-e26d-47e0-994f-8c0721ebb9df	0	0	53	42.9	29	3.3	259	1084	5.5	0.78	72	Bread, damper, from white flour, homemade	Kruh, blažilnik, iz bele moke, domača	150	25	630	3.24	light	7.5	29	40	3.27	2.9	250	0	0	0.57	0.66
7caa19e0-9104-4843-a849-eb23ab6adc54	0	0.04	50	49.1	0	3.7	263	1102	2.1	1.2	316	Bread, flat (pita or Lebanese), white	Kruh, ravno (pita ali libanon), bela	150	30	498	3.28	light	9.5	0	20	0.62	3.1	545	0	0	0.2	0.54
82b3d7e5-c2e6-4883-adf9-9233207a0b0f	0.1	0.19	45	47.2	0	6.4	257	1074	2	2.7	267	Bread, flat (pita or Lebanese), wholemeal	Kruh, ploščat (pita ali libanon), pobeg	200	55	470	4.16	light	8.6	0	50	0.46	3.1	550	0	0	0.08	1.2
3aa8285a-ce3b-448a-a027-feb15ce939fb	0	0.08	84	46.2	0	3.2	251	1050	2	1.35	357	Bread, from white flour	Kruh, iz bele moke	130	29	439	4.2	light	9.5	0	42	0.28	3.1	648	0	0	0.24	0.81
b3e248a0-ce6e-43e9-a471-e23dca5b5914	0	0.08	228	43.8	0	2.9	239	1001	1.8	1.15	355	Bread, from white flour, added calcium	Kruh iz bele moke, dodan kalcij	110	27	442	5.47	light	9.7	0	40	0.26	2.7	634	0	0	0.32	1.07
32db9b34-b1af-45cb-97ad-48b7ee032686	0.1	0.1	56	43.6	0	6.4	247	1032	1.7	1.44	354	Bread, from white flour, added fibre	Kruh iz bele moke, dodana vlakna	111	27	448	4.51	light	9.7	0	35	0.26	2.5	638	0	0	0.48	0.8
8b87c3a5-1176-48c6-b604-a7e77a2de671	0	0.08	68	43.8	0	2.9	239	1001	1.8	7.08	355	Bread, from white flour, added iron	Kruh iz bele moke, dodan železo	135	41	447	5.47	light	9.7	0	40	0.26	2.7	634	0	0	0.32	0.8
ff8db4da-28cc-4f91-9e6b-93a556f56610	0	0.02	16	46.8	0	3.9	256	1070	2.5	0.84	177	Bread, from white flour, Italian-style	Kruh, iz bele moke, italijanskega sloga	98	24	500	2.56	light	9	0	20	0.44	2	320	0	0	0.35	0.77
7207278d-60c0-4cde-b184-f3eb45cc0955	0	0.1	126	38.9	0	7.9	257	1077	4.4	2.2	280	Bread, from wholemeal flour, extra grainy & seeds	Kruh, iz polnozrnate moke, dodatno zrnato in seme	240	80	370	5.11	light	11	0	67	0.57	2.9	527	0	0	0.98	1.46
e801f059-5894-4fca-9c5c-baf52c9a1d19	0.1	0.14	90	45.2	0	5.8	262	1095	3	2.5	260	Bread roll, from wholemeal flour	Kruh, iz polnozrnate moke	190	54	560	3.84	light	10.1	0	50	0.53	3	620	0	0	0.96	1.1
13aa2fdb-9ae8-4bac-8bdc-881798ad565d	0.1	0.12	155	39.8	0	5.8	258	1078	4.5	1.73	272	Bread, mixed grain	Kruh, mešano zrno	217	60	409	3.66	light	10.7	0	67	0.58	2.5	458	0	0	0.62	1.17
fe142ac7-5b9f-4eb4-b6a6-9c7381934f76	0	0.1	81	44.7	0	5.7	275	1149	4.4	1.91	302	Bread, from white flour, extra grainy & seeds	Kruh, iz bele moke, dodatno zrnato in seme	199	63	365	5.17	light	10.5	0	43	0.52	2.8	598	0	0	1.37	1.28
9163110a-67fd-41c1-a3dd-a97d72fa6b45	0.1	0.2	160	40.3	7	5.6	250	1046	3	4.7	314	Bread roll, mixed grain	Kruh, mešano zrno	290	80	660	7.93	light	12.2	1	0	0.45	2.3	370	0	0	1.67	1.7
fc82a76d-3550-44ae-b47f-625e3759b998	0	0	110	47.3	0	3.6	266	1112	3.7	1.5	192	Bread, from white flour, added dried fruit	Kruh iz bele moke, dodano suho sadje	320	29	270	2.73	light	8.8	0	40	0.75	18.1	435	0	0	0.4	0.7
34fee548-fa26-4aea-ae56-2e45e5eb3114	0.2	0.08	50	36.6	0	3.9	212	888	3.9	1	63	Bread, gluten free	Kruh, brez glutena	190	23	526	2.09	light	5.5	0	100	0.51	2.6	356	0	0	2.48	0.53
d34fba28-ec9c-4c6e-93a7-8e02a4f6dbc0	0	0.02	32	42.7	0	5.2	234	980	1.6	1.1	184	Bread, from rye flour, sour dough	Kruh, iz ržene moke, kislo testo	130	32	510	1.51	light	9.2	0	30	0.31	2	210	0	0	0.18	0.97
8da5272e-e4da-4a7f-b6db-454f3f7555d9	0	0.08	45	49.4	0	3.4	287	1202	6	2.36	285	Bun, sweet, with dried fruit	Žemljica, sladka, s suhim sadjem	183	30	282	2.9	light	7.6	0	40	1.67	16.9	689	0	0	0.31	0.79
09b07b51-0437-4bc5-bcd7-d0c92032b639	0	0.04	170	38.7	0	3.2	224	938	2.1	1.1	311	Muffin, English style, from white flour	Muffin iz bele moke	130	24	418	3.97	light	10.1	0	30	0.34	1.7	521	0	0	0.01	0.78
4a0501c2-682d-4055-8036-8a826e7ab5e7	0	0.03	3	75.6	0	4	371	1553	2.9	0.99	6	Breakfast cereal, flakes of corn	Žitarice za zajtrk, koruzni kosmiči	140	34	270	1.96	light	7.3	0	20	0.39	7.7	50	0	0	0.12	0.7
0031ff56-d565-4162-8e41-ece10526a896	0	0.04	2	80.2	133	3.2	374	1565	0.6	8.6	577	Breakfast cereal, flakes of corn, added vitamins B1, B2, B3, C & folate, Fe & Zn	Žitarice za zajtrk, koruzni kosmiči, dodani vitamini B1, B2, B3, C & folat, Fe & Zn	100	13	485	9.66	light	8.6	22	2	0.1	4.2	1	16	0	0.2	5.1
64a4fbd4-1664-4f1f-9ec7-6236c05c5f89	0	0.02	31	71.6	0	8.2	352	1472	1.5	8.6	1	Breakfast cereal, mixed grain (wheat & oat), flakes, apricot & sultana, added vitamins B1, B2, B3 & folate & Fe	Žitarice za zajtrk, žitne mešanice (pšenica in oves), kosmiči	388	81	32	8.56	light	9.1	0	828	0.29	25.3	1	6	0	0.8	1.52
72bdf018-66d8-4ed9-8e5c-21785d632c6a	0	1.3	284	62.8	0	2.5	371	1551	2.5	11.19	314	Breakfast cereal, mixed grain (wheat, oat & corn), extruded, added vitamins B1, B2, B3, B6, C & folate, Ca & Fe	Žitarice za zajtrk, žitne mešanice(pšenica, oves in koruza)	137	41	602	18.92	light	23.3	0	2	0.37	28	3	11	0	0.4	1.52
449c738f-0a25-4f85-92d6-efd5fcfd651d	0	0.15	56	56.6	39	11.4	402	1680	13.3	4.6	130	Muesli, toasted, added dried fruit & nuts, unfortified	Muesli, opečen, dodan suho sadje in oreščke, neobremenjeno	380	97	33	6.9	light	8.9	6	590	2.41	21.7	780	0	0	1.6	1.8
936d2ae7-3e89-413f-8f5d-91807185762e	0	0	57	59.2	12	9.4	393	1646	10.8	4.2	130	Muesli, untoasted or natural style, added dried fruit, unfortified	Muesli, v naraven ali naravni slog, je dodal suho sadje, neobremenjeno	440	110	41	3.91	light	10.8	2	60	2.77	18.7	320	0	0	1.7	1.8
af0c7169-d044-47ee-b639-d98ed570488b	0	0.06	67	52.3	0	7.6	424	1776	17.6	3.1	60	Muesli, granola, toasted, added nuts & seeds, unfortified	Muesli, granola, opečena, dodana oreščke in semena, neobremenjena	360	110	68	2.97	light	11.2	0	20	2.93	16.3	310	0	0	6.94	1.8
2e09d547-0f18-4e7f-a22c-0ff458e356f4	0	0.08	56	53.5	0	6.6	442	1851	18.8	3.6	69	Muesli, granola, non-oat based, toasted, added nuts & seeds, unfortified	Muesli, granola, na osnovi ne-toatov, opečen, dodan oreščki in semena, neobremenjeni	410	170	59	5.67	light	11.9	0	40	2.01	8.7	250	0	0	10.01	2.1
698c30f4-978e-47a0-bf04-081e32c552fa	0.2	0	41	43.1	41	1.5	293	1224	11	1.6	0	Bread, banana	Kruh, banana	150	25	360	2.01	light	5.7	33	0	1.93	25.1	40	0	0	3.2	0.68
91fd9082-5da0-4c5a-8179-e682d0e36728	0.2	0.07	110	44.4	56	1.9	337	1412	15.7	1.2	0	Muffin, cake-style, berry	Muffin, v slogu torte, jagodičje	120	16	367	1.15	light	5.2	49	100	3.7	26.1	160	2	0	1.8	0.4
4bbf32b1-acf4-4281-91cc-1dcf2b031893	0.2	0.07	110	48.1	0	1.4	375	1567	17.7	1.2	0	Muffin, cake-style, chocolate chip	Muffin, slog torte, čokoladni čip	152	27	344	1.3	light	6.4	40	100	3.65	29.5	160	0	0	1.8	0.5
9ff07c96-f4a0-4cfb-ac1c-0eb0ceb13821	0	0.03	12	28.3	0	7.3	159	664	0.9	1.6	14	Bulgur, soaked in water, no added fat or salt	Bulgur, namočen v vodi, brez dodane maščobe ali soli	169	55	2	4.22	light	5.4	0	0	0.13	0.4	460	0	0	0	0.8
9a4657f0-9342-4068-a227-1afc4c65a79b	0	0	3	84.1	0	0	348	1458	0.6	0	0	Flour, cornflour, from maize starch	Moka, koruzna moka, iz koruznega škroba	9	3	16	0	light	0.4	0	0	0.11	0	0	0	0	0	0.02
7be8c864-1c65-49d7-b013-e3e83f933ee7	0	0	8	84.4	0	0.5	350	1466	0.4	0.75	0	Flour, cornflour, from maize & wheat starch	Moka, koruzna moka, iz koruze in pšeničnega škroba	16	5	10	0.47	light	0.6	0	0	0.08	0	35	0	0	0.5	0.05
393abc89-e5fd-4879-bd29-8ce6d77b52e3	0	2.6	159	38.5	65	20.8	328	1373	5.5	4.6	178	Flour, chickpea (besan)	Moka, čičerika (besan)	396	134	11	4.57	light	19.7	11	20	0.56	2.2	570	3	0	1.73	3.1
cdeec92d-82b7-44bd-b49a-8d220cc9f468	0	0.15	6	71.6	0	2.2	343	1437	2	0.5	28	Flour, rice	Moka, riž	144	70	1	4.95	light	7.3	0	5	0.34	0.6	210	0	0	0.65	1.45
ffcaadee-51ac-4168-868c-f2bae5d0aa2f	0	0.19	44	54.9	7	17.3	322	1348	2.3	4	38	Flour, rye	Moka, ry	432	123	4	3.29	light	11.4	1	60	0.29	1.4	400	0	0	0.89	2.1
92e0cf5b-09ca-483c-be34-3f5fed81acf6	0	0.06	21	73.2	0	2.2	353	1479	1.3	1.2	11	Flour, wheat, white, plain	Moka, pšenica, bela, navadna	170	36	3	3.21	light	10	0	0	0.18	1.9	230	0	0	0.1	0.84
515f27a6-a484-4227-a0fa-d4bca0e1de95	0	0.06	59	73.2	0	2.2	353	1479	1.3	1.2	11	Flour, wheat, white, self-raising	Moka, pšenica, bela, samo-dviganje	150	33	740	3.21	light	10	0	0	0.18	1.9	230	0	0	0.1	0.75
59418030-318d-448b-96e6-1a603163aad0	0	0.1	29	61.6	0	8.8	328	1371	1.6	2.8	118	Flour, wheat, wholemeal, plain	Moka, pšenica, pobeg, navadna	310	89	2	5.87	light	11.6	0	40	0.22	2	480	0	0	0.4	1.7
fb9ebd8f-ccae-425b-a559-93152ece5b87	0	0	24	80.5	0	1.7	354	1480	1.1	0.8	9	Flour, gluten free, plain	Moka, brez glutena, navadna	120	27	21	0.66	light	3.4	0	0	0.14	0.3	40	0	0	0	0.52
cedd7095-68cf-4056-b926-5ac0f0e5047a	0	0.41	68	65.3	0	11.3	352	1471	2.1	2.2	47	Flour, wheat, wholemeal, self-raising	Moka, pšenica, polnozrnata, samo-dviganje	284	102	655	7.63	light	11.4	0	111	0.3	0.9	423	0	0	0.8	1.3
b4e43915-1d65-4122-871b-049abbf84b2e	0	0.21	4	68.3	0	11	347	1452	2.1	0.93	25	Pasta, maize flour (corn) based, dry	Testenine, koruza moka (koruza), suha	294	119	3	3.33	light	7.5	0	87	0.29	0	231	0	0	0.26	1.79
2b0e1641-103d-41bb-b20e-f6c698463001	0	0.1	18	68.5	0	3.2	348	1458	1.4	1	16	Pasta, white wheat flour, dry	Testenine, bela pšenična moka, suha	142	30	5	3.56	light	12.7	0	60	0.24	0	70	0	0	0.37	0.6
2ae71dfa-749a-4163-b5de-ae8248027432	0	0.06	23	74.4	0	2.2	364	1522	1.6	1.29	15	Pasta, white wheat flour & egg, dry	Testenine, bela pšenična moka in jajce, suha	178	37	9	3.36	light	10.6	5	16	0.26	1.9	236	0	0.22	0.16	0.9
90ff43c9-74f8-420c-8343-4e110528f098	0	0.21	39	73.1	496	4.4	364	1525	1.3	2.5	16	Pasta, white wheat flour & spinach, dry	Testenine, bela pšenična moka in špinača, suha	203	45	38	4.1	light	11.9	90	80	0.22	2.7	20	0	0	0.26	0.7
7c3e0b4b-0a5c-46b2-8167-225ea83efcc9	0	0.04	63	60.6	3	9.9	336	1404	2.2	3.9	29	Pasta, wholemeal wheat flour, dry	Testenine, polna pšenična moka, suha	305	85	11	5.5	light	12.5	2	120	0.33	0	560	0	0	0.35	1.4
aa98e35b-294a-42c3-b80b-bdece4df2c8a	0.2	0.04	40	35.6	23	2.7	360	1505	19.1	1.1	46	Croissant, plain	Rogljiček, navaden	130	24	462	2.61	processed	10	139	90	12	5.1	110	0	0	0.25	1.1
e3921e69-80f3-4a5c-b5ec-06b7e1a212b3	0	0.06	18	55.8	0	2.5	307	1283	3.8	1.15	14	Pastry, filo 	Pecivo, filo	129	26	581	2.98	light	10.2	2	20	0.53	1.3	150	0	0	0.18	0.4
3fdf2c41-760f-4e64-bbe9-752f5a1f7de6	0	0.03	12	32.9	26	3.4	331	1383	19	0.3	46	Pastry, puff, with butter 	Pecivo, puff, z maslom	63	13	160	1.76	light	5.5	139	20	11.9	1	20	0	0	0.91	0.2
9e204878-a8da-40a7-85d2-c2764578e8e3	0	0.03	9	35	26	3.4	316	1321	16.4	0.3	46	Pastry, puff, vegetable oil 	Pecivo, puff, rastlinsko olje	63	13	387	1.76	light	5.5	14	20	7.5	1	20	0	0	0.91	0.2
df42b885-64cb-4596-9eb9-8939965daf28	0	0	8	8.7	31	0.5	634	2651	67.2	0	0	Mayonnaise, traditional (greater than 65% fat)	Majoneza, tradicionalna (večja od 65% maščobe)	14	2	480	0.15	processed	0.8	5	20	8.28	7.9	0	0	0.3	17.45	0.08
25d2dba5-e0dd-4ca7-b425-02e4cba17842	0	0.06	49	9.4	0	3.9	248	1039	19.5	1.6	91	Dip, hummus	Potop, hummus	260	65	410	1.16	processed	6.9	0	30	1.83	0.8	160	0	0	4.4	1.2
f9cb3237-885e-4c75-9516-9d254b0ac99c	0	0.06	41	37.2	30	10.4	220	922	5.4	4.7	23	Sauce, hoi sin (hoisin)	Omaka, hoi greh (hoisin)	51	14	1	1.1	processed	1.6	5	250	0.82	33.5	10	1	0	0	0.6
1f2557cb-b9e9-4df0-b810-44a1f295dba4	0	0.02	40	21	4	0.3	113	471	1	3.9	15	Sauce, oyster	Omaka, ostrige	210	24	3	1.14	processed	2.8	40	50	0.16	15.6	20	0	0	0	0.9
034c1e18-5e59-4b01-a4bd-462a576d24dd	0	1.55	9	6.6	22	1.3	57	240	2.9	0.81	33	Sauce, pasta or simmer, low fat	Omaka, testenine ali vrete, nizke maščobe	89	10	281	1.13	processed	0.8	4	50	0.3	3.5	530	0	0	1.65	0.2
a5812a62-0d50-4eed-bc0f-b5e446bcba67	0.4	0.25	147	7.4	306	1.5	382	1598	37.1	1.41	34	Sauce, pasta, basil pesto	Omaka, testenine, bazilika	232	32	1	4.26	processed	5.3	51	130	6.93	2.1	80	0	0	5.38	1.09
dd8ff831-00cb-40fb-a53d-7072189d8a09	0	0	21	3.2	0	0	50	209	0	1.3	34	Sauce, soy	Omaka, soja	299	50	5	0.17	processed	6.8	0	110	0	2.2	160	0	0	0	0.51
67e49207-fe1c-467c-9167-59cd36b9f8c2	0	0.09	17	2.7	0	0	39	162	0	2.2	44	Sauce, soy, reduced salt	Omaka, soja, zmanjšana sol	180	32	3	1.55	processed	5.4	0	240	0	1.7	0	0	0	0	0.3
6d43c7ab-198d-4169-a2f6-2dc4e431ea94	0	0.15	12	0.1	984	0.6	14	57	0.8	1.16	1	Sauce, tabasco	Omaka, tabasco	128	12	633	0.47	processed	1.3	164	84	0.12	0.1	32	4	0	0.01	0.16
5a2ef3cc-6510-40e5-b606-aa4d601caf62	0	0	13	24.1	240	1.3	104	437	0	0.65	16	Sauce, tomato	Omaka, paradižnik	292	14	870	0.1	processed	1.3	40	0	0	23.7	30	0	0	1	0.15
a94e1b7d-2a8c-47c5-b525-aff35bbab1ba	0	0	12	24.1	240	1.3	104	437	0	0.62	16	Sauce, tomato, reduced salt	Omaka, paradižnik, zmanjšana sol	270	14	529	0.1	processed	1.3	40	0	0	23.7	30	0	0	1	0.14
d8b99c66-4ae9-4479-a25c-5df94e81476b	0.1	0.61	160	17.6	8	0	74	311	0.2	3.7	2	Sauce, Worcestershire	Omaka, Worcestershire	890	83	1	0.64	processed	1.3	1	130	0.04	16.9	0	0	0	0.12	0.4
a1c22c26-898e-48e2-bd41-19541d148706	0	0	1	0	0	0	16	65	0	0	0	Vinegar 	Kis	6	1	5	0	light	0	0	0	0	0	0	0	0	0	0
2e423ed5-7e21-4372-a506-348fd38f02cb	0	0.12	54	14.3	0	5.8	596	2495	49.6	1.72	155	Peanut butter	Arašidovo maslo	620	190	477	19.26	light	22.2	0	120	8.75	8.6	105	6	0	8.45	2.84
e6909d29-aedc-45fe-948f-eaaf3a695d0c	1.3	0.12	510	0	140	0	378	1582	32.4	0.17	50	Cheese, blue vein	Sir, modra vena	88	24	1	5.82	light	20.9	337	415	20.71	0	38	0	0.1	0.8	2.95
b59f87e1-a94c-4af9-8279-3cbc17bebf21	1.6	0	320	0	81	0	247	1032	20.2	0	23	Cheese, bocconcini	Sir, bocconcini	13	10	210	3.23	light	16.6	144	170	14.45	0	0	0	0.1	0.9	2.2
7c2e2d10-26b9-4e4d-94a8-aa350761bf4f	1.3	0.12	460	0	154	0	360	1508	31.5	0.12	50	Cheese, brie	Sir, Brie	100	20	580	4.36	light	18.6	356	360	20.48	0	0	0	0.1	0.8	2.5
d2d697e7-753a-4e0e-87f8-4b9a15216585	1.1	0.13	490	0	154	0	292	1223	23.8	0	90	Cheese, camembert	Sir, Camembert	98	19	570	4.36	light	18.6	526	380	15.56	0	0	0	0.1	0.8	2.7
b1ba6b60-ecfb-4d9c-83f7-31d86d8879fa	1.7	0.03	760	0.3	105	0	404	1689	33.5	0.12	26	Cheese, cheddar, natural, regular fat	Sir, cheddar, naravna, redna maščoba	73	27	686	5.47	light	24.6	201	335	22.72	0.3	12	1	0.1	0.58	3.47
e7c78ffa-47ac-418e-984a-3e4d7907270b	0.5	0.04	89	1.8	44	0	133	556	5.7	0.05	3	Cheese, cottage	Sir, koča	123	8	277	4.45	light	17	38	285	3.47	1.8	48	0	0.1	0.04	0.24
f9e93028-8767-42f7-ad80-0f9c9c9c3915	0.1	0	69	0.2	160	0	339	1420	34.2	0	64	Cheese, cream, plain	Sir, smetana, navadna	80	6	320	1.51	light	8.5	417	140	22.07	0.2	0	0	0.1	1.1	0.6
be58fc24-941d-419e-af9b-38da8d7c5064	1.9	0.04	810	0	128	0	359	1500	27.2	0.27	28	Cheese, edam	Sir, Edam	85	36	900	6.48	light	27.4	219	400	17.22	0	30	0	0.1	0.43	4.2
4846eeeb-77ae-467d-921e-0c7077c23415	0.9	0	315	0.4	170	0	272	1136	22.3	0.32	0	Cheese, fetta (feta)	Sir, fetta (feta)	74	15	1	4.07	light	16.6	100	260	14.16	0.4	20	0	0.1	0.6	1.56
614059d2-52fd-40aa-8265-83b9ff6d6fd0	0	0	334	0.8	0	0	359	1502	31.3	0.05	51	Cheese, goat, firm	Sir, koza, čvrsto	116	26	538	2.76	light	18.6	280	170	20.73	0.8	20	0	0.1	0.4	1.25
162d7aca-8308-4f7e-82be-6fa24ea02b0a	0	0	63	0.9	0	0	285	1194	21.7	0	51	Cheese, goat, soft	Sir, koza, mehko	127	11	430	3.14	light	21.2	193	170	14.38	0.9	20	0	0.1	0.4	0.31
4852f489-b683-46da-a598-5185f60308fa	0.5	0.1	620	1.8	60	0	251	1050	17.1	0.2	40	Cheese, haloumi	Sir, haloumi	77	18	2	5.19	light	21.3	210	400	11.03	1.8	60	0	0.1	0.6	3
d8bcdca5-adcf-48f6-8bb7-59158aabb6c7	1	0	685	0	94	0	290	1213	22.1	0.06	48	Cheese, mozzarella	Sir, mocarela	79	28	522	4.76	light	22.2	146	230	14.37	0	0	0	0.1	2.1	3.12
bb28974f-44ef-46ba-9951-c504a003dbd8	1.9	0.04	970	0	179	0	466	1949	33.3	0.46	52	Cheese, parmesan, dried, finely grated	Sir, parmezan, posušen, fino nariban	80	42	1	9.72	light	40.6	285	540	21.06	0	100	0	0.1	0.43	6.5
970cec49-4970-4046-972f-5c381f59a190	1.8	0	948	0	110	0	374	1565	27	0.17	61	Cheese, parmesan, regular fat	Sir, parmezan, redna maščoba	78	41	1	5.2	light	32	228	460	18.73	0	20	0	0.1	1.1	3.7
9e18ddc7-095e-435d-a4a8-fe7d42d269ec	0.2	0.01	170	2.7	81	0	159	665	11.8	0	6	Cheese, ricotta	Sir, rikota	91	10	170	3.05	light	10.4	112	90	7.73	2.7	0	0	0.1	0.65	0.73
1548b294-acea-4a18-91a3-484dd1cacafc	0.2	0	60	2.4	180	0	337	1409	36.1	0	64	Cream, thickened, regular fat (approximately 35%)	Smetana, zgoščena, običajna maščoba (približno 35%)	84	6	27	0.36	light	2	280	120	23.28	2.4	20	0	0	1.1	0.19
ba6a53a2-66c4-46e6-aa05-5d7c77ba0a63	0	0	17	17.7	0	0	265	1108	21.8	0	0	Cream, imitation (non-dairy)	Smetana, imitacija (nemlečna)	24	2	57	0	light	1	0	0	19.34	16.3	0	0	0	0	0.14
c69adeb7-733e-42ca-807c-59ae2a06b4a3	0.1	0	50	2	140	0	338	1414	36.3	0	57	Cream, sour, regular fat	Smetana, kisla, navadna maščoba	74	5	19	0.25	light	1.9	343	110	23.46	2	0	0	0	1.1	0.18
11f5cdf5-31e3-492f-8b2a-70146f3c35bd	0.1	0	80	4.5	78	0	207	868	19.7	0	57	Cream, sour, light (approximately 18% fat)	Smetana, kisla, lahka (približno 18% maščobe)	74	5	19	0.47	light	3.6	192	110	12.73	4.5	0	0	0	0.62	0.18
cef82971-6451-4f5f-a81d-b0a6d5820343	0	0.04	93	20.5	190	0	188	788	10.6	0.1	10	Ice cream, vanilla flavour, regular fat	Sladoled, vaniljev okus, navadna maščoba	142	12	48	1.91	light	3.7	182	290	7.16	18.4	0	0	0	0	0.23
227802db-1f66-42e9-b34b-e15d16694145	0.4	0	110	22.5	68	0	219	916	13.5	0	17	Ice cream, vanilla flavour, premium or rich (~15% fat)	Sladoled, vaniljev okus, premium ali bogat (~ 15% maščobe)	150	10	37	0.65	light	3.2	171	200	8.94	19.7	30	0	0	0.3	0.33
02cc426b-31f5-4837-930c-a340a87b1c02	0.4	0.02	106	5.4	18	0	65	271	3.4	0.02	5	Milk, cow, fluid, regular fat (3.5% fat)	Mleko, krava, tekočina, običajna maščoba (3,5% maščobe)	142	10	35	0.81	light	3.3	44	183	2.31	5.4	22	0	0.1	0.09	0.33
a2284c93-6a86-4ed3-851f-08eb15d866df	0.2	0.01	115	4.8	4	0	43	181	1.2	0.01	5	Milk, cow, fluid, reduced fat (1% fat)	Mleko, krava, tekočina, zmanjšana maščoba (1% maščobe)	156	11	36	1.81	light	3.3	14	173	0.85	4.8	20	0	0.1	0.02	0.37
b3489d34-b127-42cb-bb9b-0d2354890bbb	0.2	0	112	8.6	6	0	63	264	1.9	0.22	6	Milk, cow, fluid, flavoured, chocolate, reduced fat	Mleko, krava, tekočina, aromatizirana, čokolada, reducirane maščobe	169	14	46	0.88	light	3.3	23	175	1.25	8.6	10	0	0.08	0	0.39
db178371-3f6e-4f3a-98f2-53ac8b961a0c	0.2	0	256	10	44	0	141	588	8.2	0.15	0	Milk, cow, canned, evaporated, regular	Mleko, krava, konzervirana, izhlapevana, redna	340	24	104	1.75	light	7.5	82	505	5.23	10	65	1	0.06	0	0.8
c7529a6d-561f-405f-8986-09b4f791bc30	0.2	0	266	10.6	8	0	91	380	2.1	0.3	0	Milk, cow, canned, evaporated, reduced fat (approximately 2% fat)	Mleko, krava, konzervirana, izhlapevana, zmanjšana maščoba (približno 2% maščobe)	348	25	104	1.76	light	7.8	17	555	1.35	10.6	75	0	0.06	0	0.9
fac62d7c-16fa-48f7-8c87-c877a9af2f3d	0.4	0	268	55	46	0	326	1362	9.2	0.15	0	Milk, cow, canned, sweetened, condensed, regular	Mleko, krava, konzervirana, sladkana, kondenzirana, redna	357	25	106	2.07	light	8.3	78	605	6.03	55	80	1	0.06	0.2	0.9
db932ee8-ef6d-4e71-b5c7-80c3c7333b99	0.7	0.19	850	43	120	0	509	2128	27.3	0	117	Milk, cow, powder, regular fat, unfortified	Mleko, krava, prah, redna maščoba, neobremenjena	1	80	310	5.44	light	25.3	370	2	18.26	43	200	41	0.6	0.9	2.3
7bf12584-c74f-404e-b033-50626ad0dffe	0.7	0.19	850	43	120	0	509	2128	27.3	0	117	Milk, cow, powder, regular fat, added vitamins A & D	Mleko, krava, prah, navadna maščoba, dodala vitamine A&D	1	80	310	5.44	light	25.3	467	2	18.26	43	200	41	5.3	0.9	2.3
b22f8569-85d4-4da0-8798-a07483f4b2ef	1.6	0.23	1	56	16	0	363	1519	0.8	0	26	Milk, cow, powder, skim	Mleko, krava, prah, posnetek	1	110	420	7.44	light	34.9	7	2	0.51	56	230	13	0.6	0	3.3
82afa39e-3e82-434a-8af9-a208f1a6e575	0.2	0.01	120	13.9	15	0	94	392	3	0.05	2	Custard, vanilla, regular fat	Krema, vanilija, redna maščoba	165	11	61	0.64	light	3.3	8	210	1.96	11.6	50	0	0.08	0.03	0.39
c2e5471f-0705-4ed3-a1e9-7c057b3e2a46	0	0	8	81.5	0	0.5	338	1414	0.4	0.72	0	Custard powder, vanilla, dry mix	Custard Powder, vanilija, suha mešanica	16	5	392	0.45	processed	0.5	0	1	0.08	0.4	34	0	0	0.48	0.05
462542b3-3f8e-4b02-8271-453f11131caf	0.2	0.02	115	13.9	19	0	103	430	3.7	0.06	4	Custard, vanilla, prepared from dry mix	Krema, vanilija, pripravljena iz suhe mešanice	155	11	59	0.91	processed	3.6	48	198	2.51	9.6	20	0	0.1	0.1	0.36
31fdc25c-0c08-4025-a293-2833140db3de	0	0	120	17.7	15	1.4	127	533	3.7	0.53	0	Dairy or yoghurt dessert, chocolate, regular fat	Mlečna ali jogurtna sladica, čokolada, redna maščoba	230	16	59	1.05	light	5.1	8	220	2.34	15.7	0	0	0	0.06	0.48
4de5e759-0101-4d5a-a55d-31e286098816	0.2	0.05	150	12.9	74	0.6	115	483	4.9	0	60	Yoghurt, flavoured, high fat (approx 5%)	Jogurt, aromatiziran, visoke maščobe (približno 5%)	190	13	47	0.97	light	4.4	73	190	3.32	12.5	30	0	0	0.2	0.44
09d4169c-8930-4118-af93-2e82558a1674	0.5	0.03	175	5	29	0.1	73	306	3.2	0	25	Yoghurt, natural, regular fat (3% fat)	Jogurt, naravna, redna maščoba (3% maščobe)	230	16	58	1.14	light	5.1	50	220	2.17	4.9	20	0	0	0	0.57
0fa90cfd-e9c7-4ce6-9f97-3dabdc5f211f	0.4	0.03	110	11.1	65	0.1	92	386	3.2	0.18	7	Yoghurt, apricot pieces or flavoured, regular fat (3% fat)	Jogurt, marelični kosi ali aromatizirani, običajne maščobe (3% maščobe)	220	14	65	0.86	light	4.2	37	220	2.03	11.1	90	0	0	0	0.51
598354ae-be9a-4c52-8a87-11e698f705e2	0.4	0.03	159	11.6	12	0.1	97	405	3.1	0.12	7	Yoghurt, strawberry pieces or flavoured, regular fat (3% fat)	Jogurt, jagodni kosi ali aromatizirani, običajne maščobe (3% maščobe)	213	15	60	1.3	light	4.9	30	270	2	11.6	60	0	0	0	0.48
478fd979-8d76-4d73-8e7e-d65af375ec79	0.4	0.03	170	14.5	58	0.2	98	408	1.9	0	7	Yoghurt, vanilla flavoured, (2% fat)	Jogurt, aromatiziran vanilla, (2% maščobe)	230	15	52	1.02	light	5	38	200	1.28	13.5	50	0	0	0	0.57
bc4724e9-4768-4dea-b372-2e4dc57a8d2a	0.2	0.04	160	12.2	15	0.3	82	341	1.3	0	59	Yoghurt, flavoured, low fat (approx 2%)	Jogurt, aromatiziran, nizke maščobe (približno 2%)	210	14	60	0.88	light	4.6	22	200	0.89	11.3	30	0	0	0	0.44
c0518edf-7228-421f-8755-68646cd18622	0.3	0.04	110	2.3	0	0.4	54	227	0.3	0	70	Yoghurt, flavoured, low fat (0.2%), intense sweetened, increased protein	Jogurt, aromatiziran, nizke maščob (0,2%), intenzivne sladkane, povečane beljakovine	140	10	35	2.04	light	9.6	0	200	0.2	1.6	20	0	0	0	0.44
671f2144-b4d3-4a93-b3e0-188a59ad1de6	0	0.06	206	0	0	1	130	543	8.3	2.35	41	Tofu (soy bean curd), firm, as purchased	Tofu (sojina skuta), podjetje, kot je bilo kupljeno	150	99	22	2.77	light	12.8	0	35	1.16	0	100	0	0	0.42	1.45
1320e75b-e683-42e4-abeb-5353f7a863e0	0	0.03	34	9.2	0	1.8	92	384	4.5	0.39	0	Yoghurt, almond based, flavoured	Jogurt, mandljevo, aromatiziran	82	30	5	0.34	light	2.6	0	80	0.41	5.5	20	0	0	2.1	0.28
313e1c2b-ae46-4bad-998f-39b2699b4773	0	0	3	9.2	8	1.3	124	519	9	0.27	0	Yoghurt, coconut based, flavoured	Jogurt, kokosova, aromatizirana	140	16	18	0.11	light	1.1	1	0	8.07	4.7	0	0	0	0	0.15
b96bc9d7-d587-44de-ae18-00549a1949e3	0	0	120	12.6	0	0.2	99	416	3.7	0.59	75	Yoghurt, soy based, berry flavoured, regular fat (3% fat)	Jogurt, na osnovi soje, jagodičja, redna maščoba (3% maščobe)	55	7	55	0.84	light	3.6	0	0	0.49	8.4	0	0	0	0.05	0.15
821d98dd-8e01-4a20-b808-ba9eeeba425e	0	0	120	12.6	0	0.2	74	309	0.8	0.59	75	Yoghurt, soy based, vanilla flavoured, reduced fat (1% fat)	Jogurt, na osnovi soje, aromatizirana z vanilijo, zmanjšana maščoba (1% maščobe)	55	7	55	0.84	light	3.6	0	0	0.1	8.4	0	0	0	0.05	0.15
44750cd7-6e5b-488d-8589-6902483beb0f	0	0	17	0.6	153	0	726	3036	81.3	0	6	Butter, plain	Maslo, navadno	23	2	10	1.33	light	1.1	858	50	56.3	0.6	0	0	1.2	1.96	0.06
0cc827bf-8f9c-44d4-8f1d-8aea973c95e5	0	0	7	0	390	0	610	2552	69	0	4	Margarine spread, (70% fat)	Margarinski namaz, (70% maščobe)	24	1	562	0	light	0	715	0	14.79	0	0	0	7.43	34.68	0.02
64356d61-b3b8-47f0-8938-55664f942dee	0	0	0	0	0	0	884	3700	100	0.01	0	Oil, blend of monounsaturated vegetable oils	Olje, mešanica mononasičenih rastlinskih olj	0	0	0	0	light	0	0	0	6.88	0	0	0	0	14	0.01
8e5740f8-d7d4-4902-a3cd-866255f69ef1	0	0	0	0	0	0	884	3700	100	0.01	0	Oil, blend of polyunsaturated vegetable oils	Olje, mešanica polinenasiranih rastlinskih olj	0	0	0	0	light	0	0	0	14.15	0	0	0	0	19.2	0.01
cf815899-ea87-475e-b98b-6d3cec08db7c	0	0	1	0	0	0	884	3700	100	0	0	Oil, canola	Olje, repično	0	0	0	0	light	0	0	0	7.3	0	0	0	0	26.22	0.04
9bde719f-b66d-451b-b727-d04c252e312a	0	0	0	0	11	0	883	3695	99.9	0	0	Oil, olive	Olje, olivno 	0	0	0	0	light	0	2	0	15.52	0	0	0	0	21.7	0.01
a99d36d1-43fc-4a2b-b210-8db99721d783	0	0	0	0	0	0	884	3700	100	0	0	Oil, soybean	Olje, sojino	0	0	0	0	light	0	0	0	14.29	0	0	0	0	14.3	0
01a27ef6-3fd7-4813-bb58-c0e3986774ac	0	0	0	0	0	0	884	3700	100	0	0	Oil, sunflower	Olje, sončnično	0	0	0	0	light	0	0	0	10.16	0	0	0	0	56.1	0.01
b11dd9c2-9d57-4301-9ed7-aeaa4f59d00d	0	0	0	0	0	0	884	3700	100	0.01	0	Oil, vegetable	Olje,  rastlinsko	0	0	0	0	light	0	0	0	10.52	0	0	0	0	16.6	0.01
1549a054-954c-4e58-81bb-7fe61fa00e66	0	0	0	0	0	0	885	3702	100	0	0	Fat, solid, vegetable oil based	Maščob, trdno, rastlinsko olje na osnovi	0	0	0	0.4	light	0.2	0	0	49.02	0	0	0	0	7	0
71a371a0-5b6a-44d7-9f22-26dde0151b9b	1.4	0.01	47	0.3	2	0	127	533	8.5	1.9	110	Egg, chicken, whole 	Jajce, piščanec, cel	140	12	150	2.71	raw	12.6	130	430	2.3	0.3	70	0	5.9	1.71	1.13
63b0f1f2-5ef2-44b1-acf0-0ea8298d018a	0	0	5	0.4	0	0	47	196	0	0.2	7	Egg, chicken, white (albumen) 	Egg, piščanec, bel (album)	119	11	175	3.2	raw	11.2	0	410	0	0.4	0	0	0	0	0
2d988ee3-25e9-4eff-ad06-e76fea4ed976	4	0.16	100	0.2	0	0	313	1311	28.2	4	120	Egg, chicken, yolk 	Jajce, piščanec, rumenjak	104	8	58	3.98	raw	15.6	449	400	8.57	0.2	190	0	17	7.99	2.5
c19d4d26-d9a9-42ac-ab06-96297c471328	0	0.03	6	12	0	3.2	58	244	0.3	0.22	59	Apple, bonza 	Jabolko, Bonza	88	5	0	0.04	raw	0.3	0	20	0	11.5	20	2	0	0.26	0.1
b86806a5-6597-4cb5-ab26-6f4ea437c099	0	0.11	22	60.4	76	8.5	258	1078	0	0.71	0	Apple, dried	Jabolko, posušeno	640	24	260	0.16	light	1.2	13	30	0	59.4	0	0	0	0.6	0.07
5e23d202-f9cb-4c47-bb5d-e108f4bc0dcf	0	0.03	6	12.5	6	2.4	59	245	0.3	0	59	Apple, fuji 	Jabolko, Fuji	91	4	2	0.14	raw	0.3	1	10	0	12.1	20	5	0	0.36	0.05
dde1abd4-fa42-46cd-af16-4b77a7b954b7	0	0.04	4	10.8	15	2.5	48	202	0	0.16	59	Apple, golden delicious 	Jabolko, Golden Delicious 	90	4	2	0.14	raw	0.3	2	10	0	10.5	20	5	0	1.3	0.07
2cd94a3d-46a0-436e-a912-9e65ae448c82	0	0.06	5	10.8	5	2.3	48	202	0	0.16	59	Apple, granny-smith 	Jabolko, Granny-Smith	108	4	1	0.14	raw	0.3	1	10	0	10.3	30	5	0	0.22	0.07
647d8a8e-1646-4de8-a169-4b210490d842	0	0.02	4	12.3	5	2.3	54	226	0	0.2	59	Apple, jonathon 	Jabolko, Jonathon	110	4	1	0.14	raw	0.3	1	10	0	11.8	20	5	0	0.22	0.1
a70993f4-e551-420c-be51-595ac8ebe7c7	0	0.03	4	12.8	27	3	58	242	0	0	59	Apple, pink lady 	Jabolko, Pink Lady	120	5	1	0.03	raw	0.2	4	0	0	12.2	0	9	0	0	0.02
996a2d00-ffbf-47b7-a515-98dfe9d760ea	0	0.02	5	13.8	15	2.3	59	248	0	0.16	59	Apple, red delicious 	Jabolko, Red Delicious	102	4	1	0.14	raw	0.3	2	10	0	13	20	6	0	0.22	0.06
8c7d28f4-0429-41da-8386-923247be3f3f	0	0.02	5	12.1	22	2.1	53	222	0	0.05	59	Apple, royal gala 	Jabolko, Royal Gala	110	6	1	0.32	raw	0.4	4	25	0	11.1	25	2	0	0.05	0.03
0f887b1f-5b27-4084-9561-203668b61cb6	0	0.03	5	12.7	22	2.7	57	240	0	0.03	59	Apple, red skin 	Jabolko, rdeče	113	5	1	0.1	raw	0.2	4	6	0	12	9	7	0	0.08	0.03
d41f09b4-e62e-486e-bd9a-a7ff2498a70e	0	0.05	4	10.8	10	2.4	48	202	0	0.16	59	Apple, green skin 	Jabolko, zeleno	99	4	2	0.14	raw	0.3	2	10	0	10.4	25	5	0	0.76	0.07
e64dd5d4-5aa1-4d35-a091-16ae8eb9c334	0	0.04	13	7.7	2	1.5	40	167	0.4	0.28	8	Apricot 	Marelica	290	12	0	0.09	raw	0.2	385	30	0	7.6	20	3	0	0.8	0.14
d63c6bfb-881e-4ea9-b315-21d3aafa6e3c	0	0.1	67	44.4	2	8.4	212	886	0.2	3.1	0	Apricot, dried	Marelica, posušena	1	57	37	3.2	light	4.3	397	0	0	40.5	0	1	0	0.45	0.8
15a86ca1-aeab-459e-a9a0-8d983d88b4ea	0	0.2	5	19.6	34	2.2	94	394	0.2	0.29	33	Banana, cavendish 	Banana, Cavendish	346	31	0	0.73	raw	1.4	6	47	0	12.8	20	4	0	0.12	0.16
a79985de-afc8-4ffa-941f-67f1009c466b	0	0.2	10	25	45	3.7	113	474	0.1	0.4	33	Banana, lady finger/sugar 	Banana, Lady Finger/Sugar	320	38	2	0.82	raw	1.5	8	70	0	18.2	40	19	0	0.1	0.2
80e7fc4a-cb87-448b-8f99-64f7ad193e5e	0	0.02	30	7.5	320	6.1	50	211	0.3	0.42	34	Blackberry 	Robida	114	30	0	0.6	raw	1.4	53	30	0	7.5	20	38	0	1.4	0.24
fc0a286c-f00c-4a00-af40-fcf8a318e965	0	0	11	9.6	0	3.5	46	194	0	0.35	0	Blueberry 	Borovnica	83	6	2	0.1	raw	0.5	0	0	0	9.2	30	2	0	0.55	0.07
58991366-4516-4540-b042-439e7135dabf	0	0	11	9.9	0	3.6	48	199	0	0.36	0	Blueberry, frozen	Borovnica, zamrznjena	77	6	2	0.1	light	0.5	0	0	0	9.4	29	2	0	0.54	0.08
ffcf5257-1b27-439c-a544-2ef23f4e7f7e	0	0.05	22	12.9	56	1.5	60	250	0.2	0.28	4	Cherry 	Češnja	230	8	0	0.61	raw	0.8	9	25	0	10.9	32	19	0	0.42	0.1
3c61ee33-001d-427b-9f75-9778b73c486c	0	0.05	8	17	38	0.9	71	299	0	1.42	2	Cherry, black, canned in syrup	Češnja, črna, konzervirana v sirupu	125	7	4	0.04	processed	0.7	6	0	0	15.8	0	0	0	0.05	0.05
cdf52a1e-e4db-4bda-808c-23839e2b0ab5	0	0.05	10	17	70	1.7	74	310	0.1	1.6	4	Cherry, black, canned in syrup, drained	Češnja, črna, konzervirana v sirupu, odcejena	130	8	5	0.08	processed	0.9	12	0	0	15.7	0	0	0	0.09	0.1
4bed2f12-4ebe-4cbe-b5f1-a7da109c9f90	0	0.05	6	17.1	0	0	69	288	0	1.2	0	Cherry, black, canned in syrup, syrup only	Češnja, črna, konzervirana v sirupu, samo sirup	120	6	3	0	processed	0.5	0	0	0	16	0	0	0	0	0
dd224c6f-1b8c-4858-a281-6a9dbe5e6e12	0	0.04	62	9.4	174	6.5	64	266	0.9	0.86	17	Cumquat (kumquat) 	Cumquat (kumquat)	186	20	10	0.98	raw	1.9	29	90	0.23	9.4	37	44	0	0.15	0.17
0cfeb34c-6790-4275-80d4-677396bd3481	0	0.06	8	4.3	38	3.6	31	131	0.1	0.23	1	Cranberry 	Brusnica	80	6	2	0.11	raw	0.5	6	20	0.01	4.3	12	14	0	1.32	0.09
f13fe40c-a7d7-4ae3-b959-4e529cfad2fe	0	0.04	9	77.5	27	5.3	318	1330	1.1	0.39	0	Cranberry, dried, sweetened	Brusnična, posušena, sladkana	49	4	5	0.58	light	0.2	4	28	0.29	72.6	13	0	0	2.1	0.1
294dc8e6-9a78-4c08-b018-71127e355150	0	0.3	87	65.1	13	6	279	1167	0.5	2.3	10	Currant, dried	Ribrant, posušen	810	43	46	1.37	light	2.8	2	0	0	63.2	110	0	0	0.11	0.5
9dae3083-0741-424a-9857-f58089a20aa7	0	0.16	47	67.2	19	9.7	290	1212	0.2	2.6	19	Date, dried	Datum, posušen	730	50	14	1.57	light	2	3	100	0	65.9	0	5	0	0.05	0.6
8fd171be-a0e1-4218-bca6-651c9905c434	0	0.11	200	54.5	9	14.3	259	1082	0.7	1.4	9	Fig, dried	Fig, posušen	780	73	39	0.87	light	3.6	2	0	0.19	52.6	50	0	0	0.35	0.5
2dbd958b-2bb0-4282-8db0-c790cd3362ee	0	0.11	38	8.1	150	3.3	47	195	0.3	0.3	6	Fig 	Fig	180	9	3	0.59	raw	1.4	25	30	0	8.1	20	3	0	0.11	0.3
82039e9a-2571-4d28-8d87-0f9045bac414	0	0	53	49.1	380	11.2	297	1244	3.7	3.7	66	Goji berry, dried	Goji Berry, posušen	1	84	450	5.34	light	11.9	63	70	0.64	47.7	0	6	0	2.45	0.81
f7b7bbac-228a-44f2-b8e0-224f171defa2	0	0.03	9	18.8	70	2.7	83	349	0.1	0.3	0	Grape, black muscatel/muscat 	Grozdje, Black Muskatel/Muskat	160	8	8	0.65	raw	1.1	12	50	0	18.8	10	7	0	0.5	0.1
81df30d9-14bb-4936-8bec-290086d6e377	0	0.03	11	14	55	3.3	66	278	0.1	0.2	0	Grape, black sultana 	Grozdje, Black Sultana	150	9	3	0.56	raw	1.2	9	40	0	14	10	5	0	0.5	0.1
d15bd75c-1954-4c17-be16-5ecdadf6660b	0	0	10	15.6	0	0.8	65	273	0	0.36	0	Grape, green 	Grozdje, zeleno	220	8	0	0.13	raw	0.8	0	0	0	15.2	30	0	0	0.2	0.04
5b33c1ed-b930-4c92-b24b-4a161b3406d7	0	0.03	5	12.7	55	2.5	61	257	0.1	0.2	0	Grape, cornichon 	Grozdje, Cornichon	190	8	3	0.57	raw	1.3	9	40	0	12.7	10	7	0	0.5	0.1
3a0f3f58-e02e-4fdc-9099-20d0b421adf4	0	0.03	10	16.3	0	3.5	77	322	0.2	0.42	0	Grape, red globe 	Grozdje, Red Globe	270	8	5	0.12	raw	0.9	0	0	0	16.3	30	0	0	0.5	0.22
39f16d9f-b21a-408a-b27b-e1f65df3a894	0	0.03	12	14.4	45	3.5	67	281	0.1	0.2	0	Grape, waltham cross 	Grozdje, Waltham Cross	180	6	6	0.51	raw	0.8	8	30	0	14.4	10	7	0	0.2	0.1
b2b60037-54ce-43e0-8147-00c3cd361a9f	0	0	21	4.8	12	1.7	30	125	0.2	0.2	14	Grapefruit 	Grenivka	120	8	4	0.55	raw	0.9	2	30	0	4.8	30	36	0	0.15	0.1
802be0c9-6609-4c94-a3ea-c6b9e5e4e64e	0	0.36	28	9.1	54	3	55	230	0.7	0.26	32	Kiwifruit, green 	Kivi, zeleni	279	15	2	0.35	raw	1.2	9	50	0.17	8.8	0	85	0	1.08	0.1
e92bdfb3-1ec4-46f0-8b2c-c1bc89f861e1	0	0.05	18	11.1	45	1.8	58	244	0.5	0.21	39	Kiwifruit, gold 	Kivi, zlati	306	14	3	0.63	raw	1.2	8	50	0	10.9	20	110	0	0.98	0.11
672b73d2-2ab1-49f1-9ff8-0803e2bf9cd0	0	0.08	20	1.8	10	2.5	27	115	0.2	0.3	11	Lemon 	Limona	120	9	2	0.24	raw	0.6	2	20	0	1.8	40	48	0	0.15	0.1
a2038604-1d43-4456-a650-28aede1ffa79	0	0.17	134	0	30	10.6	29	121	0.3	0.8	13	Lemon peel 	Limonina lupina	160	15	6	0.53	raw	1.5	5	80	0.07	0	60	129	0	0.25	0.25
d22b3ed9-1574-4c13-9701-1f801e18fda6	0	0.04	22	1.2	30	4.1	29	122	0.2	0.3	8	Lime 	Apno	150	11	3	0.26	raw	0.8	5	20	0	1.2	30	47	0	0.22	0.1
956cf26c-55f0-4200-995b-56dce837504d	0	0.1	2	16.2	0	1.3	71	296	0.1	0.5	14	Lychee 	Lychee	150	7	1	0.66	raw	1.1	0	70	0	16.2	50	49	0	0.07	0.6
f92c8543-4149-44be-b16c-bd13a945893c	0	0.07	29	9.8	396	1.6	47	195	0	0	26	Mandarin 	Mandarin	180	13	3	0.07	raw	0.9	66	30	0	9.8	30	28	0	0.1	0.06
c3c7472f-afd6-45cf-9089-91ceb28cc769	0	0	7	13.5	74	0.6	57	240	0.1	0.36	0	Mandarin, canned in syrup	Mandarin, konzervirana v sirupu	72	6	5	0	processed	0.4	12	0	0	13.4	0	11	0	0	0.1
7db7be5b-03fa-47c2-9211-7083fcea473f	0	0.05	9	13.4	820	1.3	57	237	0	0.17	32	Mango 	Mango	153	10	0	0.09	raw	0.4	137	20	0	12.9	60	24	0	0.85	0.07
d647d6c6-f138-4ad9-85bd-b6910cf3fd13	0	0.04	8	14.8	591	1.2	62	259	0	0.16	15	Mango, pulped, canned	Mango, celuloze, v pločevinkah	132	9	0	0.09	processed	0.4	98	17	0	14.3	46	12	0	0.78	0.07
507b50e2-a9a2-48bb-92d9-83c01696f230	0	0.09	39	7.1	30	1	36	149	0.3	0.3	19	Melon, honey dew, white skin 	Melona, ​​medena rosa, bela koža	160	16	44	0.31	raw	0.7	5	20	0	7.1	20	20	0	0.02	0.2
06b8478a-a010-44c8-b91e-cef6cdb4ab8f	0	0.09	38	4.4	55	0.9	26	107	0.3	0.4	19	Melon, honey dew, yellow skin 	Melona, ​​medena rosa, rumena koža	150	9	40	0.32	raw	0.8	9	10	0	4.4	20	12	0	0.02	0.1
2f7d8bd6-8777-4456-aaf5-8b9e74aa9352	0	0.03	7	4.7	782	1	24	99	0.1	0.24	20	Melon, rockmelon 	Melon, Rockmelon	215	8	14	0.22	raw	0.5	130	20	0	4.7	20	34	0	0	0.12
6d520e85-ad2e-4aca-a6e8-a45562e708fd	0	0	5	7.3	290	0.4	32	133	0	0.1	0	Melon, watermelon 	Melona, ​​lubenica	122	12	3	0.08	raw	0.6	48	0	0	7	20	4	0	0	0.06
0bd65a89-c205-42e0-b84c-c14ae5827ab0	0	0.16	57	71.2	10	3.6	297	1241	0.6	1.58	7	Mixed dried fruit	Mešano suho sadje	733	32	18	0.57	light	2.4	2	11	0.08	68.4	119	1	0	0.18	0.31
6a1e79ba-d401-45a6-aeb6-0f25a59ed8fc	0	0	4	9	51	1.6	43	178	0	0	0	Nectarine, yellow 	Nektarina, rumena	240	9	0	0.1	raw	0.8	8	20	0	9	0	1	0	0.8	0.13
b2db3123-8a5c-4d34-99c1-c7059f5af713	0	0.07	23	8.2	47	2.4	42	175	0	0	62	Orange 	Oranžna	190	12	0	0.24	raw	1	8	20	0	8.2	70	52	0	0.1	0.07
0d81a4ca-df27-4515-b83e-85eca7ec56dc	0	0.07	23	8.2	36	2.4	42	174	0	0	62	Orange, navel 	Oranžna, popka	190	12	0	0.29	raw	1	6	20	0	8.2	70	52	0	0.1	0.07
aa57fe11-0daa-41c9-9873-c10f37bc0109	0	0.07	23	8.2	70	2.4	42	175	0	0	62	Orange, valencia 	Oranžna, Valencia	190	12	0	0.13	raw	1	12	20	0	8.2	70	52	0	0.1	0.07
e96bb284-1ce0-48aa-969c-3b5e4c2cfe64	0	0.1	10	5.7	750	13.9	73	304	0.3	0.6	14	Passionfruit 	Pasijonka	200	28	19	3.16	raw	3	125	140	0	5.7	30	18	0	0.02	0.8
e70fdc5a-3e83-4c2d-9f4d-d234c08c5a04	0	0.01	5	8.7	81	1.6	41	172	0	0	0	Peach	Breskev	210	8	0	0.11	raw	0.7	14	20	0	8.1	0	2	0	0.7	0.1
df03838b-f190-400d-99e7-321032f67c9a	0	0	8	15.2	22	3	66	278	0	0	44	Pear, green skin 	Hruška, zelena koža	130	7	0	0.04	raw	0.4	4	0	0	12.4	0	2	0	0.2	0.09
be1f72c2-297f-40ab-a51b-a0214e78ae4e	0	0	6	14.3	10	3.4	63	264	0	0.2	44	Pear, brown skin 	Hruška, rjava koža	100	7	2	0.12	raw	0.3	2	40	0	10.4	20	4	0	0.2	0.1
1238ceff-ebc6-42a8-88be-2865bd2a249d	0	0	6	10.6	8	1.7	46	194	0	0.33	42	Pear, canned in pear juice	Hruška, konzervirana v soku hruške	100	6	6	0.11	processed	0.5	1	13	0	8.7	0	1	0	0.18	0.23
2d4f67d8-241a-455e-9482-4299c99e6992	0	0.1	29	16.1	825	2.6	71	298	0.2	0.7	8	Persimmon 	Persimmon	130	10	6	0.68	raw	0.6	138	100	0	16.1	10	14	0	0.73	0.1
5e0f1a30-6d4e-4750-b17f-18e4accc00d4	0	0.02	9	7.9	0	0.9	36	152	0	0	11	Pineapple 	Ananas	160	15	0	0.16	raw	0.5	0	0	0	7.9	40	39	0	0.02	0.17
923f2ae9-64e1-45c2-a26d-a74f4c784c80	0	0.07	4	19.8	7	0.7	86	360	0.6	0.4	5	Pineapple, canned in syrup	Ananas, konzerviran v sirupu	80	11	6	0.08	processed	0.3	1	0	0.16	19.8	50	8	0	0.01	0
1b3a70d5-fba7-4531-b5df-403ad368d0a8	0	0.06	7	7.1	149	2	39	162	0.1	0.22	5	Plum 	Sliva	153	6	2	0.72	raw	0.6	25	45	0	6.5	35	5	0	0.82	0.1
df717d46-8340-4725-a9d9-bb6f9c6e0953	0	0.04	4	21.6	68	1	89	371	0	0.2	0	Plum, canned in syrup	Sliva, konzervirana v sirupu	96	4	3	0.06	processed	0.4	11	0	0	21.1	0	0	0	0.76	0.1
65af035d-e131-462c-9558-43488c417d99	0	0.08	14	13.5	65	6.4	79	329	0.2	0.5	38	Pomegranate 	Granatna jabolka	210	9	4	0.82	raw	1.9	11	20	0	13.5	10	14	0	0.6	0.4
f55e9249-140e-4ba2-817b-3e2b2890a79b	0	0.2	52	43.9	435	7.8	201	841	0.4	1.1	4	Prune (dried plum)	PRUNE (posušena sliva)	700	42	7	1.35	light	2.3	72	0	0	31	0	2	0	0.43	0.8
75b54a9d-6602-4bb4-ae0d-e0b945195a3d	0	0.04	8	11	50	5.2	58	242	0.2	0.1	3	Quince 	Quince	220	9	16	0.56	raw	0.5	8	20	0	11	10	39	0	0.2	0.5
49899eb4-8f3f-45c8-83f0-fb90274919a6	0	0	53	68.7	30	4.9	293	1226	0.5	1.16	4	Raisin	Rozin	680	35	10	0.43	light	3.2	5	40	0.2	66.9	280	0	0	0.2	0.35
a18f792b-2a49-46d6-a10d-9bf97d39181e	0	0.05	26	6.8	28	5.6	49	204	0.2	0.54	34	Raspberry 	Malina	156	20	1	0.53	raw	1.1	4	25	0	6.5	35	29	0	0.7	0.32
4232589d-d688-48a8-8dce-3aded68e6bbf	0	0.02	22	3.9	0	2.5	26	108	0.2	0.55	39	Strawberry 	Jagoda	185	8	0	0.25	raw	0.7	0	50	0	3.8	20	45	0	0.32	0.18
4cb77afc-dfed-486b-875e-c32b9bd6c0e9	0	0.02	21	3.9	0	2.5	26	108	0.2	0.55	37	Strawberry, purchased frozen	Jagoda, kupljena zamrznjena	166	8	0	0.25	light	0.7	0	50	0	3.8	19	32	0	0.3	0.18
d4789bc1-d813-4fdb-9f33-09c72a42651a	0	0.01	14	18.9	5	1.5	80	335	0.2	1.27	17	Strawberry, canned in syrup	Jagoda, konzervirana v sirupu	93	6	8	0.08	processed	0.4	1	0	0	18.7	0	12	0	0.09	0.04
7f505946-2671-4c62-a0bc-4141339e139b	0	0.04	26	8.1	100	1.5	43	180	0.2	0.2	24	Tangerine	Tangerina	150	9	2	0.38	raw	1	17	30	0	8.1	70	44	0	0.36	0.1
10181130-22a0-41c7-84ee-1dca4140a428	0	0.04	32	0.4	30	3.6	33	137	2.7	0	347	Lime, native, fruit	Apno, domač, sadje	83	10	4	0.21	raw	0.1	5	0	1.02	0.4	0	347	0	0.22	0
807d3572-fd75-4f41-8b2a-615fb81a7628	0	0.2	108	37	32	18.6	311	1300	2.1	3.7	423	Bean, broad, dried	Fižol, širok, posušen	1	140	21	5.96	raw	24.3	5	70	0.32	2.7	730	1	0	1.2	2.4
0334da9a-de71-4321-87de-22014abbe2d8	0	0.33	150	34.8	0	18.5	292	1220	2.2	6.4	364	Bean, haricot, dried	Fižol, haricot, posušen	1	160	4	7.6	raw	21.9	0	140	0.27	3.5	420	1	0	0.39	2.4
00f6dc18-6498-471c-8e36-e242fd819b69	0	0.75	55	40.6	0	17.7	310	1299	1.7	5.7	395	Bean, lima, dried	Fižol, lima, posušen	1	170	3	5.45	raw	21.4	0	120	0.39	3.7	420	0	0	0.76	2.7
7039c36e-5e21-44e8-af7d-2db072f3cb0f	0	0.51	95	35.6	7	21.5	299	1250	1.8	5.6	394	Bean, red kidney, dried	Fižol, rdeča ledvica, posušena	1	140	3	7.59	raw	22.5	1	150	0.27	3.4	390	0	0	0.27	3
547e7100-c025-40a1-b7f7-d5d90dcce0c2	0	0.1	12	14.7	40	9.1	134	561	0.4	2.4	40	Bean, red kidney 	Fižol, rdeča ledvica	490	18	3	4.61	raw	12.8	7	110	0	1.2	180	27	0	0	1
43605d52-5772-434d-92a7-6ff20e866fae	0.8	0.31	4	0	0	0	164	685	8.6	0.8	32	Pork, leg roast 	Svinjina, pečenka nog	357	22	48	9.95	raw	21.6	4	211	3.05	0	760	0	1.28	0.21	2.31
1f201177-43f6-4e52-a3ea-afda12ffd74c	0	0.1	36	14	0	6.5	105	441	0.6	2.1	40	Bean, red kidney, canned, drained	Fižol, rdeča ledvica, konzervirana, odcejena	270	30	320	1.95	processed	6.6	0	60	0.22	2.4	100	0	0	0.13	0.59
505ad95c-da17-425a-8526-100b5e0a4a29	0	2.6	159	38.5	65	20.8	328	1373	5.5	4.6	178	Chickpea, dried	Čičerika, posušena	396	134	11	4.57	raw	19.7	11	20	0.56	2.2	570	3	0	1.73	3.1
7b232ac3-a5db-4976-b58e-4ebefa6ecc14	0	0.14	45	13.3	23	5.7	113	474	2.1	1.8	63	Chickpea, canned, drained	Čičerika, konzervirana, odcejena	140	27	250	1.79	processed	6.3	4	0	0.21	0.6	0	0	0	1.87	1
eea67956-ad95-44f6-a9ac-970535b88a3b	0	0.4	55	38.8	23	15	323	1353	2	5.4	90	Lentil, French, hulled, dry	Leča, francoščina, olupljena, suha	670	91	2	5.06	raw	28.3	4	10	0.24	1	500	4	0	1	2.3
01eedb1d-6a38-4eb5-9e52-ad05b8844338	0	0.4	56	40.9	23	14.6	318	1330	1.7	5.6	80	Lentil, green, hulled, dry	Leča, zelena, olupljena, suha	670	95	13	4.7	raw	25.3	4	10	0.24	1.5	220	4	0	0.7	1.6
811e4f3e-5f25-4fb0-9140-2093583582c9	0	0.3	70	45.7	35	13.7	326	1364	1.9	9.1	70	Lentil, red, hulled, dry	Leča, rdeča, olupljena, suha	670	94	2	4.62	raw	23	6	20	0.24	2.7	440	2	0	1	1.6
a500279c-4f77-4725-a270-1aa1c31c07b8	0	0.08	42	50.5	93	10.1	341	1427	2	3.8	274	Pea, split, dried	Grah, razcepljen, posušen	930	95	7	5.84	raw	23	16	150	0.23	2.5	850	0	0	0.66	2.5
0535cc94-6551-454a-8969-17ab087365c3	0	0.3	56	40.9	250	16.8	310	1297	2.1	5.9	274	Pea, green, whole, dried	Grah, zelena, cela, posušena	990	121	5	6.62	raw	22	42	20	0.24	2.4	920	2	0	0.1	3.6
4dec1516-5259-41a3-87c4-1892105ff983	0	0.1	59	43.6	250	17.7	325	1361	2.3	4.8	274	Pea, yellow, whole, dried	Grah, rumena, cela, posušena	990	113	12	6.87	raw	23.3	42	20	0.32	2.6	940	2	0	0.2	2.5
dbacc188-81f8-48c0-82ea-8e138193d2b1	2.9	0.3	6	0	13	0	592	2478	61.4	1.3	10	Beef, all cuts, separable fat 	Govedina, vsi rezi, ločljive maščobe	160	9	25	3.66	raw	12.1	42	50	25.68	0	0	0	1	0.7	0.94
0ced7c91-5473-464f-a6a7-bbb39117f1c7	1.1	0.2	4	0	10	0	133	555	2.4	1.7	21	Beef, boneless dice or strips, lean 	Govedina, kocke brez kosti ali trakovi, vitki	340	24	38	6.79	raw	27.6	2	110	0.84	0	30	1	3.8	0.5	5.7
52e3bef5-1923-4445-a09e-eb4f5869c7da	1.2	0.21	4	0	10	0	140	587	3.3	1.69	21	Beef, boneless dice or strips	Govedina, kocke brez kosti ali trakovi	337	24	38	6.74	raw	27.3	2	109	1.24	0	30	1	3.75	0.5	5.62
5fa822a8-935b-4854-8685-e72f6df66b43	3	0.07	7	0	0	0	170	710	8.9	1.5	21	Beef, mince, regular fat 	Govedina, mleta, navadna maščoba	348	27	68	7.25	raw	22.4	0	28	3.83	0	46	0	3.2	0	2.27
3106564e-1c32-4a84-9406-488c5b96d291	0.9	0.14	4	0	10	0	136	568	6	2.04	20	Beef, steak, boneless, round	Govedina, zrezek, brez kosti, okrogel	355	25	48	5.73	raw	20.4	4	106	2.38	0	28	1	3.6	0.88	3.87
d849b485-8fd1-4e4d-9f7e-03a349f56109	1.4	0.2	4	0	10	0	130	546	5.6	2.06	20	Beef, rump steak	Govedina, zrezki	360	25	49	5.71	raw	20	4	107	2.16	0	28	1	3.67	0.89	3.95
f43c6433-9e76-48fd-b659-b0512c251ff2	1.2	0.19	5	0	10	0	137	572	5.5	2.1	20	Beef, steak, boneless rump or sirloin	Govedina, zrezek, brez kosti ali sira	363	26	52	7.81	raw	21.7	4	158	2.18	0	38	1	3.65	0.89	3.79
02629918-cb2a-4cd3-99c7-1db2954d68a5	0.7	0.16	6	0	10	0	179	751	10	2.09	20	Beef, steak, boneless, scotch fillet 	Govedina, zrezek, brez kosti, škotski file	353	25	53	9.46	raw	22.4	7	199	4.09	0	44	1	3.45	0.88	3.45
131c9e34-d2ac-47be-95f0-d67fc3af00f1	0.7	0.16	6	0	10	0	176	738	9.4	2.09	20	Beef, steak, with bone, T-bone	Govedina, zrezek, s kostjo, t-kost	352	25	53	9.51	raw	22.8	7	198	3.88	0	44	1	3.45	0.87	3.44
04757eca-c193-49e2-ac4c-556aa5158ad2	3	0.4	14	0	8	0	335	1403	29	0.58	0	Veal, all cuts, separable fat 	Telečka, vsi rezi, ločljiva maščoba	160	11	25	5.67	raw	19.4	33	300	13.99	0	30	0	1	1.1	1.7
6f07b7b1-e779-4f67-bb04-d55d5cb58e6f	1.6	0.79	6	0	0	0	121	508	2.2	1.18	0	Veal, boneless dice or strips 	Telečjo, kocke brez kosti ali trakovi	371	25	50	19.22	raw	25	0	202	0.85	0	59	1	3.75	0.51	4.11
a269c7de-8b19-4c4a-8664-1dd97e7dd79b	1.6	0.8	8	0	0	0	110	459	1.1	0.71	0	Veal, cutlet, with bone, lean 	Telečja, rezanka, s kostjo, vitko	330	23	45	19.38	raw	24.6	0	200	0.4	0	60	1	3.8	0.5	3.6
d783d261-3604-4d47-b742-8f280d222de3	1.7	0.78	8	0	0	0	122	512	2.7	0.7	0	Veal, cutlet, with bone	Telečja, rezalna, s kostjo	320	22	44	18.61	raw	24.3	2	206	1.17	0	58	1	3.64	0.53	3.49
67a3eb79-b1ad-4a47-89d9-454870305757	1.6	0.8	6	0	0	0	107	448	1.5	0.88	0	Veal, diced, lean 	Telečka, narezana, vitka	330	22	46	19.18	raw	23.1	0	200	0.52	0	60	1	3.8	0.5	3.6
0c565a5e-cb7f-4559-9653-187b62f71790	1.6	0.79	6	0	0	0	111	466	2	0.87	0	Veal, diced 	Telečka, narezana	327	22	46	18.93	raw	23	1	202	0.77	0	59	1	3.75	0.51	3.56
4694b087-51e6-4322-824e-ccc84b38cc0a	1.6	0.79	6	0	0	0	115	482	1.8	1.39	0	Veal, steak, boneless, leg	Telečka, zrezek, brez kosti, noga	363	31	56	19.18	raw	24.3	0	201	0.61	0	60	1	3.76	0.51	4.66
4ac05e5c-c782-46dd-8447-0cb6ea29910c	1.6	0.8	7	0	0	0	128	536	2	1.5	0	Veal, stir-fry strips, lean 	Telečje, mešalne trakove, vitko	420	28	56	19.74	raw	27.2	0	200	0.7	0	60	1	3.8	0.5	4.7
02e5432e-771b-4782-a84a-d09b2bd2a58c	1.6	0.79	7	0	0	0	132	551	2.5	1.48	0	Veal, stir-fry strips	Telečje trakove	416	28	55	19.5	raw	27.1	0	202	0.93	0	59	1	3.75	0.51	4.65
9b7bc364-bc66-4004-ac43-ab11f3bd153b	2.9	0.1	5	0	0	0	553	2315	57.6	0.41	4	Lamb, all cuts, separable fat 	Jagnjetino, vsi rezi, ločljive maščobe	91	6	22	3.61	raw	10.8	34	70	25.75	0	0	0	0.7	1.1	0.54
a6241caf-32c7-4ee0-80ad-0fabff6ca217	1	0.1	5	0	0	0	135	564	6.1	1.94	16	Lamb, boneless, fillet or loin	Jagnje, brez kosti, file ali ledja	354	24	67	8.44	raw	19.9	5	247	2.77	0	96	0	2.91	0.65	2.46
05fd5c3a-ce54-4405-9e1f-e7d7ea099a60	0.9	0.1	5	0	0	0	117	491	4	2	17	Lamb, boneless, fillet or loin, lean 	Jagnje, brez kosti, file ali ledica, vitko	365	24	69	8.63	raw	20.3	4	255	1.82	0	100	0	3	0.64	2.55
6611a505-0b80-42bd-8bfa-7ae3fbb8ea3a	1.5	0.12	6	0	0	0	180	753	10.6	2.78	15	Lamb, chop, with bone, chump	Jagnjetino, sesekljano, s kostjo, chump	319	27	60	9.11	raw	21.1	12	237	4.29	0	141	0	2.73	0.48	3.24
20afd6bd-b56f-4a98-ae72-fe85755bad61	2.8	0.25	6	0	0	0	214	894	16.6	1.79	14	Lamb, roasting piece, shoulder	Jagnjetino, pražen kos, rama	283	21	46	7.4	raw	16.5	14	201	7.09	0	77	0	1.32	0.64	4.36
75338be3-9934-4488-bd81-dc64f20144d4	1.7	0.26	9	0	0	0	232	971	17.9	1.32	14	Lamb, chop, with bone, forequarter	Jagnjetina, sesekljana, s kostjo, četverica	274	22	60	6.4	raw	18.2	14	215	7.57	0	99	0	2.46	0.64	4.26
b7574f92-fafa-4ef9-ab02-3ad728624adb	1.1	0.12	8	0	0	0	233	976	17.8	1.72	14	Lamb, cutlet or frenched cutlet, with bone	Jagnjetina, rezalnik ali francosko rezalnik, s kostjo	291	24	54	8.49	raw	18.6	14	217	7.56	0	93	0	2.48	0.64	2.36
ff4e21dd-1cc4-416d-9283-37f25a6aa83f	1.4	0.08	5	0	0	0	140	584	6.9	2.01	16	Lamb, fillet 	Jagnje, file	355	23	66	7.62	raw	19.3	10	259	3.13	0	85	0	2.88	0.75	2.77
c24f1de1-8f87-4ae1-b4f1-d401d3e9e5fc	0.9	0.1	6	0	0	0	144	604	7	1.98	16	Lamb, leg roast 	Jagnje, pečenka za noge	332	28	65	7.37	raw	20.4	10	200	2.74	0	121	0	2.84	0.45	3.85
7b27b9fe-b4ce-4835-b2fc-13e3fb367e11	0.6	0.19	8	0	0	0	160	671	5	1.9	17	Lamb, loin chop, lean 	Jagnjetino, lon chop, vitkost	330	30	71	11.56	raw	28.6	9	200	1.8	0	130	0	3	0.51	2.8
bdd6084e-96fc-45e9-8dee-475c4096578d	0.8	0.18	8	0	0	0	205	856	10.9	1.73	15	Lamb, loin chop 	Jagnjetino, lon chop	303	27	65	10.67	raw	26.6	11	185	4.49	0	115	0	2.74	0.57	2.54
88850b5f-2900-473a-99ef-e5799395a431	1.4	0.16	7	0	0	0	305	1276	24.4	1.35	12	Lamb, loin chop 	Jagnjetino, lon chop	242	21	53	8.64	raw	22	18	152	10.61	0	82	0	2.15	0.72	1.97
d3dede7f-93aa-4de6-9c2c-7c4512882187	1.7	0.56	13	0	0	0	144	602	6.9	1.77	17	Lamb, mince 	Jagnje, mleto	270	20	57	14.2	raw	20.4	12	190	2.32	0	90	0	3	0.74	3.72
6a2f107b-abc4-4edd-aeb6-7e0c403e9e49	0.9	0.1	4	0	0	0	158	662	8.2	2.08	16	Lamb, steak, boneless	Jagnje, zrezek, brez kosti	286	22	60	7.4	raw	21.2	10	201	3.11	0	121	0	2.85	0.44	3.21
32010e6a-4f0c-4981-aa3a-3310e9d65907	1	0.1	14	0	0	0	147	617	6.2	1.78	16	Lamb, with bone, shin	Jagnjetino, s kostjo, golenico	330	22	103	7.17	raw	22.9	3	208	2.73	0	46	0	2.82	0.36	5.3
82d2fea6-2966-4b6b-8fb4-8cb0508bed36	2.9	0.1	10	0	0	0	603	2522	64.4	0.77	0	Mutton, all cuts, separable fat 	Ovčje, vsi rezi, ločljiva maščoba	130	8	33	6.22	raw	8.2	64	70	28.61	0	0	0	0.7	0.7	0.99
fd4a117f-7c7f-4e49-af4c-c220c0f9d2c3	2.8	0.74	5	0	0	0	162	678	9	2.08	16	Mutton, boneless dice or strips, shoulder	Ovčje, kocke brez kosti ali trakovi, rama	268	20	59	10.78	raw	20.2	12	236	3.73	0	147	0	2.82	0.24	2.75
e2b068aa-1749-49f3-9701-ffa9d9b69af4	2.8	0.76	8	0	0	0	152	634	7.6	4.08	16	Mutton, roasting piece, with bone, leg	Ovčje, pražen kos, s kostjo, nogami	327	33	77	10.91	raw	20.8	11	239	3.01	0	150	0	2.86	0.23	4.66
2f69df5e-fb7e-4cdb-a622-6912d8b0dbaf	0.2	0.57	6	0	0	0	112	469	1.6	0.54	57	Pork, butterfly steak, lean 	Svinjina, metulj zrezek, vitko	420	26	46	14.18	raw	24.1	0	0	0.54	0	840	0	0.4	0.2	1.55
a95f8a18-af15-452c-8760-67c8a029f647	0.3	0.54	6	0	0	0	154	643	7	0.54	53	Pork, butterfly steak 	Svinjina, metulj	398	25	44	13.45	raw	22.7	2	0	2.43	0	790	0	0.81	0.21	1.46
87a5c213-1c8a-4214-ba98-372402ead120	0.5	0.44	6	0	0	0	120	502	3.1	0.84	4	Pork, diced 	Svinjina, narezana	465	27	59	13.73	raw	22.8	0	270	1.02	0	740	0	0.4	0.21	2.4
223e189b-f694-4c2f-80f2-8f37b14675b9	0.3	0.73	4	0	0	0	103	433	1.1	0.86	32	Pork, fillet, lean 	Svinjina, file, vitka	390	26	42	14.29	raw	23.1	0	0	0.38	0	2	0	0.4	0.31	1.75
83100bb1-6b7e-4a7b-8e24-7a3d44975dfc	0.5	0.56	18	0	0	0	188	785	13.2	1.14	37	Pork, forequarter chop	Svinjina, četrt	336	19	68	7.33	raw	17.5	10	268	5	0	649	0	1.41	0.06	2.58
a0509376-bff0-4d80-b5ea-32511f27c308	0.3	0.56	14	0	0	0	182	762	12.5	1.06	37	Pork, forequarter shoulder roast	Svinjina, pečenka na ramenu	328	19	69	7.02	raw	17.6	10	244	4.76	0	585	0	1.41	0.06	2.34
5db2a195-d95e-4a08-aae5-0eed038554b5	0.9	0.3	3	0	0	0	622	2603	66.4	0.6	4	Pork, leg steak (rump), separable fat 	Svinjina, zrezek z nogami (rump), ločljiva maščoba	140	8	23	5.81	raw	8.6	26	70	23.86	0	1	0	5.5	0.51	0.46
24f6031a-9d7c-4620-aa93-bc1888b8bb03	0.4	0.5	5	0	0	0	201	843	13.1	0.53	49	Pork, loin cutlet 	Svinjina, ledilna rezalnica	373	23	42	12.59	raw	21	5	0	4.6	0	731	0	1.28	0.2	1.37
e7765a82-2366-450c-8bdc-de889735874e	1.1	0.05	4	0	0	0	703	2941	77.1	0.16	11	Pork, loin roast, separable fat 	Svinjina, pečenka, ločljiva maščoba	69	4	27	3.43	raw	5.2	28	100	29.02	0	190	0	5.5	0.36	0.22
3c2603d8-4521-4df1-a53d-d13b3f475884	0.3	0.54	6	0	0	0	147	615	6.1	0.54	54	Pork, medallion or loin steak	Svinjina, medaljona ali zrezka	402	25	44	13.56	raw	22.9	2	0	2.12	0	798	0	0.74	0.18	1.48
bcbb3445-bc26-4e91-8170-9e6cc2dd4e23	0.5	0.41	8	0	0	0	179	748	10.6	0.93	9	Pork, mince	Svinjina, mleta	330	20	58	11.15	raw	20.9	5	160	4	0	720	0	0.4	0	2.2
15addc79-bd68-4bf2-a93c-f619b24c7d04	0.2	0.68	4	0	0	0	99	416	1.1	0.88	41	Pork, round steak, lean 	Svinjina, okrogel zrezek, vitko	385	25	48	14.09	raw	22.1	0	0	0.35	0	1	0	0.4	0.15	2
dd2f7c7e-f515-45c2-bc9d-1c5cccbb2822	0.2	0.71	5	0	0	0	121	508	2.1	0.84	35	Pork, rump steak, lean 	Svinjina, zrezek, vitko	365	25	50	16.52	raw	25.3	0	70	0.7	0	1	0	0.4	0.15	1.7
a6f52c7d-c5f7-4ef4-ac8c-72b61ef7dac9	0.2	0.7	5	0	0	0	136	568	4	0.83	34	Pork, rump steak	Svinjina, zrezek	358	24	49	16.21	raw	24.8	1	70	1.37	0	1	0	0.55	0.16	1.66
6e8c1d2c-1b96-4aef-8e0e-33e05df4485b	0.5	0.25	12	0	0	0	286	1198	24	0.4	25	Pork, spare ribs	Svinjina, rezervna rebra	320	19	43	8.7	raw	18.1	6	133	9.42	0	563	0	2.08	0.23	0.99
aa49aba7-bfae-41f0-b5f0-1bdc6376c00f	0.4	0.51	4	0	0	0	111	466	2.3	0.75	20	Pork, strips	Svinjina, trakovi	385	26	46	14.25	raw	22.4	0	240	0.75	0	870	0	0.4	0.17	2.05
be59fa12-a875-48c9-8994-2fe4ce4fd89d	0.1	0.51	4	0	0	0	98	412	0.8	0.26	0	Chicken, breast, lean flesh 	Piščanec, prsi, vitko meso	390	31	48	14.23	raw	22.5	4	40	0.25	0	120	0	3.7	0.5	0.52
fe57f6fd-b069-4581-bfb7-7b2dca1903d4	0.2	0.44	6	0	0	0	159	666	8.7	0.34	0	Chicken, breast	Piščančje prsi	338	27	46	12.42	raw	20.2	24	51	2.66	0	98	0	4.27	0.52	0.53
64673637-024c-4aaa-8f75-48cbf43f7d06	0.7	0.3	10	0	0	0	154	645	9.3	0.61	0	Chicken, drumstick	Piščanca, bobna	240	20	67	8.63	raw	17.6	29	126	2.8	0	121	0	4.14	0.37	1.56
2372eea4-428c-49a5-985c-acd76638f8d0	0.3	0.33	4	0	0	0	97	404	1.1	0.39	0	Chicken, mince 	Piščanec, mleto	360	28	49	12.46	raw	21.4	5	70	0.31	0	160	0	3.7	0.6	0.69
7210f558-5240-437d-b245-8afeb1bfaf11	0.7	0.11	9	0	0	0	572	2392	62.3	0.7	0	Chicken,	Piščanec,	63	5	22	3.1	raw	5.1	115	100	18.96	0	0	0	6.9	0.38	0.3
a7e12e5c-8dfd-4f87-9fcd-48cfb339a0de	0.5	0.2	7	0	0	0	215	898	16.9	0.6	22	Chicken, thigh	Piščanec, stegno	250	19	54	6.91	raw	16	44	114	5.12	0	83	0	4.69	1.15	1.12
c4601c45-4b9d-4178-bb87-2c7ffb25f252	0.7	0.35	13	0	0	0	219	917	17.4	0.52	0	Chicken, wing	Piščančje krilo	184	16	56	9.15	raw	16.1	67	118	5.32	0	35	0	6.37	0.49	0.93
9d7247ed-9d01-481a-b4fe-0397d9400b1a	0.6	0.29	7	0	0	0	117	490	3.3	0.4	0	Turkey, breast	Turčija, prsi	370	25	240	12.55	raw	21.6	21	50	0.89	0	70	0	3.7	0.34	1.3
da34670a-d339-4575-b4aa-e23cbdce69be	1.5	0.11	10	0	0	0	187	782	12.6	1.3	0	Turkey, hindquarter	Turčija, zadnja zadeva	293	19	237	8.07	raw	18.6	62	143	4.3	0	92	2	2.12	0.56	3.14
480bcb59-148c-4211-bf63-9befcf825d3d	2	0.21	4	0	0	0	92	383	0.6	3.2	0	Duck, breast	Raca, prsi	380	26	60	9.69	raw	21.2	0	280	0.19	0	370	0	6	0.9	1.1
5b5d0620-bccf-4020-a9d1-d2b707b3bb9c	0.5	0.05	5	0	0	0	379	1585	36.9	1.01	0	Duck	Raca	153	10	58	5.3	raw	13	60	112	11.31	0	156	0	5.57	0.26	1.09
244c6b4a-6221-4d7f-9fa5-5f320f865ac5	0.6	0.08	4	0.2	0	0	313	1310	28.2	0.43	2	Bacon, middle rasher 	Slanina, srednji rasher	277	15	1	7.39	processed	15.4	8	109	10.95	0.2	525	0	0	0.27	0.79
8823dacb-e2f4-4883-b8b5-9b478260c122	0.2	0.12	8	4.4	0	0.2	115	483	1.2	0.39	57	Chicken, processed luncheon meat, low or reduced fat	Piščanec, predelano kosilo meso, nizka ali zmanjšana maščoba	350	22	760	10.6	processed	20	10	65	0.39	0.2	15	0	3.9	0	0.46
7197d7a1-efc3-4039-be22-5ffd3b72960f	0.6	0.08	9	2	0	1.8	112	467	2.5	0.62	23	Ham, leg, lean	Šunka, noga, vitka	335	22	1	7.17	processed	17	0	65	0.85	0.8	386	0	0	0.05	1.02
bac8b90c-524d-4946-a563-4316a5a5afed	0.4	0.22	10	0.3	0	0	293	1224	18.8	0.84	30	Prosciutto	Pršut	410	22	1	12.56	processed	30.8	0	240	6.68	0.3	880	0	0	0	2.3
e84d5aa7-a5ce-44b1-92a4-3099eae5bab4	1.9	0.5	20	1.2	45	0	444	1858	40.2	1.5	0	Salami, danish	Salami, danski	265	19	1	7.41	processed	19.6	8	180	13.75	0.8	180	0	0	0.23	3.16
9e380559-4e4b-4015-ac22-569ee2566206	1.9	0.5	22	0.9	32	0	426	1783	37.4	2.4	0	Salami, hungarian	Salami, madžarski	265	21	1	8.79	processed	21.6	5	180	12.08	0	300	0	0	0.23	3.46
897c28ff-26e7-42d0-8ac0-0f85d62a7410	1.9	0.5	18	0.8	42	0	428	1791	37.5	2.7	0	Salami, mettwurst	Salami, Mettwurst	245	18	1	8.34	processed	21.9	7	180	12.47	0.5	260	0	0	0.23	3.56
ada92da7-0d3a-4584-8e81-3e55200f795a	1.9	0.5	28	2.2	44	0	426	1781	36.9	2.1	0	Salami, milano	Salami, Milano	280	24	1	8.81	processed	21.7	7	210	11.57	1	120	0	0	0.23	4.02
4bac6a80-d841-4337-b9f0-75b8af45cca8	1.9	0.5	22	1.6	98	0	424	1774	36.1	2.8	0	Salami, pepperoni	Salami, feferoni	290	27	1	8.47	processed	23.5	16	210	13.38	0.8	360	0	0	0.23	4.02
0aebb1d0-50ac-4518-97d7-eac0f63b384d	0.5	0.11	21	0.4	0	0.5	337	1412	27.4	1.7	0	Salami, all varieties 	Salami, vse sorte	360	23	1	8.5	processed	21.9	0	190	8.93	0	500	0	0	0	2.9
0547e1eb-b50c-463e-8233-e1d1aa753e1b	2.3	0.1	12	2.9	223	0	236	987	18.7	5.8	0	Sausage, beef 	Klobasa, govedina	240	11	740	5.91	processed	14.5	76	80	8.67	0.4	23	0	2	0.37	2.6
d7dc5a02-bfd9-47ce-8143-d09a637c39f1	0	0.02	7	3.3	0	8.1	334	1396	32.8	0.4	26	Coco fresh, mature fruit, flesh	Coco sveže, zrelo sadje, meso	270	15	5	1.18	raw	3.8	0	10	28.95	2.9	10	2	0	0	0.48
eeea0f77-47a8-44c6-acfa-f81f0fdc27c7	0	0.05	12	7.3	0	15.4	664	2777	65.4	1.7	9	Coco grated & desiccated	Coco naribano in izsušeno	574	72	15	2.36	raw	6.9	0	0	57.72	6.6	2	0	0	1.1	1.17
353f9126-afe9-4565-9439-b4a0405ca0da	0	0	2	1.4	0	0	217	908	23.2	0.51	0	Coco cream, regular fat	COCO krema, navadna maščoba	130	20	16	0.19	light	1.6	0	0	18.82	1.4	0	0	0	0.7	0.26
e71a3b96-d6df-4dd8-9cec-8d7b6303e345	0	0	3	1.7	6	0	148	620	15.4	0.66	0	Coco milk, canned, regular fat	Coco Milk, konzervirana, redna maščoba	160	26	26	0.22	light	1.4	1	0	12.49	1.7	0	0	0	0.2	0.31
12d31bd3-7bd3-4bb7-8bc4-874c74bbbad4	0	0.03	5	0.9	6	0	69	288	7.1	0.2	0	Coco milk, canned, reduced fat	Kokoško mleko, konzervirano, zmanjšano maščobo	61	6	15	0.19	light	0.6	1	0	6.39	0.9	0	0	0	0.8	0.22
f7e23e63-b7d6-4899-b20c-5976e8da376f	0	0.09	265	5.4	0	10.9	570	2385	50.5	3.75	37	 almond	 Mandelj	796	266	0	8.18	raw	19.7	0	70	3.81	5.2	190	0	0	31.42	3.63
58b40225-d056-47e5-ac7e-f073cee06dd1	0	0.14	220	5.1	6	8.9	614	2568	55.8	3.1	43	 almond meal	Mandljeva moka	640	260	5	7.84	light	20.5	1	900	3.36	3.9	140	0	0	22.62	3.4
a73fbafa-7f4f-4b11-9b7b-47e25f6eeb15	0	0.27	150	2.4	10	8.5	690	2886	68.5	2.2	22	 brazil nut	 Brazilski oreščki	560	350	2	3.83	raw	14.4	2	430	14.8	2.1	600	0	0	5.3	4.1
7b67b894-717f-4f3a-bfc1-93f79585eca7	0	0.35	34	22.9	6	5.9	607	2540	49.2	5	25	 cashew 	 Indijski oreščki	550	250	11	7.31	raw	17	1	190	8.37	5.5	640	0	0	0.73	5.5
2dffb5ce-dedc-4f6b-99ef-4c2e7524b382	0	0.35	18	32.1	0	14.9	174	727	0.2	0.7	58	 chestnut 	 Kostanj, nesoljenega	468	30	1	1.74	raw	3.4	0	16	0.04	3.3	144	40	0	0.5	0.4
ce9fd338-70f7-40ae-8da3-3aba358b9c3f	0	0.56	86	5.1	16	10.4	643	2689	61.4	3.2	113	 hazelnut 	 lešniki, nesoljeni	680	160	3	5.61	raw	14.8	3	170	2.7	4.4	390	0	0	16	2.2
ed3c999a-c044-4900-9b4a-9d9ec5aa08cb	0	0.28	48	4.5	0	6.4	721	3018	74	1.8	11	 macadamia 	 Macadamia, nesoljena	410	95	1	4.12	raw	9.2	0	100	10.04	4.5	280	1	0	1.4	1.2
c44bcb94-e122-4f21-8f26-4ec597afb2f3	0	0.65	54	8.9	4	8.2	568	2376	47.1	2.3	240	 peanut 	 Arašid, nesoljenega	540	160	1	19.77	raw	24.7	1	120	8.19	5.1	790	0	0	9.5	3
19f34fd7-dc73-4684-b1c6-552b6beb7068	0	0.26	51	4.9	25	8.4	711	2973	71.9	2.4	22	 pecan 	 pecan, nesoljeni	500	110	3	3.56	raw	9.8	4	180	4.54	4.3	420	1	0	5.6	3.9
e4dba788-ea89-4f67-9ba9-6dca4e3e8c0a	0	0.02	11	4.5	10	5.1	699	2925	70	4.1	34	 pine 	 bor, nesoljen	600	230	3	7.3	raw	13	2	190	4.22	3.4	570	0	0	12.94	5.3
6b0cee69-5bda-4536-8475-4c191484d70b	0	1.5	90	15.8	130	9	608	2542	50.6	3.9	51	 pistachio 	 Pistacija, nesoljena	950	100	7	5.67	raw	19.7	22	290	5.8	5.9	580	0	0	4.1	2.3
711fbedc-21df-426e-b025-dcbd06f0853d	0	0.43	89	3	21	6.4	694	2904	69.2	2.5	70	 walnut 	 oreh, nesoljen	440	150	3	5.04	raw	14.4	4	180	4.43	2.7	330	0	0	2.6	2.53
42e05877-bfde-400a-9fcd-9606ad8b55f9	0	0.12	530	3.1	0	33.2	436	1825	29.8	13	111	Seed, chia, dried	Seme, chia, posušeno	720	380	0	12.41	raw	23.8	0	40	2.54	0.7	240	0	0	1.06	5.4
9624e0d8-169b-4ce0-8f93-70e2e6de70b5	0	0.06	180	2.8	0	32.9	450	1883	32.6	5.5	41	Seed, linseed or flaxseed	Seme, laneno ali laneno seme	630	330	60	6.81	raw	21.6	0	30	3.33	1.5	340	0	0	1.48	3.5
b5932156-006a-40b5-90b7-56d0a981ca56	0	0.25	1	8.6	0	19.5	512	2143	41.6	9.76	82	Seed, poppy	Seme, mak	719	347	26	4.07	raw	18	0	100	4.59	3	854	1	0	1.77	7.9
c8b8fe3e-b28c-4899-b96a-278cdb373f7f	0	0	40	2.1	10	4.6	538	2249	45	8.5	34	Seed, pumpkin, hulled & dried	Seme, buča, olupljena in posušena	700	530	1	11.46	raw	30.2	2	60	7.31	1.3	170	0	0	4.58	6.5
71e35720-aecb-4ed9-8d1e-c2acece492aa	0	0.56	99	3.1	4	13	565	2362	48.3	4.85	126	Seed, sunflower	Seme, sončnice	610	370	0	16.56	raw	24.7	0	160	4.39	2.1	875	0	0	41.21	5.44
025120c6-eb9b-4d48-89be-90d6e27b57ed	0	0.2	330	1	7	13.5	649	2717	60.7	5.1	99	Tahini, sesame seed pulp	Tahini, sezamova semenska kaša	190	320	79	12.81	light	20.4	1	250	7.54	0.7	950	0	0	211	5.53
c0d493c1-1e46-4366-84e0-c8939573d8b8	2	0.44	23	0	0	0	125	521	5.1	0.4	0	Bream, fillet 	Bream, file	347	31	84	6.97	raw	19.6	0	130	1.76	0	150	3	2.1	0.95	0.6
222c139c-5b3b-4247-89f1-cbedee33b013	2.4	0.4	11	0	0	0	134	561	6.3	0.44	1	Mackerel 	Skuša	446	33	59	5.97	raw	19.3	39	170	2.03	0	130	2	2.1	0.69	0.49
ae1792f5-dc46-431e-8dc5-53d9bf87346f	4.9	0.39	53	0	0	0	131	549	6	0.4	0	Mullet, yelloweye, fillet 	Mullet, Yellumeyeye, fileta	309	28	131	8.37	raw	19.2	12	100	2.67	0	0	0	2.1	0.58	1.1
7d14d53d-4458-4064-bacd-a96e0e14ef6a	0.2	0.16	26	0	0	0	104	435	2.3	0.4	0	Mulloway, flesh 	Mulloway, meso	332	25	54	7.42	raw	20.6	0	120	0.78	0	40	1	2.1	0.47	0.4
912036ea-641f-4d87-b975-5fc7b3986ba1	2.2	0.55	48	0	46	0	231	965	16.7	0.31	0	Salmon, Atlantic, fillet 	Losos, atlantski, file	366	28	32	6.09	raw	20.5	10	100	3.77	0	90	0	6	2.49	0.42
4ebe4d7c-320d-4a99-9e53-1d6e42ccb9a3	2	0.55	54	0	44	0	258	1078	18.6	0.35	0	Salmon, Atlantic, fillet, grilled, no added fat	Losos, atlantski, file, na žaru, brez dodane maščobe	409	32	36	6.81	raw	22.9	9	112	4.21	0	96	0	5.36	2.78	0.47
f4b89409-4f36-44dd-9690-afe00d6bf170	0.7	0.54	9	0	0	0	275	1149	22.8	0.23	0	Salmon, Pacific King, fillet, skinless 	Losos, pacifiški kralj, file, brez kože	380	27	30	9.75	raw	18.1	40	120	5.65	0	170	2	6	4.18	0.42
2e4f86fa-62d0-4b85-9900-499e07c8f9ed	0.6	0.54	10	0	0	0	307	1284	25.4	0.26	0	Salmon, Pacific King, fillet, skinless, grilled, no added fat	Losos, pacifiški kralj, file, brez kože, na žaru, brez dodane maščobe	424	30	33	10.89	raw	20.2	38	134	6.32	0	180	2	5.36	4.67	0.47
19851009-23fc-48bb-b943-20e7ba737863	8.3	0.31	725	0	0	0	106	442	2.9	3.95	7	Sardine, Australian, whole 	Sardine, avstralska, v celoti	352	46	665	5.18	raw	19.7	106	340	1.17	0	19	0	6	0.46	3.1
8eb65d9c-dda4-455a-a3f1-7e4fef6e8fc7	7	0.2	742	0	0	0	90	378	1.6	5.18	9	Sprat, blue, wild caught, flesh, skin & bones 	Sprat, modri, divji ujeti, meso, kožo in kosti	342	46	675	8.25	raw	18.7	91	150	0.5	0	80	0	6	0.38	2.8
e50a2007-a798-4b41-867f-0b9d5f2dcb09	2	0.44	73	0	0	0	288	1205	24.6	0.35	0	Trout, ocean, aquacultured, fillet, without skin 	Postrv, ocean, ribogojstvo, file, brez kože	291	32	247	6.61	raw	17.4	8	130	6.24	0	150	1	2.1	2.63	0.82
9535e0b7-e470-442d-b985-411b11824962	2.2	0.55	48	0	0	0	154	645	8.4	0.31	11	Trout, rainbow, aquacultured 	Postrv, mavrica, ribogojstvo	366	28	70	5.96	raw	19.6	0	100	2.51	0	90	0	2.1	2.47	0.79
ad724bee-f528-4ac9-9b7d-d45b44c2350f	0.5	0.44	16	0	0	0	104	435	1	0.73	2	Tuna, yellowfin, flesh 	Tuna, rumeno, meso	444	50	37	14.27	raw	23.4	18	50	0.24	0	430	1	2.1	0.5	0.52
3438e027-bf37-4847-9790-e8503ee570b1	2.8	0.1	26	3.4	0	0	84	351	0.8	0.76	12	Scallop 	Lopatica	360	42	150	4.04	raw	15.6	12	160	0.14	0.8	0	0	2.1	0.71	1.2
d04b9f88-662a-4ba9-a0a8-9acabf870eac	1.3	0.06	11	0	0	0	78	328	1.2	1.3	5	Squid or calamari 	Lignji ali kalamari	156	36	284	3.72	raw	16.7	1	40	0.31	0	90	1	2.1	1.2	1.3
b6d92eaa-acfd-4717-a031-b536b2d90196	0.9	0.2	167	0	0	0	182	762	8.9	2.5	13	Anchovy, canned in oil, drained	Sardona, konzervirana v olju, odcejena	180	69	5	12.75	processed	25.4	4	400	1.97	0	20	0	6.36	3.33	2.9
d49b95a7-0ba4-40c8-8243-3e7bc5c75bcc	0.3	0.09	20	0	0	0	85	356	1	0.2	0	Cod, smoked 	Trska, prekajena	300	27	655	4.68	processed	18.8	7	200	0.25	0	80	2	2.1	0.41	0.3
91cf3791-4fce-4381-a9b6-2d8e5f169312	0.4	0.01	13	16.6	0	1.1	221	924	11.6	0.45	69	Fish finger, crumbed, purchased frozen 	Ribji prst, zdrobljen, kupljen zamrznjen	190	22	300	2.8	processed	12.1	15	60	1.56	1.5	70	0	0.6	0.45	0.4
d774b19a-0673-4c24-b46f-4187c14cc7b8	0.4	0.01	15	18.9	0	1.2	251	1050	13.2	0.51	74	Fish finger, crumbed, purchased frozen, grilled, no added fat	Rib	216	25	341	3.18	processed	13.8	15	65	1.78	1.7	72	0	0.61	0.51	0.45
22d6e921-0078-428c-9b93-b6364db272b4	1.3	0.18	191	0	0	0	138	579	6.2	1.14	13	Salmon, pink, canned in brine, drained	Losos, roza, konzerviran v slanici, odcejen	286	30	382	9.17	processed	20.7	16	235	1.4	0	20	0	10.6	0.93	1.05
8fa32b68-9d47-4593-b038-e448434e265e	0.7	0.2	130	0	0	0	147	617	5.5	0.46	95	Salmon, red, canned in brine, drained	Losos, rdeč, konzerviran v slanici, odcejen	270	26	350	10.56	processed	24.4	27	40	1.14	0	0	0	10.6	0.93	0.63
c31f348e-70a0-4ccf-9db5-0759a872c611	1.5	0.46	8	0	0	0	188	787	10.1	0.31	0	Salmon, smoked, sliced	Losos, prekajen, narezan	420	34	1	15.42	processed	24.3	0	90	1.74	0	420	0	4.2	0.6	0.38
f5e22e0a-3dab-4517-a98e-8c81db9b1c2b	1.1	0.14	5	0	0	0	129	540	2.6	1.16	26	Tuna, canned in brine, drained	Tuna, konzervirana v slanici, odcejena	205	24	200	18.18	processed	26.1	0	20	1.03	0	0	0	2.7	0	0.76
14ad1aea-7770-48fb-9f96-fc33bb64ceb7	1.1	0.14	13	3.3	85	0.3	138	577	5.8	1.2	26	Tuna, flavoured, canned in oil, drained	Tuna, aromatizirana, konzervirana v olju, odcejena	250	27	430	14.72	processed	18	14	20	1.12	2.5	0	0	3.1	1.93	0.53
0e1878c5-d4bc-44c5-b6e7-dc73724add20	0	0.21	26	59.2	366	7	379	1586	11.5	2.1	20	Bar, muesli, plain or with dried fruit	Bar, muesli, navaden ali s suhim sadjem	335	72	144	3.38	light	8.3	61	60	3.2	15.9	130	0	0	0.5	0.73
d0a9f4c7-d5d3-45f5-80e5-37a62c6bb97b	0	0.27	100	45	9	9.9	332	1389	11.7	5.9	49	Ball, snack, date based	Žoga, prigrizek, datum na podlagi	970	160	35	2.91	light	8.8	2	90	4.26	41	70	0	0	1.41	2.2
634f94b6-8e5b-4517-bc11-d0b7e0e6e65d	0	0.21	29	54.2	263	6.8	445	1861	19.9	1.85	27	Bar, muesli, with nuts	Bar, muesli, z oreščki	318	62	162	3.46	light	9.4	44	60	5.3	14	125	0	0	1.12	0.92
a0295e70-ef54-41fa-8c70-658bb9699b55	0	0.1	99	31	0	6.8	517	2163	34.6	2.3	58	Bar, snack, with >55% nuts	Bar, prigrizek, z> 55% oreščki	580	180	39	10.09	light	18.8	0	80	4.86	15.9	170	0	0	10.17	2.3
7fecf2e9-7000-4ea8-80f9-fc806cb7a8d1	0	0.11	88	20.8	0	4.8	474	1982	31.9	3.3	74	Bar, snack, with >35% nuts, added protein	Bar, prigrizek, z> 35% oreščki, dodan beljakovine	450	110	270	5.9	light	25	52	40	6.85	15	100	0	0	6.49	1.9
078e8c97-7da3-434d-bdf3-1d02e7c4c46c	0	0.09	37	64.1	214	6.4	395	1653	11.5	1.6	20	Bar, muesli, plain or with dried fruit, chocolate-coated	Bar, muesli, navaden ali s suhim sadjem, čokoladno prevleko	272	68	70	2.63	light	6.1	38	220	6.65	20.1	210	0	0	0.6	1.18
77f06dc5-f8be-49b4-b3ae-d38d522bf93f	0	0.21	97	59.5	292	6.4	400	1675	14	0.9	73	Bar, muesli, plain or with dried fruit, yoghurt-coated	Bar, muesli, navaden ali s suhim sadjem, jogurt prevlečen	359	62	74	2.95	light	6.6	50	60	8.85	23.1	150	2	0	0.5	0.13
9f6cb724-94e3-43dd-ba4f-8f7253a2b8c7	0.1	0.99	74	65.7	33	4.3	323	1350	3.3	0.74	57	Soup, broth style, with meat, instant dry mix	Juha, juha, z mesom, takojšnja suha mešanica	16	12	5	0.85	processed	4.8	8	50	1.61	5.7	50	0	0	0.86	0.3
7ebe0fa3-ebf0-480a-87cc-eb51dce1d781	0.1	0.14	43	64.1	257	2.2	363	1520	6.3	1.5	73	Soup, broth style, with meat & noodles, instant dry mix	Juha, juha, z mesom in rezanci, instant suha mešanica	98	32	4	2.51	processed	10.8	60	55	1.12	6	60	0	0	0.7	0.7
9ca7a2a5-f9d2-4069-8903-c72476c53b6f	0	0.01	5	3.4	0	0.3	19	79	0.2	0.1	1	Soup, chicken & noodle, cup of soup, prepared from instant dry mix with water	Juha, piščanec in rezanci, skodelica juhe, pripravljena iz instant suhe mešanice z vodo	11	4	440	0.12	processed	0.7	0	0	0.07	0.4	50	0	0	0.02	0
65810f3c-c2cc-4501-886f-0cabd8e9e000	0.1	0.31	42	59.1	342	6.5	389	1628	13.2	0.83	110	Soup, cream variety, instant dry mix	Juha, kremna raznolikost, instant suha mešanica	339	14	4	1.17	processed	5.3	59	170	5.89	8.1	80	0	0	2.15	0.38
fb374b36-e130-452d-bfb5-27af8241e7dd	0.2	0.62	108	58.3	672	3.3	287	1201	2.1	1.1	110	Soup, vegetable, instant dry mix	Juha, zelenjava, takojšnja suha mešanica	22	36	7	1.18	processed	6.7	136	100	0.91	10.3	170	0	0	0.33	0.57
e02472da-1b06-4f9d-b444-ef903b5f4b12	0.2	0.18	42	65.5	214	3.9	362	1514	6.3	1.9	60	Soup, vegetable & noodle, instant dry mix	Juha, zelenjava in rezanci, instant suha mešanica	15	41	2	1.54	processed	8.7	38	0	2.59	16	200	0	0	2.46	0.75
34adbe6d-b8a9-43a9-b81d-58522203acba	0	0.01	50	52.6	18	4.7	427	1785	22.4	0.88	5	Bar, cherry & coconut centre, dark chocolate-coated	Bar, češnje in kokosovo središče, obloženo s temno čokolado	270	58	46	1.02	light	4.4	18	80	16.31	48.6	0	0	0	0.53	0.83
ec1c4d79-373a-49cb-8784-964156768321	0.1	0.02	87	52.1	10	7.4	425	1778	22.4	1.8	17	Bar, coconut cream centre, milk chocolate-coated	Bar, kokosovi kremni center, prevlečen z mlečno čokolado	310	41	130	1.22	light	4.5	39	190	17.39	44.3	0	0	0	0.21	0.9
f2fc4902-8821-4890-8663-2e890b35591a	0.1	0.03	76	70	0	0.3	424	1772	16.2	0.9	4	Bar, honeycomb centre, milk chocolate-coated	Bar, center satja, prevlečen z mlečno čokolado	340	31	260	4.45	light	2.6	7	400	14.91	64.2	60	0	0	0.1	0.3
84353bca-6471-4195-b936-4ff61c589124	0.1	0.03	160	62.6	19	1.6	409	1712	17.2	1.6	15	Bar, nougat & caramel centre, milk chocolate-coated	Bar, Nougat & Caramel Center, prevlečen z mlečno čokolado	290	34	190	0.93	light	5.2	66	370	10.13	55.3	60	0	0	1.2	0.8
25f660bc-0046-4ea6-8059-abbe2d304f9e	0	0.02	78	57	0	4.6	511	2140	30.3	2	36	Chocolate, compound, cooking	Čokolada, spojina, kuhanje	650	87	45	1.32	processed	4	0	160	27.72	55.3	0	0	0	0.21	1.4
b5fbee29-eac0-4e3c-b473-791e7fc96063	0.1	0.04	52	62.6	11	1.2	526	2202	30.1	4.4	13	Chocolate, dark, high cocoa solids	Čokolada, temna, visoka kakavova trdna snovi	440	120	55	2.48	processed	3.9	21	130	18.22	52	50	0	0	0.38	2
6c73560b-0c00-4aa2-9a2a-8ab4fadc3c39	0.1	0.02	51	32.1	11	9.9	506	2118	38.3	15	25	Chocolate, dark, no added sugar	Čokolada, temna, brez dodanega sladkorja	560	150	3	1.5	processed	6.9	2	70	23.07	0.5	0	0	0	0.93	2
bd964f09-fea8-413a-bd01-30231578a605	0.2	0.08	252	56	7	2.3	521	2178	30.5	1.42	36	Chocolate, milk	Čokoladno mleko	425	49	68	2.02	processed	7.6	79	325	18.76	54.6	50	5	0	0.69	1.24
68646309-7468-44e2-838d-d86241d10fe0	0.2	0.02	170	61.4	18	2	478	2002	24.7	1.3	36	Chocolate, milk, fondant or caramel filled	Čokolada, mleko, fondant ali karamela napolnjena	320	41	79	1.86	processed	6	80	400	15.23	53.6	60	0	0	0.82	0.9
a9a26000-abe5-4e23-aa2a-7520dc4a2964	0.1	0.1	218	55.3	5	2.9	497	2080	27.9	1.7	32	Chocolate, milk, with dried fruit & nuts	Čokolada, mleko, s suhim sadjem in oreščki	524	64	62	2.24	processed	7.8	61	258	15.1	53.3	71	4	0	2.02	1.35
cbdd5bb8-c0b2-47d8-b3b0-768d19446a7e	0.1	0.21	208	40.7	9	4.7	556	2325	39.5	1.97	56	Chocolate, milk, with nuts	Čokolada, mleko, z oreščki	505	85	48	3.18	processed	9.9	56	275	13.98	39.6	145	3	0	5.66	1.57
50cb64b6-fb39-41dc-9345-a56f7776efd5	0	0.02	230	54.6	34	0.2	543	2273	34.5	0	7	Chocolate, white	Čokolada, bela	310	25	78	1.74	processed	7.1	6	600	21.4	54.6	110	0	0	9.1	0.85
969c337a-df62-4fb9-8266-5804e4411571	0	0.09	25	43.1	57	2.2	180	752	0.3	0.9	11	Chutney or relish	Chutney ali užitek	210	13	690	0.9	processed	0.5	10	0	0	41.5	0	0	0	8.3	0
3fcadc05-2963-4822-9ef4-30065d9adc0c	0	0.04	5	64.4	46	0.9	251	1050	0	0.2	11	Jam, stone fruit	Jam, kamnito sadje	84	4	14	0.69	processed	0.2	8	0	0	64.3	0	9	0	0.12	0
72c349b3-2a82-495b-883f-3df3e46535ec	0	0.04	5	64.4	17	0.9	251	1050	0	0.2	11	Jam, plum	Jam, sliva	84	4	14	0.69	processed	0.2	3	0	0	64.3	0	9	0	0.12	0
2cf60214-c688-4fd3-b4a8-41a57aacb22d	0	0.06	15	65.5	0	0.8	253	1060	0	0.3	9	Marmalade, orange	Marmalade, oranžna	27	29	33	0.02	processed	0.1	0	0	0	65.4	0	2	0	0.06	0
afa07de0-e62c-48e2-9358-b30e02300105	0	0.06	130	57.8	6	3.7	524	2192	30.3	1.2	14	Spread, hazelnut & chocolate flavoured	Namaz	430	75	42	1.86	processed	6.8	1	250	7.96	57.2	80	0	0	1.4	1.3
a06cf7ce-32d3-470c-ba05-09c1aa6d9b54	0	0	8	87.5	0	0	303	1268	0	0.5	0	Glucose, liquid or syrup	Glukoza, tekočina ali sirup	3	2	150	0	processed	0	0	0	0	33	0	0	0	0	0
ed41f618-3fa6-4b5b-8381-8e8d6a66b8e1	0	0.02	8	72.3	0	0	278	1162	0	0.12	0	Honey	Med	66	2	8	0.04	raw	0.3	0	0	0	72.3	0	0	0	0	0.17
0ceff36c-610d-4642-b68b-9e5106b6e16b	0	0.08	150	96.8	0	0	371	1552	0	1.2	0	Sugar, brown	Sladkor, rjava	300	21	21	0	light	0.2	0	0	0	96.8	0	0	0	0	0
53b0f093-48a9-4bc8-a703-386f40665b3b	0	0.04	7	99.8	0	0	382	1597	0	0.3	0	Sugar 	Sladkor	21	3	1	0	processed	0	0	0	0	99.8	0	0	0	0	0
a432791f-f05e-4510-91f5-0d550cc3ade7	0	0.01	1	100	0	0	382	1600	0	0	0	Sugar, white, granulated or lump	Sladkor, bela, granulirana ali grudica	2	0	0	0	processed	0	0	0	0	100	0	0	0	0	0
73ed9d53-75b2-4a82-9654-88c66928d306	0	0.01	1	100	0	0	382	1600	0	0	0	Sugar, white, icing	Sladkor, bela, glazura	2	0	0	0	processed	0	0	0	0	100	0	0	0	0	0
6234c613-01ca-40b1-b874-249273cdcf33	0	0.01	1	99.6	0	0	382	1598	0	0	0	Sugar, white, icing mixture	Sladkor, bela, zmes za glazuro	2	0	0	0	processed	0	0	0	0	95.6	0	0	0	0	0
368c27e8-8cfd-42d9-b645-327920b12abc	0	0.19	230	74.9	0	0	288	1203	0	3.3	0	Syrup, golden	Sirup, zlati	610	37	130	0.4	processed	0.2	0	0	0	74.9	0	0	0	0	0
cd450c39-3135-4bc6-89dd-063c7f3fab54	0	0	102	67	0	0	259	1082	0.1	0.11	0	Syrup, maple, pure	Sirup, javor, čist	212	21	12	0.08	raw	0	0	1	0.01	60.4	66	0	0	0	1.47
a5eb6ea9-4ce3-402a-8bf5-0920025d3194	0	0.04	4	90.7	0	0	378	1582	0	0.1	0	Jelly crystals, sugar sweetened, all flavours	Jelly Crystals, sladkor sladkor, vsi okusi	4	0	520	0.02	processed	7.1	0	0	0	90.7	0	0	0	0	0
c191616e-7c42-432b-849f-a930a5663d54	0	0.12	30	1.3	90	8.1	35	145	0.2	0.5	68	Artichoke, globe 	Artičoka, globus	360	18	6	1.11	raw	2.8	15	80	0	0.9	60	16	0	0.19	0.6
37c8d5c8-6f27-4d5f-bfe7-0aed0f157c46	0	0.08	20	10.5	20	3	59	245	0.1	0.9	13	Artichoke, jerusalem 	Artičoka, Jeruzalem	520	11	5	1.14	raw	2.1	3	80	0	2.7	90	7	0	0.19	0.3
ef048162-bed4-45e4-b953-3da0a38c523e	0	0.1	11	1.4	156	2.2	21	88	0.1	1	99	Asparagus, green 	Šparglji, zelena	320	15	2	1.52	raw	2.5	26	120	0	1.4	150	15	0	0.52	0.2
c0a46e40-1434-45b7-9883-b865bca91ae1	0	0.09	12	1.5	400	3.9	24	101	0.1	1.6	76	Asparagus, canned in brine, drained	Šparglji, konzervirani v slanici, odcejeni	120	7	240	1.02	processed	1.9	67	80	0	1.5	0	6	0	0.58	0.6
a34e4164-5f88-41fa-a919-2ece97689b01	0	0.1	10	0.2	75	7.5	138	579	13.2	0.49	90	Avocado 	Avokado	450	26	7	2.07	raw	1.6	12	30	1.93	0	40	4	0	1.8	0.53
30a99d4e-5d9a-412a-a32a-833141543a30	0	0.14	15	1.3	0	2.8	14	57	0	0.4	3	Bamboo shoot, canned in water, heated, drained	Bambusova poganjka, konzervirana v vodi, ogrevana, odcejena	51	5	10	0.43	processed	0.8	0	0	0	0.8	0	0	0	0	0.5
567b8224-d6d5-42be-968a-1cb6442c11fb	0	0.07	220	0.2	3	3.3	22	94	0.5	3	71	Basil, green 	Bazilika, zelena	440	55	10	0.58	raw	2.6	583	100	0.03	0	50	6	0	2.1	0.92
8cb5a390-0036-4df9-a4a9-6c9f192fb368	0	0.04	17	2.2	205	7.1	56	235	0.5	1.9	96	Bean, broad 	Bean, širok	250	30	4	3.18	raw	6.9	34	340	0	0.7	200	41	0	0	1.2
c293ffa6-1909-4df5-bc0a-c4970162f554	0	0.12	16	2.3	90	2.3	25	104	0.2	0.4	23	Bean, butter 	Fižol, maslo	230	22	3	1.4	raw	2.3	15	90	0	1.8	60	15	0	0.72	1.5
3146640d-b977-437c-aa5b-6db52ecc1572	0	0.05	45	3.3	290	2.8	25	106	0	0.69	36	Bean, green 	Bean, zelena	280	24	0	0.22	raw	1.8	48	30	0	2.6	60	4	0	0	0.27
9636d9b6-0365-4f8b-b9af-dc23f6a5bcd5	0	0.11	8	8.4	10	3.5	48	201	0.1	0.9	110	Beetroot, purple 	Pesa, vijolična	290	26	54	0.62	raw	1.9	2	20	0	8.4	30	6	0	0.07	0.8
055d1674-db62-47c3-8d1b-ed8ab5fabbdf	0	0	10	8.7	0	2	44	184	0	0.66	10	Beetroot, canned in brine, drained	Pesa, konzervirana v slanici, odcejena	210	12	220	1.82	processed	1.2	0	0	0	8.7	0	0	0	0	0.18
4321b9e7-2a74-42cc-8cc9-244527b6d7b7	0	0.53	83	0.6	550	2.4	19	79	0.2	1.4	40	Bok choy 	Bok choy	250	18	57	0.27	raw	2.5	92	120	0	0.6	110	17	0	0.14	0.36
72f49fe2-34c4-4b93-a89b-8f05a4f63552	0	0.09	32	0.4	290	3.7	31	131	0.3	0.84	158	Broccoli 	Brokoli	336	21	22	1.23	raw	4.7	48	220	0	0.4	80	106	0	0.18	0.6
3df36355-4ee1-43b5-b6c1-f52d0836657e	0	0.06	39	2	298	2.5	29	122	0.4	0.78	123	Broccolini 	Brokolini	250	21	16	0.5	raw	3.2	50	80	0	1.3	70	12	0	0.22	0.45
2883ef57-f76e-453e-a2c2-a39ce6b86eb5	0	0.22	15	2.1	170	4.5	36	150	0.3	0.9	61	Brussels sprout 	Brstični ohrovt	380	18	30	1.31	raw	3.8	28	150	0	2.1	90	110	0	0.88	0.3
5977d6a6-30d1-4250-8ebd-752a7c00d758	0	0.1	25	0.9	190	1.1	11	44	0	0.3	170	Cabbage, Chinese 	Zelje, kitajsko	250	8	6	0.52	raw	1.1	32	40	0	0.9	30	20	0	0	0.2
b1a7000a-bf45-4e82-b7e3-04e23cd2b13c	0	0.21	35	2.7	10	3.4	29	122	0.3	0.6	57	Cabbage, red 	Zelje, rdeče	450	14	16	0.81	raw	2.2	2	130	0	2.7	90	69	0	0.11	0.3
27771bfd-1d88-4307-b291-b9f2730a67f0	0	0.09	39	2.3	80	2.3	22	90	0.1	0.6	42	Cabbage, savoy 	Zelje, Savoy	340	14	23	0.58	raw	1.7	13	50	0	2.3	50	46	0	0	0.3
a0be4c6c-d199-4204-9f09-7f14bb6093ba	0	0.09	32	2.8	5	2.4	22	91	0.1	0.46	42	Cabbage, white 	Zelje, belo	266	14	14	0.54	raw	1.3	1	40	0	2.8	50	45	0	0	0.23
a5045a00-9ff7-4650-b0b2-c2a5ec185cb6	0	0.02	40	1.7	83	3.2	30	126	0.9	1.67	23	Capers, pickled, canned, drained	Kaperji, vloženi, konzervirani, odcejeni	40	33	2	0.92	processed	2.4	14	139	0.27	0.4	18	4	0	0.88	0.32
e5117176-0efa-479f-b908-079749d4f731	0	0.08	6	2.5	115	1.5	16	69	0	0.23	52	Pepper, green 	Poper, zelena	190	10	1	0.16	raw	0.9	19	20	0	2.5	30	220	0	0.2	0.11
d35b2835-d765-412c-837e-4bcbf5516247	0	0.06	7	4.4	665	1.1	27	115	0.4	0.28	120	Pepper, red 	Poper, rdeča	240	10	3	0.16	raw	1.1	111	110	0	4.4	40	330	0	4.2	0.13
2ca3454f-7582-4c4a-8a74-fcbb5292fc80	0	0.02	42	5.5	9	3.3	32	134	0.1	0.5	27	Carrot, baby 	Korenček, dojenček	210	11	51	0.69	raw	0.7	1	30	0	5.5	40	7	0	0	0.2
51e9d01c-bc6d-4ce7-941d-6e8264dcacd3	0	0.02	26	6.6	10	3.4	35	146	0	0.24	34	Carrot, mature 	Korenček, zrel	264	12	49	0.16	raw	0.6	1	0	0	6.2	20	3	0	0	0.17
03912e20-6af8-4f92-8165-d84dfb8aa58c	0	0.17	18	3.3	0	1.2	24	102	0.2	0.32	56	Cauliflower 	Cvetača	242	16	40	0.36	raw	1.9	0	50	0	2.8	40	26	0	0	0.2
e8a1163a-72ca-464b-b649-9b45e8beb030	0	0.16	41	5	20	5.1	39	162	0.2	0.2	8	Celeriac 	Celeriac	440	22	21	1.15	raw	1.6	3	130	0	2.8	60	13	0	0.36	0.5
0a9ed2c0-f2af-46ce-b2e9-fecc0087a9ab	0	0.03	44	2.2	58	1.4	15	63	0.1	0.25	13	Celery 	Zelena	267	10	98	0.53	raw	0.6	10	20	0	1.2	30	5	0	0.02	0.21
99f47f52-c17b-4edb-bdda-f099a1a46e50	0	0.1	30	0.8	250	1.8	16	67	0.2	1.7	110	Chicory 	Chicory	220	12	36	1.06	raw	1.8	42	90	0	0.7	30	12	0	2.26	0.2
dceaacf9-3a76-4a9a-befa-e0b4f1dbaad0	0	0.14	90	2.6	2	4.7	29	120	0.3	2.8	105	Chives 	Drobnjaki	210	12	7	0.99	raw	1.5	383	210	0	2.6	60	29	0	0.21	0.4
e905f978-6532-4c00-bebd-c31441f04cd2	0	0.08	86	1.9	3	3.2	32	132	0.6	4.5	126	Coriander 	Koriander	540	30	45	0.97	raw	3.1	515	185	0.02	1.2	95	30	0	1.7	0.55
c9d34d6a-a323-4886-806d-28958b01c749	0	0.07	16	12.5	6	3.8	87	366	1.8	1.2	16	Corn on cob 	Koruza na storž	250	12	19	1.59	raw	3.6	1	50	0.48	5.4	50	3	0	0	0.45
49898b4e-44b1-4fef-a2fb-e8d5349547de	0	0.18	2	16.8	49	2.7	93	391	1	0.42	45	Corn, kernels, canned in brine, drained	Koruza, jedra, konzervirana v slanici, odcejena	124	17	170	1.58	processed	2.9	8	30	0.25	3.5	0	3	0	0.09	0.5
8ba65d72-e192-4ea5-8987-69b9d9d7dd60	0	0.18	3	16.8	14	2.5	93	390	0.9	0.4	45	Corn, kernels, purchased frozen 	Koruza, jedra, kupljena zamrznjena	202	24	5	1.89	light	3	2	0	0.24	3	80	4	0	0.09	0.5
93cbf3e4-efc6-4b01-8052-9328ec031945	0	0.1	18	1.2	270	1.4	12	50	0.1	0.22	4	Cucumber, common 	Kumare, pogosta	136	14	10	0.31	raw	0.8	45	20	0	1.2	20	7	0	0	0.18
1b6136b2-a95c-4eb8-8405-38098a3159e4	0	0.18	170	2.5	6	3.3	41	170	1.2	1.9	150	Dill 	Koper	370	31	42	1.63	raw	3.4	1	540	0.06	1.2	170	66	0	0	0.9
4371a8d2-d849-4185-81cd-04c4533d7c11	0	1.7	23	2.6	46	2.4	22	93	0.3	0.2	0	Eggplant 	Jajčevec	170	8	5	0.9	raw	1.1	8	40	0	2.6	50	3	0	2.8	0.1
ac1ca6af-1ad9-408e-b1d0-59371e828670	0	0.02	46	0.4	440	2.2	14	58	0.2	1.7	142	Endive 	Endive	190	10	76	0.6	raw	1.5	73	100	0	0.3	40	18	0	0.44	0.4
f18c1b5b-6faa-4393-8330-9b0ae9114d73	0	0.05	20	3.3	0	1.8	22	92	0.1	0.1	27	Fennel 	Koromač	280	10	38	0.32	raw	1	0	30	0	3.3	30	9	0	0.58	0.1
6c534fb0-277f-4e8d-9132-149f58d2c8da	0	1.24	30	10.2	10	16.9	125	522	2.8	1.7	3	Garlic 	Česen	510	25	8	1.88	raw	6.1	2	60	0.78	1.5	90	11	0	0.08	1
06baa40c-893b-40ef-81cd-ddc441c4ca37	0	0.16	17	4.8	35	2.8	32	132	0.4	0.6	11	Ginger 	Ingver	240	28	11	0.99	raw	0.8	6	30	0	1.7	10	3	0	0.26	0.4
80b8f0eb-a712-4cc5-a91f-473a6f74c8a8	0	0.12	230	0.3	1	4.7	25	103	0	1.6	73	Kale 	Ohrovt	460	49	120	0.54	raw	3.3	217	110	0	0.3	50	32	0	0	0.31
cdb20b98-c5b7-41b3-bb42-82bdc7431f6e	0	0.07	33	3.7	275	3.1	33	136	0.4	0.7	35	Leek 	Por	260	14	17	0.68	raw	2.1	46	80	0	3.7	50	30	0	0.31	0.3
5f8e1f32-e693-4ee4-975b-425655927381	0	0.06	20	1.8	1	1.8	19	80	0.3	0.7	57	Lettuce, cos 	Solata, cos	210	13	18	0.47	raw	1.4	204	60	0	1.8	30	13	0	0.21	0.31
3bf477c2-9a1b-4673-aee9-d72b95b86f86	0	0	18	2.1	28	1.1	14	60	0	0.26	87	Lettuce, iceberg 	Solata, ledena gora	170	9	12	0.11	raw	1	5	30	0	2.1	60	2	0	0	0.21
6a3e294f-48ae-4d69-bd90-bca3c478b3b2	0	0.06	20	1.1	580	1.4	15	64	0.3	1.1	57	Lettuce, mignonette 	Solata, mignonetta	230	13	18	0.46	raw	1.3	97	70	0	1.1	50	12	0	0.2	0.28
f6c1337f-9df3-4f84-90df-7109ee523bf5	0	0.05	96	0	2	2	13	54	0	1.6	44	Mixed leafy greens 	Mešano listnato zelenico	400	74	91	0.44	raw	2.2	333	90	0	0	20	2	0	0.4	0.49
50134471-c349-43b7-8742-3f95c684b2c3	0	0.13	210	4.4	6	7.2	54	225	1.1	3.6	114	Mint 	Meta	380	34	28	1.62	raw	3.1	1	130	0.26	0.9	150	26	0	0.9	0.8
5d5f2f87-2ece-46dd-9626-9d68ea413067	0	0.01	3	1.3	0	1.4	21	87	0.4	0.45	22	Mushroom, common 	Goba, pogosta	360	11	9	3.82	raw	2.2	0	0	0.08	0	60	0	2.14	0	0.06
3e8885bb-bfa0-4621-ad71-a05aa164cc07	0	0.22	82	1.4	100	3.7	27	112	0.2	1.1	60	Okra 	Okra	280	48	2	1.66	raw	3.1	17	130	0.06	1.4	90	34	0	0.27	0.6
b53718df-292d-4cd4-8dd2-d7e6ffc95f29	0	0.02	52	1.8	280	2.3	206	862	20.5	1.91	3	Olive, green or black, drained	Oljčna, zelena ali črna, odcejena	66	16	1	0.18	light	2.4	47	0	2.59	0	0	1	0	5	0.13
d07861d1-824d-469b-a4b4-22086812b099	0	0.04	23	5.8	0	2.7	33	139	0	0.24	35	Onion, mature, brown skinned 	Čebula, zrela, rjava	180	12	8	0.23	raw	1.3	0	0	0	5.8	20	7	0	0	0.2
7282bbb5-2920-42f7-8d95-602b4ff7e293	0	0.04	26	4.7	5	2.1	31	128	0.1	0.29	35	Onion, mature, white skinned 	Čebula, zrela, bela koža	168	12	13	0.82	raw	1.7	1	20	0	4.7	40	6	0	0	0.22
312f776f-979b-4610-931f-bac8258fd577	0	0.03	19	5.5	0	1.4	27	113	0	0.17	2	Onion, mature, red skinned 	Čebula, zrela, rdeče kože	140	11	5	0.1	raw	0.8	0	30	0	5.5	30	5	0	0.2	0.13
5cbc8701-551c-4fbd-b321-9dc9bee1e299	0	0.04	22	4.6	625	1.9	30	127	0.2	0.5	35	Onion, spring 	Čebula, pomlad	140	11	13	1.52	raw	1.7	104	60	0	4.5	20	32	0	0.55	0.1
809851c3-462d-4ab1-a71a-5d469f22b465	0	0.13	120	1.1	4	5	36	150	0.7	3.9	180	Parsley, continental 	Peteršilj, celinski	660	43	150	2.42	raw	3.9	700	180	0	1	100	180	0	2.83	0.91
b623d566-f074-4ce8-b193-5b9c8cb17e47	0	0.12	200	0.4	4	5.8	23	96	0.2	9.4	55	Parsley, curly 	Peteršilj, kodrast	850	33	48	1.56	raw	1.9	794	280	0	0.4	160	95	0	0.9	1.2
20e72c1a-ca86-4c70-87d9-ed0e77a95bb3	0	0.06	38	10	15	3.6	57	237	0.2	0.3	27	Parsnip 	Pastinak	420	24	19	1.61	raw	1.8	2	100	0	4.8	80	12	0	0.22	0.4
c185e46a-332a-46c8-889b-c0a8e874c9c4	0	0.2	30	8.1	425	5.6	70	294	0.4	1.8	57	Pea, green 	Grah, zeleni	268	33	1	3.29	raw	5.8	71	140	0	4	310	32	0	0.1	1.05
9ce9f4df-e473-477a-b5fe-587a1134612e	0	0.11	3	11.5	0	1.1	58	242	0	0.45	14	Potato, coliban 	Krompir, Coliban	380	19	4	1.51	raw	2	0	20	0	1	70	15	0	0	0.21
b788d61f-cfdd-4337-912a-09f4f97d0085	0	0.1	6	10.7	0	1.7	57	240	0	0.24	14	Potato, desiree 	Krompir, Desiree	400	20	5	1.67	raw	2.3	0	40	0	1.7	80	14	0	0	0.28
ea901f67-d5b2-4243-82f0-bf40c3ce39c0	0	0.11	4	12.8	0	1.1	65	272	0.1	0.6	14	Potato, new 	Krompir, mladi	513	20	3	1.72	raw	2.3	0	30	0	0.6	90	15	0	0	0.35
141512b2-b13d-4fae-bc15-2d149f440862	0	0.11	3	11.5	0	1.1	58	242	0	0.45	14	Potato, pale skin 	Krompir, beli	380	19	4	1.51	raw	2	0	20	0	1	70	16	0	0	0.21
bb354cc4-184f-4660-9539-4f7bded5ec20	0	0.1	4	12.6	0	2.1	66	278	0.1	0.5	14	Potato, pontiac 	Krompir, Pontiac	380	19	2	1.69	raw	2.4	0	30	0	0.7	90	15	0	0	0.4
286ce006-2f36-4be9-819b-71b53aac7b3c	0	0.1	6	10.7	0	1.7	57	240	0	0.24	14	Potato, red skin 	Krompir, rdeči	400	20	5	1.67	raw	2.3	0	40	0	1.7	80	14	0	0	0.28
f557d422-9823-4bec-a0e6-326ed0cdddec	0	0.11	3	13.8	0	2.2	72	303	0.2	0.55	14	Potato, sebago 	Krompir, Sebago	442	19	4	1.86	raw	2.5	0	25	0	0.4	85	19	0	0	0.35
93fb798c-a560-48e8-80f8-de3ac81dab98	0	0.06	18	6.9	2	1.8	45	189	0.6	0.32	41	Pumpkin, butter  	Buča, Butter	376	17	1	0.9	raw	2.1	462	90	0.14	5.2	80	8	0	0.5	0.16
be8a0fba-e27b-440b-9e86-d5b1dd1a411d	0	0.04	22	4	3	1.1	30	124	0.3	0.2	41	Pumpkin, golden nugget 	Buča, Golden Nugget	230	6	1	1.42	raw	2.2	562	50	0	2.6	50	17	0	0.25	0.3
4d090b94-1d12-4bb6-9f55-eb8069401ab9	0	0.04	16	5.2	370	1.6	27	112	0.1	0.12	13	Pumpkin, jarrahdale 	Buča, Jarrahdale	196	9	0	0.13	raw	0.7	62	0	0	4.3	0	9	0	0.25	0.07
a8d57543-0ec0-480f-90ff-58ebd429a7cb	0	0	19	6.7	1	1.9	34	144	0	0.27	10	Pumpkin 	Buča	320	16	0	0.21	raw	1.2	172	50	0	6	50	14	0	0.3	0.16
7109b8f0-5a39-4af5-ab52-e4baadc1de9c	0	0.04	41	8.4	2	2.7	50	208	0.3	0.9	13	Pumpkin, Queensland blue 	Buča, Queensland Blue	340	13	2	1.19	raw	2	462	90	0	4.9	30	24	0	0.25	0.3
6c6765ed-ad0d-4dea-bcc9-1137ea4b99bf	0	0.07	25	1.9	15	1.1	15	62	0.2	1.1	25	Radish, red 	Redkvica, rdeča 	180	9	20	0.58	raw	0.8	2	30	0	1.9	30	23	0	0	0.2
82e0bfec-f0c0-476d-bfde-3c3a2b28bec2	0	0.05	30	2.9	40	1.8	21	86	0.3	0.3	28	Radish, white 	Redkvica, bela	210	13	28	0.86	raw	0.7	7	10	0	2.9	30	17	0	0	0.5
fe036ce3-e173-4992-a80b-d9bffd2ed9df	0	0.34	317	0.6	4	14.1	95	396	5.9	6.65	109	Rosemary 	Rožmarin	668	91	26	1.78	raw	3.3	790	152	2.72	0.4	36	22	0	0.9	0.93
b7806c13-3e04-45ae-a5cc-d39a2292e117	0	0.1	95	3.1	440	2.9	26	107	0.1	0.41	25	Shallot 	Šalotka	270	33	6	0.28	raw	1.5	73	110	0	3.1	40	22	0	0.24	0.3
04ae392c-9ef4-4f25-995d-3bc8d976d55f	0	0.81	72	1	1	2	16	66	0.2	2.3	65	Silverbeet 	Blitva	260	25	195	0.57	raw	1.5	258	120	0	1	30	21	0	0.16	0.5
da854a77-226d-4dd3-8b4f-4b02b71b22c6	0	0.08	25	4.7	268	2.6	38	157	0.2	0.9	14	Snow pea 	Snežni grah	420	36	1	1.41	raw	3	44	90	0	2.9	10	46	0	0.05	0.6
767a0e8a-6f94-4f04-bd97-4e017cb98edf	0	0.15	93	0	4	2.5	16	68	0	1.75	162	Spinach, baby 	Špinača, mlada	605	107	90	0.78	raw	2.8	707	40	0	0	70	25	0	1.62	0.77
71e5e784-a0a7-43f8-8a8d-f0880ce6bf68	0	0.16	53	0.6	1	2.5	20	82	0.3	3.2	110	Spinach	Špinača	570	68	21	0.99	raw	2.4	328	160	0	0.6	60	27	0	1.3	0.6
49f2c2f5-c6b4-497d-93da-168222302a2c	0	0	19	0.5	50	2.2	22	91	0.3	0.78	120	Sprout, alfalfa 	Kalček, lucerne	58	21	39	1.08	raw	3.2	8	90	0	0.5	90	36	0	2	0.5
1265dd2c-dcea-477b-9bf8-4f552981b305	0	0.04	10	1.6	21	1.3	22	94	0.1	0.4	21	Sprout, bean 	Kalček, sojin	150	14	1	1.16	raw	3.1	4	110	0	1	30	12	0	0.05	0.6
a5a4b6ca-c7ca-40a0-9bfe-5134d2c974a6	0	0.11	21	3.4	0	1.7	22	94	0	0.3	15	Turnip, white 	Repa, bela	320	8	24	1	raw	1.3	0	40	0	3.2	40	23	0	0	0.2
ce8e4545-f464-42d5-9bdc-7e221bbac98d	0	0.02	14	3.5	250	1.7	22	90	0	0.63	14	Tomato, cherry 	Paradižnik, češnjev	260	14	6	0.17	raw	0.9	42	0	0	3.5	0	26	0	0.2	0.16
6a4a2949-df97-424c-b9cf-e89aa54bf574	0	0.03	11	3	204	1.1	17	73	0	0.23	15	Tomato, common 	Paradižnik, navadni	210	10	4	0.08	raw	0.6	34	0	0	2.5	0	14	0	0.26	0.12
4b1c6ce7-94cc-45e4-8aaa-3bc63f139e9d	0	0.03	9	2.4	153	1.2	18	74	0.1	0.27	16	Tomato, roma 	Paradižnik, Roma	214	7	8	0.8	raw	1	26	10	0	2.3	20	18	0	0.26	0.31
20d53b5a-aa92-40be-8660-f0d2454c13cf	0	2.03	28	10.4	1	3.5	66	277	0.3	1.6	12	Tomato, paste, with added salt	Paradižnikova mezga, z dodano soljo	960	38	630	3.12	processed	3.1	220	80	0	9.9	120	15	0	3.35	0.4
202f52c7-38a4-4a66-a0d8-e0405ea30f3f	0	2.04	28	10.1	1	3.6	64	266	0.5	4.7	12	Tomato, paste, no added salt	Paradižnikova mezga, brez dodane soli	867	38	36	3.15	processed	3.4	220	80	0	9.6	120	15	0	3.36	0.4
229501bc-706a-42cc-ac35-bfc2413d0999	0	0.03	22	3.8	328	1.5	23	98	0.1	0.58	26	Tomato, puree	Paradižnikovo pire	204	11	249	0.73	processed	1.2	55	0	0	3.8	0	6	0	0.83	0.16
18f25b6b-17ab-432b-8b27-2c9b3bf6763f	0	0.33	100	35.2	2	14.7	263	1101	4.6	5.6	68	Tomato, sundried	Paradižnik, sušeni	3	150	73	8.56	light	11.2	483	360	0.51	33.9	300	3	0	7.9	13.6
a41910cb-528b-44dc-aaba-2a230bca3472	0	0.02	20	3	369	1	19	79	0	0.79	19	Tomato, whole, canned in tomato juice, undrained	Paradižnik, cel, konzerviran v paradižnikovem soku, neodcejen	219	11	52	0.39	processed	0.9	62	10	0.01	3	10	5	0	1.1	0.14
c4f1a4b5-e8de-4dc5-a204-36bb1c9e979e	0	0.03	27	3	393	1.3	21	88	0.3	0.2	15	Tomato, whole, canned in tomato juice, drained	Paradižnik, cel, konzerviran v paradižnikovem soku, odcejen	170	9	86	0.68	processed	0.8	66	0	0	3	0	10	0	0.2	0.1
a703ba46-c885-4d23-9da2-bd111891d43b	0	0.03	18	1.7	278	1.1	16	65	0.3	0.5	17	Zucchini, green skin 	Bučke, zelene	188	16	1	0.77	raw	0.9	46	60	0	1.7	30	24	0	0.52	0.33
b44bff64-c834-42a4-aa1c-0a86e5fd59d9	0	0.03	16	1.1	112	1	19	78	0.3	0.4	17	Zucchini, golden 	Bučke, rumene	230	10	1	1.02	raw	2.2	18	60	0	1.1	40	30	0	0.52	0.7
82e71502-0603-409b-abec-c9fc5b94788f	0	0	0	0	0	0	40	400	0	0	0	Jujeto smeshno	DjuDje	0	0	0	0	light	0	0	0	0	0	0	0	0	0	0
\.


--
-- Data for Name: items_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items_tag (item_id, tag_id) FROM stdin;
08c81a4f-8e12-473c-b721-ff144750d4b0	798bf33c-bb5c-4f57-b81d-858d875b1b4c
debc7886-c47d-4934-9ac7-7b756f188f36	798bf33c-bb5c-4f57-b81d-858d875b1b4c
e420cb44-e9eb-4403-82fb-0959510d5263	798bf33c-bb5c-4f57-b81d-858d875b1b4c
c07800c1-5dab-42d4-be78-5cb9472123dc	798bf33c-bb5c-4f57-b81d-858d875b1b4c
b7e0febc-e26d-47e0-994f-8c0721ebb9df	798bf33c-bb5c-4f57-b81d-858d875b1b4c
7caa19e0-9104-4843-a849-eb23ab6adc54	798bf33c-bb5c-4f57-b81d-858d875b1b4c
82b3d7e5-c2e6-4883-adf9-9233207a0b0f	798bf33c-bb5c-4f57-b81d-858d875b1b4c
3aa8285a-ce3b-448a-a027-feb15ce939fb	798bf33c-bb5c-4f57-b81d-858d875b1b4c
b3e248a0-ce6e-43e9-a471-e23dca5b5914	798bf33c-bb5c-4f57-b81d-858d875b1b4c
32db9b34-b1af-45cb-97ad-48b7ee032686	798bf33c-bb5c-4f57-b81d-858d875b1b4c
8b87c3a5-1176-48c6-b604-a7e77a2de671	798bf33c-bb5c-4f57-b81d-858d875b1b4c
ff8db4da-28cc-4f91-9e6b-93a556f56610	798bf33c-bb5c-4f57-b81d-858d875b1b4c
7207278d-60c0-4cde-b184-f3eb45cc0955	798bf33c-bb5c-4f57-b81d-858d875b1b4c
e801f059-5894-4fca-9c5c-baf52c9a1d19	798bf33c-bb5c-4f57-b81d-858d875b1b4c
13aa2fdb-9ae8-4bac-8bdc-881798ad565d	798bf33c-bb5c-4f57-b81d-858d875b1b4c
fe142ac7-5b9f-4eb4-b6a6-9c7381934f76	798bf33c-bb5c-4f57-b81d-858d875b1b4c
9163110a-67fd-41c1-a3dd-a97d72fa6b45	798bf33c-bb5c-4f57-b81d-858d875b1b4c
fc82a76d-3550-44ae-b47f-625e3759b998	798bf33c-bb5c-4f57-b81d-858d875b1b4c
34fee548-fa26-4aea-ae56-2e45e5eb3114	798bf33c-bb5c-4f57-b81d-858d875b1b4c
78b0daf5-a218-456f-8a19-276f40128963	158e04bf-aed7-43b4-b535-636a777d07f3
78b0daf5-a218-456f-8a19-276f40128963	dcaeb89b-a445-4a32-a9a9-d854451e5d60
\.


--
-- Data for Name: meals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meals (id, start) FROM stdin;
017b520e-b0d1-4a73-88ae-f7ad1898f43c	2023-04-19 04:00:00+00
\.


--
-- Data for Name: meals_foods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meals_foods (meal_id, foods_id) FROM stdin;
017b520e-b0d1-4a73-88ae-f7ad1898f43c	2d893702-6e46-46e6-a031-1307d7a0b37e
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (id, color, tag, tag_sl) FROM stdin;
161efdd9-d3eb-4707-9153-93a84055c1c5	success	vegetables	zelenjava
158e04bf-aed7-43b4-b535-636a777d07f3	danger	fruit	sadje
80b241fc-07a5-4a74-a979-1586187b00e2	primary	dairy	Mlekarna
bf9d8615-e1d8-49e1-9d4d-aa70b2d18f99	secondary	grains	zrna
7cb917d3-79c0-4361-8faa-cb112f90ba38	warning	baked	pečen
07c9f8a6-0454-464d-820f-1a4f78e1681c	secondary	starchy	škrob
71eab575-0251-4c0e-9d9a-5dd981664bb7	danger	meat	meso
600d39ac-af61-4738-9991-9d7be025e7de	warning	pasta	testenine
798bf33c-bb5c-4f57-b81d-858d875b1b4c	warning	bread	kruh
f752f55c-db10-405b-8237-4ae5916f3035	primary	drinks	pijača
a7300d51-c25b-4f5f-a3ae-f6439380d736	success	soup	juha
dcaeb89b-a445-4a32-a9a9-d854451e5d60	success	raw	surov
401cefd5-5d8f-438b-bbae-b226de685a34	danger	heat	toplota
5a353cdf-58b6-4589-a419-77c8d115bd9c	primary	breakfast	zajtrk
5e1165a7-23af-4033-9d4f-4cedd0cd4af7	success	morning snack	Jutranji prigrizek
2b7f5e96-9215-46dc-86a0-87804109e8d9	warning	lunch	kosilo
779d2555-7c97-4c49-b10d-298d53dc8bae	info	afternoon snack	Popoldanski prigrizek
1bcac9ea-48ca-4880-9f2e-5822f8066d7c	warning	added sugar	dodan sladkor
\.


--
-- Name: ingredient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredient_seq', 1, false);


--
-- Name: food_ingredients food_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_ingredients
    ADD CONSTRAINT food_ingredients_pkey PRIMARY KEY (food_id, ingredients_id);


--
-- Name: food food_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id);


--
-- Name: food_tag food_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_tag
    ADD CONSTRAINT food_tag_pkey PRIMARY KEY (food_id, tag_id);


--
-- Name: ingredient ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: items_tag items_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items_tag
    ADD CONSTRAINT items_tag_pkey PRIMARY KEY (item_id, tag_id);


--
-- Name: meals meals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meals
    ADD CONSTRAINT meals_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: food_ingredients uk_dnvs1ywxm8d3rjpsmxe1ayuxq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_ingredients
    ADD CONSTRAINT uk_dnvs1ywxm8d3rjpsmxe1ayuxq UNIQUE (ingredients_id);


--
-- Name: ingredient fk12vlivogcwtg1jbpje4h5to52; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT fk12vlivogcwtg1jbpje4h5to52 FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: meals_foods fk2tdljs5n9iy1axok8kjr0tkph; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meals_foods
    ADD CONSTRAINT fk2tdljs5n9iy1axok8kjr0tkph FOREIGN KEY (foods_id) REFERENCES public.food(id);


--
-- Name: food_ingredients fk63oxj1ik4vflteqaas257tk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_ingredients
    ADD CONSTRAINT fk63oxj1ik4vflteqaas257tk FOREIGN KEY (ingredients_id) REFERENCES public.ingredient(id);


--
-- Name: meals_foods fkdb6h88csf9wm3h04a4vye8t82; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meals_foods
    ADD CONSTRAINT fkdb6h88csf9wm3h04a4vye8t82 FOREIGN KEY (meal_id) REFERENCES public.meals(id);


--
-- Name: items_tag fkf1i6aisgcqn35fxxcd0nwjyts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items_tag
    ADD CONSTRAINT fkf1i6aisgcqn35fxxcd0nwjyts FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: food_ingredients fknfwd9dp2aw8o8l4ftu39jmvv9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_ingredients
    ADD CONSTRAINT fknfwd9dp2aw8o8l4ftu39jmvv9 FOREIGN KEY (food_id) REFERENCES public.food(id);


--
-- Name: food_tag fko6suo4blauymr1i36k683r4v1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_tag
    ADD CONSTRAINT fko6suo4blauymr1i36k683r4v1 FOREIGN KEY (food_id) REFERENCES public.food(id);


--
-- Name: items_tag fkq4u852flry0l4arh0aqut252w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items_tag
    ADD CONSTRAINT fkq4u852flry0l4arh0aqut252w FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: food_tag fksu5j016oeunimuaxyo2dvgrsc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_tag
    ADD CONSTRAINT fksu5j016oeunimuaxyo2dvgrsc FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- PostgreSQL database dump complete
--


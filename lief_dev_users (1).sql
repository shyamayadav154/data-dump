--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: User; Type: TABLE; Schema: public; Owner: lief_admin
--

CREATE TABLE public."User" (
    id text NOT NULL,
    email text NOT NULL,
    "companyEmail" text NOT NULL,
    "isActive" boolean NOT NULL,
    type text DEFAULT 'staff'::text
);


ALTER TABLE public."User" OWNER TO lief_admin;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: lief_admin
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO lief_admin;

--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: lief_admin
--

COPY public."User" (id, email, "companyEmail", "isActive", type) FROM stdin;
1	dilip@projectmudra.com	new@company.com	t	staff
2e31ecf7-289b-437c-922a-03a941053217	dilip1@thinkerbelllabs.com	new@company.com	t	staff
63ca1075-5a98-4e5e-98c4-023929f17bfa	dilipr94@gmail.com	new@company.com	t	staff
caf380d5-c80b-40e4-97c5-8e80e896fd82	pavan.mallikarjun@gmail.com	new@company.com	t	staff
e103d607-369f-4c7f-86e9-ae374a490eb0	sanskriti@thinkerbelllabs.com	new@company.com	t	staff
9037bb95-d2d5-4992-9486-3b445e778d61	expenses@thinkerbelllabs.com	new@company.com	t	staff
9ad2a446-1bf6-4b9a-a22b-6de940036ee8	vandit@thinkerbelllabs.com	new@company.com	t	staff
6ce5923e-c684-4723-9056-254ce2004fae	a@a.com	new@company.com	t	staff
74811226-5f4b-41a4-bd1c-2a8912f2c30d	vishnumohan@thinkerbelllabs.com	new@company.com	t	staff
21130a6a-55d2-4833-8f75-bf8b04bb817b	avikant@thinkerbelllabs.com	new@company.com	t	staff
8c6096e3-dc13-4caf-9af0-1279a40f6500	i@i.com	new@company.com	t	staff
25d4e90d-ed13-461e-9a9d-d828f7f92d76	raghu.1999@gmail.com	new@company.com	t	staff
48522a4e-159c-47af-a2af-65cef8f1eed9	dilip_ramesh@live.com	new@company.com	t	staff
eb25c517-1205-4eda-a088-5e1024118b75	dilip@thinkerbelllabs.com	new@company.com	t	staff
6a4ab7bd-623f-4537-80a6-a00bad8c2c90	intn2@intn2.com	new@company.com	t	staff
689fd6ea-fcb9-4c52-ad4e-5380f297590b	akshat@thinkerbelllabs.com	new@company.com	t	staff
96ef57e7-971e-4f76-b249-ef17c007cecc	pokemon532000@gmail.com	new@company.com	t	staff
7de75b33-d75d-4b91-8699-11fa20fc8d59	aditya@thinkerbelllabs.com	new@company.com	t	staff
a8bde767-627d-45c5-9fd1-23beb67c101c	shivam@thinkerbelllabs.com	new@company.com	t	staff
a403a4f6-58d0-40f8-8540-d28a69c2ebaa	klaus@lief.care	new@company.com	t	cyp
06adaa42-5d0a-4db3-9cce-17f70d995161	vignesh.r@lief.care	new@company.com	t	staff
fefdd461-4155-4e14-b470-b8235511f785	niranjan@thinkerbelllabs.com	new@company.com	t	staff
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: lief_admin
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
94ec9d4a-dd06-4679-9f50-578f677d3e41	ab8217bc9a81145f345cfe1c69a85f38764f2a0c0d8958b82f63313d4f3f7d0f	2023-02-06 13:30:38.450549+05:30	20230201145907_introducing_the_user_schema	\N	\N	2023-02-06 13:30:38.435332+05:30	1
\.


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: lief_admin
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lief_admin
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: User.email_unique; Type: INDEX; Schema: public; Owner: lief_admin
--

CREATE UNIQUE INDEX "User.email_unique" ON public."User" USING btree (email);


--
-- PostgreSQL database dump complete
--


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
-- TOC entry 217 (class 1259 OID 18902)
-- Name: finals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.finals (
    id bigint NOT NULL,
    name character varying(8) NOT NULL
);


ALTER TABLE public.finals OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 18901)
-- Name: finals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.finals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.finals_id_seq OWNER TO postgres;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 216
-- Name: finals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.finals_id_seq OWNED BY public.finals.id;


--
-- TOC entry 219 (class 1259 OID 18911)
-- Name: finals_tone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.finals_tone (
    id bigint NOT NULL,
    name character varying(8) NOT NULL,
    tone text,
    final_id bigint
);


ALTER TABLE public.finals_tone OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 18910)
-- Name: finals_tone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.finals_tone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.finals_tone_id_seq OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 218
-- Name: finals_tone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.finals_tone_id_seq OWNED BY public.finals_tone.id;


--
-- TOC entry 227 (class 1259 OID 18964)
-- Name: hieroglyphic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hieroglyphic (
    id bigint NOT NULL,
    hieroglyph character varying(8) NOT NULL,
    pinyin_id bigint NOT NULL
);


ALTER TABLE public.hieroglyphic OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18963)
-- Name: hieroglyphic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hieroglyphic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hieroglyphic_id_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 226
-- Name: hieroglyphic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hieroglyphic_id_seq OWNED BY public.hieroglyphic.id;


--
-- TOC entry 215 (class 1259 OID 18893)
-- Name: initials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.initials (
    id bigint NOT NULL,
    name character varying(8) NOT NULL
);


ALTER TABLE public.initials OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 18892)
-- Name: initials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.initials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.initials_id_seq OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 214
-- Name: initials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.initials_id_seq OWNED BY public.initials.id;


--
-- TOC entry 223 (class 1259 OID 18944)
-- Name: languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.languages (
    id bigint NOT NULL,
    name character varying(32) NOT NULL,
    short_name character varying(16) NOT NULL
);


ALTER TABLE public.languages OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18943)
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.languages_id_seq OWNER TO postgres;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 222
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.languages_id_seq OWNED BY public.languages.id;


--
-- TOC entry 225 (class 1259 OID 18955)
-- Name: part_of_speech; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.part_of_speech (
    id bigint NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public.part_of_speech OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18954)
-- Name: part_of_speech_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.part_of_speech_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.part_of_speech_id_seq OWNER TO postgres;

--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 224
-- Name: part_of_speech_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.part_of_speech_id_seq OWNED BY public.part_of_speech.id;


--
-- TOC entry 221 (class 1259 OID 18927)
-- Name: pinyin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pinyin (
    id bigint NOT NULL,
    initial_id bigint,
    final_tone_id bigint NOT NULL
);


ALTER TABLE public.pinyin OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18926)
-- Name: pinyin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pinyin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pinyin_id_seq OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 220
-- Name: pinyin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pinyin_id_seq OWNED BY public.pinyin.id;


--
-- TOC entry 212 (class 1259 OID 18869)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(32)
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 18868)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 211
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 210 (class 1259 OID 18858)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(32) NOT NULL,
    password character varying(64) NOT NULL,
    avatar text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    last_login timestamp with time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 18857)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 213 (class 1259 OID 18877)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 3213 (class 2604 OID 18905)
-- Name: finals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals ALTER COLUMN id SET DEFAULT nextval('public.finals_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 18914)
-- Name: finals_tone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals_tone ALTER COLUMN id SET DEFAULT nextval('public.finals_tone_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 18967)
-- Name: hieroglyphic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hieroglyphic ALTER COLUMN id SET DEFAULT nextval('public.hieroglyphic_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 18896)
-- Name: initials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.initials ALTER COLUMN id SET DEFAULT nextval('public.initials_id_seq'::regclass);


--
-- TOC entry 3216 (class 2604 OID 18947)
-- Name: languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public.languages_id_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 18958)
-- Name: part_of_speech id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_of_speech ALTER COLUMN id SET DEFAULT nextval('public.part_of_speech_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 18930)
-- Name: pinyin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pinyin ALTER COLUMN id SET DEFAULT nextval('public.pinyin_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 18872)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 18861)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3234 (class 2606 OID 18909)
-- Name: finals finals_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals
    ADD CONSTRAINT finals_name_key UNIQUE (name);


--
-- TOC entry 3236 (class 2606 OID 18907)
-- Name: finals finals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals
    ADD CONSTRAINT finals_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 18920)
-- Name: finals_tone finals_tone_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals_tone
    ADD CONSTRAINT finals_tone_name_key UNIQUE (name);


--
-- TOC entry 3240 (class 2606 OID 18918)
-- Name: finals_tone finals_tone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals_tone
    ADD CONSTRAINT finals_tone_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 18971)
-- Name: hieroglyphic hieroglyphic_hieroglyph_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hieroglyphic
    ADD CONSTRAINT hieroglyphic_hieroglyph_key UNIQUE (hieroglyph);


--
-- TOC entry 3256 (class 2606 OID 18969)
-- Name: hieroglyphic hieroglyphic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hieroglyphic
    ADD CONSTRAINT hieroglyphic_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 18900)
-- Name: initials initials_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.initials
    ADD CONSTRAINT initials_name_key UNIQUE (name);


--
-- TOC entry 3232 (class 2606 OID 18898)
-- Name: initials initials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.initials
    ADD CONSTRAINT initials_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 18951)
-- Name: languages languages_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_name_key UNIQUE (name);


--
-- TOC entry 3246 (class 2606 OID 18949)
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 18953)
-- Name: languages languages_short_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_short_name_key UNIQUE (short_name);


--
-- TOC entry 3250 (class 2606 OID 18962)
-- Name: part_of_speech part_of_speech_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_of_speech
    ADD CONSTRAINT part_of_speech_name_key UNIQUE (name);


--
-- TOC entry 3252 (class 2606 OID 18960)
-- Name: part_of_speech part_of_speech_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_of_speech
    ADD CONSTRAINT part_of_speech_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 18932)
-- Name: pinyin pinyin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pinyin
    ADD CONSTRAINT pinyin_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 18876)
-- Name: roles roles_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);


--
-- TOC entry 3226 (class 2606 OID 18874)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 18865)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 18881)
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 3222 (class 2606 OID 18867)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3259 (class 2606 OID 18921)
-- Name: finals_tone fk_finals_tone_final; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.finals_tone
    ADD CONSTRAINT fk_finals_tone_final FOREIGN KEY (final_id) REFERENCES public.finals(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3262 (class 2606 OID 18972)
-- Name: hieroglyphic fk_hieroglyphic_pinyin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hieroglyphic
    ADD CONSTRAINT fk_hieroglyphic_pinyin FOREIGN KEY (pinyin_id) REFERENCES public.pinyin(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3261 (class 2606 OID 18938)
-- Name: pinyin fk_pinyin_final_tone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pinyin
    ADD CONSTRAINT fk_pinyin_final_tone FOREIGN KEY (final_tone_id) REFERENCES public.finals_tone(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3260 (class 2606 OID 18933)
-- Name: pinyin fk_pinyin_initial; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pinyin
    ADD CONSTRAINT fk_pinyin_initial FOREIGN KEY (initial_id) REFERENCES public.initials(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3258 (class 2606 OID 18887)
-- Name: users_roles fk_users_roles_role; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk_users_roles_role FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3257 (class 2606 OID 18882)
-- Name: users_roles fk_users_roles_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk_users_roles_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


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

--
-- TOC entry 3440 (class 0 OID 19720)
-- Dependencies: 229
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3428 (class 0 OID 19648)
-- Dependencies: 217
-- Data for Name: finals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.finals (id, name, pos) VALUES (1, 'a', 1);
INSERT INTO public.finals (id, name, pos) VALUES (2, 'o', 2);
INSERT INTO public.finals (id, name, pos) VALUES (3, 'e', 3);
INSERT INTO public.finals (id, name, pos) VALUES (4, 'i', 4);
INSERT INTO public.finals (id, name, pos) VALUES (5, 'i', 5);
INSERT INTO public.finals (id, name, pos) VALUES (6, 'er', 6);
INSERT INTO public.finals (id, name, pos) VALUES (7, 'ai', 7);
INSERT INTO public.finals (id, name, pos) VALUES (8, 'ei', 8);
INSERT INTO public.finals (id, name, pos) VALUES (9, 'ao', 9);
INSERT INTO public.finals (id, name, pos) VALUES (10, 'ou', 10);
INSERT INTO public.finals (id, name, pos) VALUES (11, 'an', 11);
INSERT INTO public.finals (id, name, pos) VALUES (12, 'en', 12);
INSERT INTO public.finals (id, name, pos) VALUES (13, 'ang', 13);
INSERT INTO public.finals (id, name, pos) VALUES (14, 'eng', 14);
INSERT INTO public.finals (id, name, pos) VALUES (15, 'ong', 15);
INSERT INTO public.finals (id, name, pos) VALUES (16, 'i', 16);
INSERT INTO public.finals (id, name, pos) VALUES (17, 'ia', 17);
INSERT INTO public.finals (id, name, pos) VALUES (18, 'iao', 18);
INSERT INTO public.finals (id, name, pos) VALUES (19, 'ie', 19);
INSERT INTO public.finals (id, name, pos) VALUES (20, 'iu', 20);
INSERT INTO public.finals (id, name, pos) VALUES (21, 'ian', 21);
INSERT INTO public.finals (id, name, pos) VALUES (22, 'in', 22);
INSERT INTO public.finals (id, name, pos) VALUES (23, 'iang', 23);
INSERT INTO public.finals (id, name, pos) VALUES (24, 'ing', 24);
INSERT INTO public.finals (id, name, pos) VALUES (25, 'iong', 25);
INSERT INTO public.finals (id, name, pos) VALUES (26, 'u', 26);
INSERT INTO public.finals (id, name, pos) VALUES (27, 'ua', 27);
INSERT INTO public.finals (id, name, pos) VALUES (28, 'uo', 28);
INSERT INTO public.finals (id, name, pos) VALUES (29, 'uai', 29);
INSERT INTO public.finals (id, name, pos) VALUES (30, 'ui', 30);
INSERT INTO public.finals (id, name, pos) VALUES (31, 'uan', 31);
INSERT INTO public.finals (id, name, pos) VALUES (32, 'un', 32);
INSERT INTO public.finals (id, name, pos) VALUES (33, 'uang', 33);
INSERT INTO public.finals (id, name, pos) VALUES (34, 'ueng', 34);
INSERT INTO public.finals (id, name, pos) VALUES (35, 'ü', 35);
INSERT INTO public.finals (id, name, pos) VALUES (36, 'üe', 36);
INSERT INTO public.finals (id, name, pos) VALUES (37, 'üan', 37);
INSERT INTO public.finals (id, name, pos) VALUES (38, 'ün', 38);


--
-- TOC entry 3430 (class 0 OID 19655)
-- Dependencies: 219
-- Data for Name: finals_tone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (1, 'a', 'NONE', 1);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (2, 'o', 'NONE', 2);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (3, 'e', 'NONE', 3);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (4, 'i', 'NONE', 4);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (5, 'i', 'NONE', 5);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (6, 'er', 'NONE', 6);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (7, 'ai', 'NONE', 7);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (8, 'ei', 'NONE', 8);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (9, 'ao', 'NONE', 9);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (10, 'ou', 'NONE', 10);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (11, 'an', 'NONE', 11);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (12, 'en', 'NONE', 12);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (13, 'ang', 'NONE', 13);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (14, 'eng', 'NONE', 14);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (15, 'ong', 'NONE', 15);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (16, 'i', 'NONE', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (17, 'ia', 'NONE', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (18, 'iao', 'NONE', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (19, 'ie', 'NONE', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (20, 'iu', 'NONE', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (21, 'ian', 'NONE', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (22, 'in', 'NONE', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (23, 'iang', 'NONE', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (24, 'ing', 'NONE', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (25, 'iong', 'NONE', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (26, 'u', 'NONE', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (27, 'ua', 'NONE', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (28, 'uo', 'NONE', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (29, 'uai', 'NONE', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (30, 'ui', 'NONE', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (31, 'uan', 'NONE', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (32, 'un', 'NONE', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (33, 'uang', 'NONE', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (34, 'ueng', 'NONE', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (35, 'ü', 'NONE', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (36, 'ue', 'NONE', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (37, 'uan', 'NONE', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (38, 'un', 'NONE', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (39, 'ā', 'FIRST', 1);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (40, 'ō', 'FIRST', 2);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (41, 'ē', 'FIRST', 3);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (42, 'ī', 'FIRST', 4);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (43, 'ī', 'FIRST', 5);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (44, 'ēr', 'FIRST', 6);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (45, 'āi', 'FIRST', 7);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (46, 'ēi', 'FIRST', 8);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (47, 'āo', 'FIRST', 9);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (48, 'ōu', 'FIRST', 10);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (49, 'ān', 'FIRST', 11);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (50, 'ēn', 'FIRST', 12);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (51, 'āng', 'FIRST', 13);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (52, 'ēng', 'FIRST', 14);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (53, 'ōng', 'FIRST', 15);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (54, 'ī', 'FIRST', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (55, 'iā', 'FIRST', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (56, 'iāo', 'FIRST', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (57, 'iē', 'FIRST', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (58, 'iū', 'FIRST', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (59, 'iān', 'FIRST', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (60, 'īn', 'FIRST', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (61, 'iāng', 'FIRST', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (62, 'īng', 'FIRST', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (63, 'iōng', 'FIRST', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (64, 'ū', 'FIRST', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (65, 'uā', 'FIRST', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (66, 'uō', 'FIRST', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (67, 'uāi', 'FIRST', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (68, 'uī', 'FIRST', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (69, 'uān', 'FIRST', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (70, 'ūn', 'FIRST', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (71, 'uāng', 'FIRST', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (72, 'uēng', 'FIRST', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (73, 'ǖ', 'FIRST', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (74, 'uē', 'FIRST', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (75, 'uān', 'FIRST', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (76, 'ūn', 'FIRST', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (77, 'á', 'SECOND', 1);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (78, 'ó', 'SECOND', 2);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (79, 'é', 'SECOND', 3);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (80, 'í', 'SECOND', 4);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (81, 'í', 'SECOND', 5);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (82, 'ér', 'SECOND', 6);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (83, 'ái', 'SECOND', 7);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (84, 'éi', 'SECOND', 8);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (85, 'áo', 'SECOND', 9);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (86, 'óu', 'SECOND', 10);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (87, 'án', 'SECOND', 11);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (88, 'én', 'SECOND', 12);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (89, 'áng', 'SECOND', 13);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (90, 'éng', 'SECOND', 14);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (91, 'óng', 'SECOND', 15);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (92, 'í', 'SECOND', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (93, 'iá', 'SECOND', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (94, 'iáo', 'SECOND', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (95, 'ié', 'SECOND', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (96, 'iú', 'SECOND', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (97, 'ián', 'SECOND', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (98, 'ín', 'SECOND', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (99, 'iáng', 'SECOND', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (100, 'íng', 'SECOND', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (101, 'ióng', 'SECOND', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (102, 'ú', 'SECOND', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (103, 'uá', 'SECOND', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (104, 'uó', 'SECOND', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (105, 'uái', 'SECOND', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (106, 'uí', 'SECOND', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (107, 'uán', 'SECOND', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (108, 'ún', 'SECOND', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (109, 'uáng', 'SECOND', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (110, 'uéng', 'SECOND', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (111, 'ǘ', 'SECOND', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (112, 'ué', 'SECOND', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (113, 'uán', 'SECOND', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (114, 'ún', 'SECOND', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (115, 'ǎ', 'THIRD', 1);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (116, 'ǒ', 'THIRD', 2);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (117, 'ě', 'THIRD', 3);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (118, 'ǐ', 'THIRD', 4);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (119, 'ǐ', 'THIRD', 5);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (120, 'ěr', 'THIRD', 6);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (121, 'ǎi', 'THIRD', 7);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (122, 'ěi', 'THIRD', 8);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (123, 'ǎo', 'THIRD', 9);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (124, 'ǒu', 'THIRD', 10);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (125, 'ǎn', 'THIRD', 11);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (126, 'ěn', 'THIRD', 12);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (127, 'ǎng', 'THIRD', 13);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (128, 'ěng', 'THIRD', 14);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (129, 'ǒng', 'THIRD', 15);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (130, 'ǐ', 'THIRD', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (131, 'iǎ', 'THIRD', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (132, 'iǎo', 'THIRD', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (133, 'iě', 'THIRD', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (134, 'iǔ', 'THIRD', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (135, 'iǎn', 'THIRD', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (136, 'ǐn', 'THIRD', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (137, 'iǎng', 'THIRD', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (138, 'ǐng', 'THIRD', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (139, 'iǒng', 'THIRD', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (140, 'ǔ', 'THIRD', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (141, 'uǎ', 'THIRD', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (142, 'uǒ', 'THIRD', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (143, 'uǎi', 'THIRD', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (144, 'uǐ', 'THIRD', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (145, 'uǎn', 'THIRD', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (146, 'ǔn', 'THIRD', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (147, 'uǎng', 'THIRD', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (148, 'uěng', 'THIRD', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (149, 'ǚ', 'THIRD', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (150, 'uě', 'THIRD', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (151, 'uǎn', 'THIRD', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (152, 'ǔn', 'THIRD', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (153, 'à', 'FOURTH', 1);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (154, 'ò', 'FOURTH', 2);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (155, 'è', 'FOURTH', 3);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (156, 'ì', 'FOURTH', 4);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (157, 'ì', 'FOURTH', 5);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (158, 'èr', 'FOURTH', 6);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (159, 'ài', 'FOURTH', 7);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (160, 'èi', 'FOURTH', 8);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (161, 'ào', 'FOURTH', 9);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (162, 'òu', 'FOURTH', 10);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (163, 'àn', 'FOURTH', 11);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (164, 'èn', 'FOURTH', 12);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (165, 'àng', 'FOURTH', 13);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (166, 'èng', 'FOURTH', 14);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (167, 'òng', 'FOURTH', 15);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (168, 'ì', 'FOURTH', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (169, 'ià', 'FOURTH', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (170, 'iào', 'FOURTH', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (171, 'iè', 'FOURTH', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (172, 'iù', 'FOURTH', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (173, 'iàn', 'FOURTH', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (174, 'ìn', 'FOURTH', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (175, 'iàng', 'FOURTH', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (176, 'ìng', 'FOURTH', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (177, 'iòng', 'FOURTH', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (178, 'ù', 'FOURTH', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (179, 'uà', 'FOURTH', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (180, 'uò', 'FOURTH', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (181, 'uài', 'FOURTH', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (182, 'uì', 'FOURTH', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (183, 'uàn', 'FOURTH', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (184, 'ùn', 'FOURTH', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (185, 'uàng', 'FOURTH', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (186, 'uèng', 'FOURTH', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (187, 'ǜ', 'FOURTH', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (188, 'uè', 'FOURTH', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (189, 'uàn', 'FOURTH', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (190, 'ùn', 'FOURTH', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (191, 'yi', 'NONE', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (192, 'ya', 'NONE', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (193, 'yao', 'NONE', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (194, 'ye', 'NONE', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (195, 'you', 'NONE', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (196, 'yan', 'NONE', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (197, 'yin', 'NONE', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (198, 'yang', 'NONE', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (199, 'ying', 'NONE', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (200, 'yong', 'NONE', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (201, 'wu', 'NONE', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (202, 'wa', 'NONE', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (203, 'wo', 'NONE', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (204, 'wai', 'NONE', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (205, 'wei', 'NONE', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (206, 'wan', 'NONE', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (207, 'wen', 'NONE', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (208, 'wang', 'NONE', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (209, 'weng', 'NONE', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (210, 'yu', 'NONE', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (211, 'yue', 'NONE', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (212, 'yuan', 'NONE', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (213, 'yun', 'NONE', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (214, 'yī', 'FIRST', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (215, 'yā', 'FIRST', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (216, 'yāo', 'FIRST', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (217, 'yē', 'FIRST', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (218, 'yōu', 'FIRST', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (219, 'yān', 'FIRST', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (220, 'yīn', 'FIRST', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (221, 'yāng', 'FIRST', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (222, 'yīng', 'FIRST', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (223, 'yōng', 'FIRST', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (224, 'wū', 'FIRST', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (225, 'wā', 'FIRST', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (226, 'wō', 'FIRST', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (227, 'wāi', 'FIRST', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (228, 'wēi', 'FIRST', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (229, 'wān', 'FIRST', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (230, 'wēn', 'FIRST', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (231, 'wāng', 'FIRST', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (232, 'wēng', 'FIRST', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (233, 'yū', 'FIRST', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (234, 'yuē', 'FIRST', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (235, 'yuān', 'FIRST', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (236, 'yūn', 'FIRST', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (237, 'yí', 'SECOND', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (238, 'yá', 'SECOND', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (239, 'yáo', 'SECOND', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (240, 'yé', 'SECOND', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (241, 'yóu', 'SECOND', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (242, 'yán', 'SECOND', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (243, 'yín', 'SECOND', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (244, 'yáng', 'SECOND', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (245, 'yíng', 'SECOND', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (246, 'yóng', 'SECOND', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (247, 'wú', 'SECOND', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (248, 'wá', 'SECOND', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (249, 'wó', 'SECOND', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (250, 'wái', 'SECOND', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (251, 'wéi', 'SECOND', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (252, 'wán', 'SECOND', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (253, 'wén', 'SECOND', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (254, 'wáng', 'SECOND', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (255, 'wéng', 'SECOND', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (256, 'yú', 'SECOND', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (257, 'yué', 'SECOND', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (258, 'yuán', 'SECOND', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (259, 'yún', 'SECOND', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (260, 'yǐ', 'THIRD', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (261, 'yǎ', 'THIRD', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (262, 'yǎo', 'THIRD', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (263, 'yě', 'THIRD', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (264, 'yǒu', 'THIRD', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (265, 'yǎn', 'THIRD', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (266, 'yǐn', 'THIRD', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (267, 'yǎng', 'THIRD', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (268, 'yǐng', 'THIRD', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (269, 'yǒng', 'THIRD', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (270, 'wǔ', 'THIRD', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (271, 'wǎ', 'THIRD', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (272, 'wǒ', 'THIRD', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (273, 'wǎi', 'THIRD', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (274, 'wěi', 'THIRD', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (275, 'wǎn', 'THIRD', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (276, 'wěn', 'THIRD', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (277, 'wǎng', 'THIRD', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (278, 'wěng', 'THIRD', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (279, 'yǔ', 'THIRD', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (280, 'yuě', 'THIRD', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (281, 'yuǎn', 'THIRD', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (282, 'yǔn', 'THIRD', 38);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (283, 'yì', 'FOURTH', 16);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (284, 'yà', 'FOURTH', 17);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (285, 'yào', 'FOURTH', 18);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (286, 'yè', 'FOURTH', 19);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (287, 'yòu', 'FOURTH', 20);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (288, 'yàn', 'FOURTH', 21);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (289, 'yìn', 'FOURTH', 22);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (290, 'yàng', 'FOURTH', 23);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (291, 'yìng', 'FOURTH', 24);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (292, 'yòng', 'FOURTH', 25);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (293, 'wù', 'FOURTH', 26);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (294, 'wà', 'FOURTH', 27);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (295, 'wò', 'FOURTH', 28);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (296, 'wài', 'FOURTH', 29);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (297, 'wèi', 'FOURTH', 30);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (298, 'wàn', 'FOURTH', 31);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (299, 'wèn', 'FOURTH', 32);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (300, 'wàng', 'FOURTH', 33);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (301, 'wèng', 'FOURTH', 34);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (302, 'yù', 'FOURTH', 35);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (303, 'yuè', 'FOURTH', 36);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (304, 'yuàn', 'FOURTH', 37);
INSERT INTO public.finals_tone (id, name, tone, final_id) VALUES (305, 'yùn', 'FOURTH', 38);


--
-- TOC entry 3442 (class 0 OID 19729)
-- Dependencies: 231
-- Data for Name: hsk; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3423 (class 0 OID 19613)
-- Dependencies: 212
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3444 (class 0 OID 19738)
-- Dependencies: 233
-- Data for Name: hieroglyph_collections; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3426 (class 0 OID 19639)
-- Dependencies: 215
-- Data for Name: initials; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.initials (id, name, pos) VALUES (1, 'b', 1);
INSERT INTO public.initials (id, name, pos) VALUES (2, 'p', 2);
INSERT INTO public.initials (id, name, pos) VALUES (3, 'm', 3);
INSERT INTO public.initials (id, name, pos) VALUES (4, 'f', 4);
INSERT INTO public.initials (id, name, pos) VALUES (5, 'd', 5);
INSERT INTO public.initials (id, name, pos) VALUES (6, 't', 6);
INSERT INTO public.initials (id, name, pos) VALUES (7, 'n', 7);
INSERT INTO public.initials (id, name, pos) VALUES (8, 'l', 8);
INSERT INTO public.initials (id, name, pos) VALUES (9, 'g', 9);
INSERT INTO public.initials (id, name, pos) VALUES (10, 'k', 10);
INSERT INTO public.initials (id, name, pos) VALUES (11, 'h', 11);
INSERT INTO public.initials (id, name, pos) VALUES (12, 'z', 12);
INSERT INTO public.initials (id, name, pos) VALUES (13, 'c', 13);
INSERT INTO public.initials (id, name, pos) VALUES (14, 's', 14);
INSERT INTO public.initials (id, name, pos) VALUES (15, 'zh', 15);
INSERT INTO public.initials (id, name, pos) VALUES (16, 'ch', 16);
INSERT INTO public.initials (id, name, pos) VALUES (17, 'sh', 17);
INSERT INTO public.initials (id, name, pos) VALUES (18, 'r', 18);
INSERT INTO public.initials (id, name, pos) VALUES (19, 'j', 19);
INSERT INTO public.initials (id, name, pos) VALUES (20, 'q', 20);
INSERT INTO public.initials (id, name, pos) VALUES (21, 'x', 21);


--
-- TOC entry 3432 (class 0 OID 19669)
-- Dependencies: 221
-- Data for Name: pinyin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1, NULL, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2, NULL, 2);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (3, NULL, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (4, NULL, 6);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (5, NULL, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (6, NULL, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (7, NULL, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (8, NULL, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (9, NULL, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (10, NULL, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (11, NULL, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (12, NULL, 191);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (13, NULL, 192);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (14, NULL, 193);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (15, NULL, 194);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (16, NULL, 195);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (17, NULL, 196);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (18, NULL, 197);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (19, NULL, 198);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (20, NULL, 199);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (21, NULL, 200);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (22, NULL, 201);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (23, NULL, 202);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (24, NULL, 203);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (25, NULL, 204);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (26, NULL, 205);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (27, NULL, 206);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (28, NULL, 207);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (29, NULL, 208);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (30, NULL, 209);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (31, NULL, 210);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (32, NULL, 211);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (33, NULL, 212);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (34, NULL, 213);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (35, NULL, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (36, NULL, 40);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (37, NULL, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (38, NULL, 44);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (39, NULL, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (40, NULL, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (41, NULL, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (42, NULL, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (43, NULL, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (44, NULL, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (45, NULL, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (46, NULL, 214);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (47, NULL, 215);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (48, NULL, 216);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (49, NULL, 217);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (50, NULL, 218);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (51, NULL, 219);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (52, NULL, 220);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (53, NULL, 221);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (54, NULL, 222);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (55, NULL, 223);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (56, NULL, 224);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (57, NULL, 225);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (58, NULL, 226);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (59, NULL, 227);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (60, NULL, 228);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (61, NULL, 229);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (62, NULL, 230);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (63, NULL, 231);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (64, NULL, 232);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (65, NULL, 233);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (66, NULL, 234);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (67, NULL, 235);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (68, NULL, 236);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (69, NULL, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (70, NULL, 78);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (71, NULL, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (72, NULL, 82);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (73, NULL, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (74, NULL, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (75, NULL, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (76, NULL, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (77, NULL, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (78, NULL, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (79, NULL, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (80, NULL, 237);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (81, NULL, 238);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (82, NULL, 239);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (83, NULL, 240);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (84, NULL, 241);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (85, NULL, 242);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (86, NULL, 243);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (87, NULL, 244);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (88, NULL, 245);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (89, NULL, 246);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (90, NULL, 247);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (91, NULL, 248);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (92, NULL, 249);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (93, NULL, 250);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (94, NULL, 251);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (95, NULL, 252);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (96, NULL, 253);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (97, NULL, 254);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (98, NULL, 255);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (99, NULL, 256);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (100, NULL, 257);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (101, NULL, 258);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (102, NULL, 259);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (103, NULL, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (104, NULL, 116);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (105, NULL, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (106, NULL, 120);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (107, NULL, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (108, NULL, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (109, NULL, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (110, NULL, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (111, NULL, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (112, NULL, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (113, NULL, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (114, NULL, 260);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (115, NULL, 261);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (116, NULL, 262);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (117, NULL, 263);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (118, NULL, 264);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (119, NULL, 265);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (120, NULL, 266);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (121, NULL, 267);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (122, NULL, 268);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (123, NULL, 269);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (124, NULL, 270);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (125, NULL, 271);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (126, NULL, 272);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (127, NULL, 273);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (128, NULL, 274);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (129, NULL, 275);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (130, NULL, 276);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (131, NULL, 277);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (132, NULL, 278);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (133, NULL, 279);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (134, NULL, 280);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (135, NULL, 281);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (136, NULL, 282);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (137, NULL, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (138, NULL, 154);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (139, NULL, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (140, NULL, 158);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (141, NULL, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (142, NULL, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (143, NULL, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (144, NULL, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (145, NULL, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (146, NULL, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (147, NULL, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (148, NULL, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (149, NULL, 283);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (150, NULL, 284);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (151, NULL, 285);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (152, NULL, 286);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (153, NULL, 287);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (154, NULL, 288);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (155, NULL, 289);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (156, NULL, 290);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (157, NULL, 291);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (158, NULL, 292);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (159, NULL, 293);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (160, NULL, 294);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (161, NULL, 295);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (162, NULL, 296);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (163, NULL, 297);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (164, NULL, 298);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (165, NULL, 299);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (166, NULL, 300);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (167, NULL, 301);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (168, NULL, 302);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (169, NULL, 303);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (170, NULL, 304);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (171, NULL, 305);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (172, 1, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (173, 1, 2);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (174, 1, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (175, 1, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (176, 1, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (177, 1, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (178, 1, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (179, 1, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (180, 1, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (181, 1, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (182, 1, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (183, 1, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (184, 1, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (185, 1, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (186, 1, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (187, 1, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (188, 1, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (189, 1, 40);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (190, 1, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (191, 1, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (192, 1, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (193, 1, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (194, 1, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (195, 1, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (196, 1, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (197, 1, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (198, 1, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (199, 1, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (200, 1, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (201, 1, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (202, 1, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (203, 1, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (204, 1, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (205, 1, 154);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (206, 1, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (207, 1, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (208, 1, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (209, 1, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (210, 1, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (211, 1, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (212, 1, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (213, 1, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (214, 1, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (215, 1, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (216, 1, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (217, 1, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (218, 1, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (219, 1, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (220, 1, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (221, 1, 116);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (222, 1, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (223, 1, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (224, 1, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (225, 1, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (226, 1, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (227, 1, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (228, 1, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (229, 1, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (230, 1, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (231, 1, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (232, 1, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (233, 1, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (234, 1, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (235, 1, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (236, 1, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (237, 1, 78);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (238, 1, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (239, 1, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (240, 1, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (241, 1, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (242, 1, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (243, 1, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (244, 1, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (245, 1, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (246, 1, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (247, 1, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (248, 1, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (249, 1, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (250, 1, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (251, 1, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (252, 2, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (253, 2, 2);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (254, 2, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (255, 2, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (256, 2, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (257, 2, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (258, 2, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (259, 2, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (260, 2, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (261, 2, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (262, 2, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (263, 2, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (264, 2, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (265, 2, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (266, 2, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (267, 2, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (268, 2, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (269, 2, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (270, 2, 40);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (271, 2, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (272, 2, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (273, 2, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (274, 2, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (275, 2, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (276, 2, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (277, 2, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (278, 2, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (279, 2, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (280, 2, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (281, 2, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (282, 2, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (283, 2, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (284, 2, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (285, 2, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (286, 2, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (287, 2, 78);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (288, 2, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (289, 2, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (290, 2, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (291, 2, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (292, 2, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (293, 2, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (294, 2, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (295, 2, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (296, 2, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (297, 2, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (298, 2, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (299, 2, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (300, 2, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (301, 2, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (302, 2, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (303, 2, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (304, 2, 116);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (305, 2, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (306, 2, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (307, 2, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (308, 2, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (309, 2, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (310, 2, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (311, 2, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (312, 2, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (313, 2, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (314, 2, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (315, 2, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (316, 2, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (317, 2, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (318, 2, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (319, 2, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (320, 2, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (321, 2, 154);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (322, 2, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (323, 2, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (324, 2, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (325, 2, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (326, 2, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (327, 2, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (328, 2, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (329, 2, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (330, 2, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (331, 2, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (332, 2, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (333, 2, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (334, 2, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (335, 2, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (336, 2, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (337, 3, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (338, 3, 2);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (339, 3, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (340, 3, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (341, 3, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (342, 3, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (343, 3, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (344, 3, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (345, 3, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (346, 3, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (347, 3, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (348, 3, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (349, 3, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (350, 3, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (351, 3, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (352, 3, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (353, 3, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (354, 3, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (355, 3, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (356, 3, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (357, 3, 40);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (358, 3, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (359, 3, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (360, 3, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (361, 3, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (362, 3, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (363, 3, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (364, 3, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (365, 3, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (366, 3, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (367, 3, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (368, 3, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (369, 3, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (370, 3, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (371, 3, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (372, 3, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (373, 3, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (374, 3, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (375, 3, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (376, 3, 78);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (377, 3, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (378, 3, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (379, 3, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (380, 3, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (381, 3, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (382, 3, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (383, 3, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (384, 3, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (385, 3, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (386, 3, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (387, 3, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (388, 3, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (389, 3, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (390, 3, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (391, 3, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (392, 3, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (393, 3, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (394, 3, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (395, 3, 116);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (396, 3, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (397, 3, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (398, 3, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (399, 3, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (400, 3, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (401, 3, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (402, 3, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (403, 3, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (404, 3, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (405, 3, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (406, 3, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (407, 3, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (408, 3, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (409, 3, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (410, 3, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (411, 3, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (412, 3, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (413, 3, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (414, 3, 154);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (415, 3, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (416, 3, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (417, 3, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (418, 3, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (419, 3, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (420, 3, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (421, 3, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (422, 3, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (423, 3, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (424, 3, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (425, 3, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (426, 3, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (427, 3, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (428, 3, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (429, 3, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (430, 3, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (431, 3, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (432, 4, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (433, 4, 2);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (434, 4, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (435, 4, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (436, 4, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (437, 4, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (438, 4, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (439, 4, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (440, 4, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (441, 4, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (442, 4, 40);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (443, 4, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (444, 4, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (445, 4, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (446, 4, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (447, 4, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (448, 4, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (449, 4, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (450, 4, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (451, 4, 78);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (452, 4, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (453, 4, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (454, 4, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (455, 4, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (456, 4, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (457, 4, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (458, 4, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (459, 4, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (460, 4, 116);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (461, 4, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (462, 4, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (463, 4, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (464, 4, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (465, 4, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (466, 4, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (467, 4, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (468, 4, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (469, 4, 154);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (470, 4, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (471, 4, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (472, 4, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (473, 4, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (474, 4, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (475, 4, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (476, 4, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (477, 5, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (478, 5, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (479, 5, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (480, 5, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (481, 5, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (482, 5, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (483, 5, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (484, 5, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (485, 5, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (486, 5, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (487, 5, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (488, 5, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (489, 5, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (490, 5, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (491, 5, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (492, 5, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (493, 5, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (494, 5, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (495, 5, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (496, 5, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (497, 5, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (498, 5, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (499, 5, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (500, 5, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (501, 5, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (502, 5, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (503, 5, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (504, 5, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (505, 5, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (506, 5, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (507, 5, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (508, 5, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (509, 5, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (510, 5, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (511, 5, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (512, 5, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (513, 5, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (514, 5, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (515, 5, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (516, 5, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (517, 5, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (518, 5, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (519, 5, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (520, 5, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (521, 5, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (522, 5, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (523, 5, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (524, 5, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (525, 5, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (526, 5, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (527, 5, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (528, 5, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (529, 5, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (530, 5, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (531, 5, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (532, 5, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (533, 5, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (534, 5, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (535, 5, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (536, 5, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (537, 5, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (538, 5, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (539, 5, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (540, 5, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (541, 5, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (542, 5, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (543, 5, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (544, 5, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (545, 5, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (546, 5, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (547, 5, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (548, 5, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (549, 5, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (550, 5, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (551, 5, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (552, 5, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (553, 5, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (554, 5, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (555, 5, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (556, 5, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (557, 5, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (558, 5, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (559, 5, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (560, 5, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (561, 5, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (562, 5, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (563, 5, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (564, 5, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (565, 5, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (566, 5, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (567, 5, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (568, 5, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (569, 5, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (570, 5, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (571, 5, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (572, 5, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (573, 5, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (574, 5, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (575, 5, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (576, 5, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (577, 5, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (578, 5, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (579, 5, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (580, 5, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (581, 5, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (582, 5, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (583, 5, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (584, 5, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (585, 5, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (586, 5, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (587, 6, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (588, 6, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (589, 6, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (590, 6, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (591, 6, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (592, 6, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (593, 6, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (594, 6, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (595, 6, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (596, 6, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (597, 6, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (598, 6, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (599, 6, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (600, 6, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (601, 6, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (602, 6, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (603, 6, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (604, 6, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (605, 6, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (606, 6, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (607, 6, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (608, 6, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (609, 6, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (610, 6, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (611, 6, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (612, 6, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (613, 6, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (614, 6, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (615, 6, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (616, 6, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (617, 6, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (618, 6, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (619, 6, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (620, 6, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (621, 6, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (622, 6, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (623, 6, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (624, 6, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (625, 6, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (626, 6, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (627, 6, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (628, 6, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (629, 6, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (630, 6, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (631, 6, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (632, 6, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (633, 6, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (634, 6, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (635, 6, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (636, 6, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (637, 6, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (638, 6, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (639, 6, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (640, 6, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (641, 6, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (642, 6, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (643, 6, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (644, 6, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (645, 6, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (646, 6, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (647, 6, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (648, 6, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (649, 6, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (650, 6, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (651, 6, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (652, 6, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (653, 6, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (654, 6, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (655, 6, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (656, 6, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (657, 6, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (658, 6, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (659, 6, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (660, 6, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (661, 6, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (662, 6, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (663, 6, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (664, 6, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (665, 18, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (666, 6, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (667, 6, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (668, 6, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (669, 6, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (670, 6, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (671, 6, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (672, 6, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (673, 6, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (674, 6, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (675, 6, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (676, 6, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (677, 6, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (678, 6, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (679, 6, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (680, 6, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (681, 6, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (682, 6, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (683, 6, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (684, 6, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (685, 6, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (686, 6, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (687, 7, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (688, 7, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (689, 7, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (690, 7, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (691, 7, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (692, 7, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (693, 7, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (694, 7, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (695, 7, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (696, 7, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (697, 7, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (698, 7, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (699, 7, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (700, 7, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (701, 7, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (702, 7, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (703, 7, 23);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (704, 7, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (705, 7, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (706, 7, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (707, 7, 35);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (708, 7, 36);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (709, 7, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (710, 7, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (711, 7, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (712, 7, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (713, 7, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (714, 7, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (715, 7, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (716, 7, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (717, 7, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (718, 7, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (719, 7, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (720, 7, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (721, 7, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (722, 7, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (723, 7, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (724, 7, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (725, 7, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (726, 7, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (727, 7, 61);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (728, 7, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (729, 7, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (730, 7, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (731, 7, 73);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (732, 7, 74);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (733, 7, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (734, 7, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (735, 7, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (736, 7, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (737, 7, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (738, 7, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (739, 7, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (740, 7, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (741, 7, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (742, 7, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (743, 7, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (744, 7, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (745, 7, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (746, 7, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (747, 7, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (748, 7, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (749, 7, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (750, 7, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (751, 7, 99);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (752, 7, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (753, 7, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (754, 7, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (755, 7, 111);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (756, 7, 112);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (757, 7, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (758, 7, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (759, 7, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (760, 7, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (761, 7, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (762, 7, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (763, 7, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (764, 7, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (765, 7, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (766, 7, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (767, 7, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (768, 7, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (769, 7, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (770, 7, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (771, 7, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (772, 7, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (773, 7, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (774, 7, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (775, 7, 137);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (776, 7, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (777, 7, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (778, 7, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (779, 7, 149);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (780, 7, 150);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (781, 7, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (782, 7, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (783, 7, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (784, 7, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (785, 7, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (786, 7, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (787, 7, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (788, 7, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (789, 7, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (790, 7, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (791, 7, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (792, 7, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (793, 7, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (794, 7, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (795, 7, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (796, 7, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (797, 7, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (798, 7, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (799, 7, 175);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (800, 7, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (801, 7, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (802, 7, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (803, 7, 187);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (804, 7, 188);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (805, 7, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (806, 7, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (807, 8, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (808, 8, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (809, 8, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (810, 8, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (811, 8, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (812, 8, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (813, 8, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (814, 8, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (815, 8, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (816, 8, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (817, 8, 17);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (818, 8, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (819, 8, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (820, 8, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (821, 8, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (822, 8, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (823, 8, 23);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (824, 8, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (825, 8, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (826, 8, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (827, 8, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (828, 8, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (829, 8, 35);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (830, 8, 36);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (831, 8, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (832, 8, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (833, 8, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (834, 8, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (835, 8, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (836, 8, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (837, 8, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (838, 8, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (839, 8, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (840, 8, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (841, 8, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (842, 8, 55);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (843, 8, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (844, 8, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (845, 8, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (846, 8, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (847, 8, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (848, 8, 61);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (849, 8, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (850, 8, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (851, 8, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (852, 8, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (853, 8, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (854, 8, 73);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (855, 8, 74);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (856, 8, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (857, 8, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (858, 8, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (859, 8, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (860, 8, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (861, 8, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (862, 8, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (863, 8, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (864, 8, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (865, 8, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (866, 8, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (867, 8, 93);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (868, 8, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (869, 8, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (870, 8, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (871, 8, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (872, 8, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (873, 8, 99);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (874, 8, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (875, 8, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (876, 8, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (877, 8, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (878, 8, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (879, 8, 111);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (880, 8, 112);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (881, 8, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (882, 8, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (883, 8, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (884, 8, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (885, 8, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (886, 8, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (887, 8, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (888, 8, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (889, 8, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (890, 8, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (891, 8, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (892, 8, 131);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (893, 8, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (894, 8, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (895, 8, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (896, 8, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (897, 8, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (898, 8, 137);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (899, 8, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (900, 8, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (901, 8, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (902, 8, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (903, 8, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (904, 8, 149);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (905, 8, 150);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (906, 8, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (907, 8, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (908, 8, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (909, 8, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (910, 8, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (911, 8, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (912, 8, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (913, 8, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (914, 8, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (915, 8, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (916, 8, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (917, 8, 169);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (918, 8, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (919, 8, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (920, 8, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (921, 8, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (922, 8, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (923, 8, 175);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (924, 8, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (925, 8, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (926, 8, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (927, 8, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (928, 8, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (929, 8, 187);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (930, 8, 188);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (931, 8, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (932, 9, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (933, 9, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (934, 9, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (935, 9, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (936, 9, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (937, 9, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (938, 9, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (939, 9, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (940, 9, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (941, 9, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (942, 9, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (943, 9, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (944, 9, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (945, 9, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (946, 9, 29);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (947, 9, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (948, 9, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (949, 9, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (950, 9, 33);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (951, 9, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (952, 9, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (953, 9, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (954, 9, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (955, 9, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (956, 9, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (957, 9, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (958, 9, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (959, 9, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (960, 9, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (961, 9, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (962, 9, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (963, 9, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (964, 9, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (965, 9, 67);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (966, 9, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (967, 9, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (968, 9, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (969, 9, 71);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (970, 9, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (971, 9, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (972, 9, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (973, 9, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (974, 9, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (975, 9, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (976, 9, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (977, 9, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (978, 9, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (979, 9, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (980, 9, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (981, 9, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (982, 9, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (983, 9, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (984, 9, 105);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (985, 9, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (986, 9, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (987, 9, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (988, 9, 109);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (989, 9, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (990, 9, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (991, 9, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (992, 9, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (993, 9, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (994, 9, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (995, 9, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (996, 9, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (997, 9, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (998, 9, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (999, 9, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1000, 9, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1001, 9, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1002, 9, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1003, 9, 143);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1004, 9, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1005, 9, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1006, 9, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1007, 9, 147);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1008, 9, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1009, 9, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1010, 9, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1011, 9, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1012, 9, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1013, 9, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1014, 9, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1015, 9, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1016, 9, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1017, 9, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1018, 9, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1019, 9, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1020, 9, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1021, 9, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1022, 9, 181);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1023, 9, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1024, 9, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1025, 9, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1026, 9, 185);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1027, 10, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1028, 10, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1029, 10, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1030, 10, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1031, 10, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1032, 10, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1033, 10, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1034, 10, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1035, 10, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1036, 10, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1037, 10, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1038, 10, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1039, 10, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1040, 10, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1041, 10, 29);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1042, 10, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1043, 10, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1044, 10, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1045, 10, 33);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1046, 10, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1047, 10, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1048, 10, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1049, 10, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1050, 10, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1051, 10, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1052, 10, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1053, 10, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1054, 10, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1055, 10, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1056, 10, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1057, 10, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1058, 10, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1059, 10, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1060, 10, 67);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1061, 10, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1062, 10, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1063, 10, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1064, 10, 71);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1065, 10, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1066, 10, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1067, 10, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1068, 10, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1069, 10, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1070, 10, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1071, 10, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1072, 10, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1073, 10, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1074, 10, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1075, 10, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1076, 10, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1077, 10, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1078, 10, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1079, 10, 105);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1080, 10, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1081, 10, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1082, 10, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1083, 10, 109);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1084, 10, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1085, 10, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1086, 10, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1087, 10, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1088, 10, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1089, 10, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1090, 10, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1091, 10, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1092, 10, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1093, 10, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1094, 10, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1095, 10, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1096, 10, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1097, 10, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1098, 10, 143);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1099, 10, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1100, 10, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1101, 10, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1102, 10, 147);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1103, 10, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1104, 10, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1105, 10, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1106, 10, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1107, 10, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1108, 10, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1109, 10, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1110, 10, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1111, 10, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1112, 10, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1113, 10, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1114, 10, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1115, 10, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1116, 10, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1117, 10, 181);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1118, 10, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1119, 10, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1120, 10, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1121, 10, 185);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1122, 11, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1123, 11, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1124, 11, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1125, 11, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1126, 11, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1127, 11, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1128, 11, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1129, 11, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1130, 11, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1131, 11, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1132, 11, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1133, 11, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1134, 11, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1135, 11, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1136, 11, 29);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1137, 11, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1138, 11, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1139, 11, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1140, 11, 33);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1141, 11, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1142, 11, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1143, 11, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1144, 11, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1145, 11, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1146, 11, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1147, 11, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1148, 11, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1149, 11, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1150, 11, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1151, 11, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1152, 11, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1153, 11, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1154, 11, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1155, 11, 67);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1156, 11, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1157, 11, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1158, 11, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1159, 11, 71);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1160, 11, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1161, 11, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1162, 11, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1163, 11, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1164, 11, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1165, 11, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1166, 11, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1167, 11, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1168, 11, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1169, 11, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1170, 11, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1171, 11, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1172, 11, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1173, 11, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1174, 11, 105);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1175, 11, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1176, 11, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1177, 11, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1178, 11, 109);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1179, 11, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1180, 11, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1181, 11, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1182, 11, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1183, 11, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1184, 11, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1185, 11, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1186, 11, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1187, 11, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1188, 11, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1189, 11, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1190, 11, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1191, 11, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1192, 11, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1193, 11, 143);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1194, 11, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1195, 11, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1196, 11, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1197, 11, 147);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1198, 11, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1199, 11, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1200, 11, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1201, 11, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1202, 11, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1203, 11, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1204, 11, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1205, 11, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1206, 11, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1207, 11, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1208, 11, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1209, 11, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1210, 11, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1211, 11, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1212, 11, 181);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1213, 11, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1214, 11, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1215, 11, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1216, 11, 185);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1217, 12, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1218, 12, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1219, 12, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1220, 12, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1221, 12, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1222, 12, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1223, 12, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1224, 12, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1225, 12, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1226, 12, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1227, 12, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1228, 12, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1229, 12, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1230, 12, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1231, 12, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1232, 12, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1233, 12, 4);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1234, 12, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1235, 12, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1236, 12, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1237, 12, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1238, 12, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1239, 12, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1240, 12, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1241, 12, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1242, 12, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1243, 12, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1244, 12, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1245, 12, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1246, 12, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1247, 12, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1248, 12, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1249, 12, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1250, 12, 42);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1251, 12, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1252, 12, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1253, 12, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1254, 12, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1255, 12, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1256, 12, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1257, 12, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1258, 12, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1259, 12, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1260, 12, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1261, 12, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1262, 12, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1263, 12, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1264, 12, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1265, 12, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1266, 12, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1267, 12, 80);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1268, 12, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1269, 12, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1270, 12, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1271, 12, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1272, 12, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1273, 12, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1274, 12, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1275, 12, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1276, 12, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1277, 12, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1278, 12, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1279, 12, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1280, 12, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1281, 12, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1282, 12, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1283, 12, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1284, 12, 118);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1285, 12, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1286, 12, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1287, 12, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1288, 12, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1289, 12, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1290, 12, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1291, 12, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1292, 12, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1293, 12, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1294, 12, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1295, 12, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1296, 12, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1297, 12, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1298, 12, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1299, 12, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1300, 12, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1301, 12, 156);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1302, 13, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1303, 13, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1304, 13, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1305, 13, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1306, 13, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1307, 13, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1308, 13, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1309, 13, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1310, 13, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1311, 13, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1312, 13, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1313, 13, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1314, 13, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1315, 13, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1316, 13, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1317, 13, 4);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1318, 13, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1319, 13, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1320, 13, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1321, 13, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1322, 13, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1323, 13, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1324, 13, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1325, 13, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1326, 13, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1327, 13, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1328, 13, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1329, 13, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1330, 13, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1331, 13, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1332, 13, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1333, 13, 42);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1334, 13, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1335, 13, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1336, 13, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1337, 13, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1338, 13, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1339, 13, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1340, 13, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1341, 13, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1342, 13, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1343, 13, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1344, 13, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1345, 13, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1346, 13, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1347, 13, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1348, 13, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1349, 13, 80);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1350, 13, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1351, 13, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1352, 13, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1353, 13, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1354, 13, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1355, 13, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1356, 13, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1357, 13, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1358, 13, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1359, 13, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1360, 13, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1361, 13, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1362, 13, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1363, 13, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1364, 13, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1365, 13, 118);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1366, 13, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1367, 13, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1368, 13, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1369, 13, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1370, 13, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1371, 13, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1372, 13, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1373, 13, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1374, 13, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1375, 13, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1376, 13, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1377, 13, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1378, 13, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1379, 13, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1380, 13, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1381, 13, 156);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1382, 14, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1383, 14, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1384, 14, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1385, 14, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1386, 14, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1387, 14, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1388, 14, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1389, 14, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1390, 14, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1391, 14, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1392, 14, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1393, 14, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1394, 14, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1395, 14, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1396, 14, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1397, 14, 4);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1398, 14, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1399, 14, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1400, 14, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1401, 14, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1402, 14, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1403, 14, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1404, 14, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1405, 14, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1406, 14, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1407, 14, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1408, 14, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1409, 14, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1410, 14, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1411, 14, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1412, 14, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1413, 14, 42);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1414, 14, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1415, 14, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1416, 14, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1417, 14, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1418, 14, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1419, 14, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1420, 14, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1421, 14, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1422, 14, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1423, 14, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1424, 14, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1425, 14, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1426, 14, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1427, 14, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1428, 14, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1429, 14, 80);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1430, 14, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1431, 14, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1432, 14, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1433, 14, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1434, 14, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1435, 14, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1436, 14, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1437, 14, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1438, 14, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1439, 14, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1440, 14, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1441, 14, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1442, 14, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1443, 14, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1444, 14, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1445, 14, 118);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1446, 14, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1447, 14, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1448, 14, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1449, 14, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1450, 14, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1451, 14, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1452, 14, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1453, 14, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1454, 14, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1455, 14, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1456, 14, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1457, 14, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1458, 14, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1459, 14, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1460, 14, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1461, 14, 156);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1462, 15, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1463, 15, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1464, 15, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1465, 15, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1466, 15, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1467, 15, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1468, 15, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1469, 15, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1470, 15, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1471, 15, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1472, 15, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1473, 15, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1474, 15, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1475, 15, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1476, 15, 29);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1477, 15, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1478, 15, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1479, 15, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1480, 15, 33);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1481, 15, 5);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1482, 15, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1483, 15, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1484, 15, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1485, 15, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1486, 15, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1487, 15, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1488, 15, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1489, 15, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1490, 15, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1491, 15, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1492, 15, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1493, 15, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1494, 15, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1495, 15, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1496, 15, 67);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1497, 15, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1498, 15, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1499, 15, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1500, 15, 71);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1501, 15, 43);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1502, 15, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1503, 15, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1504, 15, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1505, 15, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1506, 15, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1507, 15, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1508, 15, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1509, 15, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1510, 15, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1511, 15, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1512, 15, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1513, 15, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1514, 15, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1515, 15, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1516, 15, 105);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1517, 15, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1518, 15, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1519, 15, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1520, 15, 109);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1521, 15, 81);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1522, 15, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1523, 15, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1524, 15, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1525, 15, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1526, 15, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1527, 15, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1528, 15, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1529, 15, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1530, 15, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1531, 15, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1532, 15, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1533, 15, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1534, 15, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1535, 15, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1536, 15, 143);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1537, 15, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1538, 15, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1539, 15, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1540, 15, 147);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1541, 15, 119);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1542, 15, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1543, 15, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1544, 15, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1545, 15, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1546, 15, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1547, 15, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1548, 15, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1549, 15, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1550, 15, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1551, 15, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1552, 15, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1553, 15, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1554, 15, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1555, 15, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1556, 15, 181);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1557, 15, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1558, 15, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1559, 15, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1560, 15, 185);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1561, 15, 157);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1562, 16, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1563, 16, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1564, 16, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1565, 16, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1566, 16, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1567, 16, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1568, 16, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1569, 16, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1570, 16, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1571, 16, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1572, 16, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1573, 16, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1574, 16, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1575, 16, 29);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1576, 16, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1577, 16, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1578, 16, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1579, 16, 33);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1580, 16, 5);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1581, 16, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1582, 16, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1583, 16, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1584, 16, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1585, 16, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1586, 16, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1587, 16, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1588, 16, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1589, 16, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1590, 16, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1591, 16, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1592, 16, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1593, 16, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1594, 16, 67);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1595, 16, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1596, 16, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1597, 16, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1598, 16, 71);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1599, 16, 43);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1600, 16, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1601, 16, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1602, 16, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1603, 16, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1604, 16, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1605, 16, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1606, 16, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1607, 16, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1608, 16, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1609, 16, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1610, 16, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1611, 16, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1612, 16, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1613, 16, 105);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1614, 16, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1615, 16, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1616, 16, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1617, 16, 109);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1618, 16, 81);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1619, 16, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1620, 16, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1621, 16, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1622, 16, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1623, 16, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1624, 16, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1625, 16, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1626, 16, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1627, 16, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1628, 16, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1629, 16, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1630, 16, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1631, 16, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1632, 16, 143);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1633, 16, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1634, 16, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1635, 16, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1636, 16, 147);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1637, 16, 119);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1638, 16, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1639, 16, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1640, 16, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1641, 16, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1642, 16, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1643, 16, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1644, 16, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1645, 16, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1646, 16, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1647, 16, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1648, 16, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1649, 16, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1650, 16, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1651, 16, 181);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1652, 16, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1653, 16, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1654, 16, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1655, 16, 185);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1656, 16, 157);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1657, 17, 1);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1658, 17, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1659, 17, 7);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1660, 17, 8);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1661, 17, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1662, 17, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1663, 17, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1664, 17, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1665, 17, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1666, 17, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1667, 17, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1668, 17, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1669, 17, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1670, 17, 29);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1671, 17, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1672, 17, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1673, 17, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1674, 17, 33);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1675, 17, 5);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1676, 17, 39);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1677, 17, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1678, 17, 45);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1679, 17, 46);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1680, 17, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1681, 17, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1682, 17, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1683, 17, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1684, 17, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1685, 17, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1686, 17, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1687, 17, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1688, 17, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1689, 17, 67);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1690, 17, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1691, 17, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1692, 17, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1693, 17, 71);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1694, 17, 43);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1695, 17, 77);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1696, 17, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1697, 17, 83);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1698, 17, 84);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1699, 17, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1700, 17, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1701, 17, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1702, 17, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1703, 17, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1704, 17, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1705, 17, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1706, 17, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1707, 17, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1708, 17, 105);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1709, 17, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1710, 17, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1711, 17, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1712, 17, 109);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1713, 17, 81);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1714, 17, 115);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1715, 17, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1716, 17, 121);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1717, 17, 122);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1718, 17, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1719, 17, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1720, 17, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1721, 17, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1722, 17, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1723, 17, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1724, 17, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1725, 17, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1726, 17, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1727, 17, 143);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1728, 17, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1729, 17, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1730, 17, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1731, 17, 147);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1732, 17, 119);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1733, 17, 153);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1734, 17, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1735, 17, 159);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1736, 17, 160);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1737, 17, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1738, 17, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1739, 17, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1740, 17, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1741, 17, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1742, 17, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1743, 17, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1744, 17, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1745, 17, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1746, 17, 181);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1747, 17, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1748, 17, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1749, 17, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1750, 17, 185);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1751, 17, 157);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1752, 18, 3);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1753, 18, 9);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1754, 18, 10);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1755, 18, 11);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1756, 18, 12);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1757, 18, 13);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1758, 18, 14);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1759, 18, 15);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1760, 18, 26);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1761, 18, 27);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1762, 18, 28);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1763, 18, 30);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1764, 18, 31);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1765, 18, 32);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1766, 18, 5);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1767, 18, 41);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1768, 18, 47);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1769, 18, 48);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1770, 18, 49);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1771, 18, 50);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1772, 18, 51);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1773, 18, 52);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1774, 18, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1775, 18, 64);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1776, 18, 65);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1777, 18, 66);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1778, 18, 68);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1779, 18, 69);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1780, 18, 70);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1781, 18, 43);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1782, 18, 79);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1783, 18, 85);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1784, 18, 86);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1785, 18, 87);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1786, 18, 88);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1787, 18, 89);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1788, 18, 90);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1789, 18, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1790, 18, 102);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1791, 18, 103);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1792, 18, 104);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1793, 18, 106);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1794, 18, 107);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1795, 18, 108);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1796, 18, 81);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1797, 18, 117);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1798, 18, 123);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1799, 18, 124);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1800, 18, 125);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1801, 18, 126);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1802, 18, 127);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1803, 18, 128);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1804, 18, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1805, 18, 140);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1806, 18, 141);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1807, 18, 142);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1808, 18, 144);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1809, 18, 145);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1810, 18, 146);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1811, 18, 119);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1812, 18, 155);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1813, 18, 161);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1814, 18, 162);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1815, 18, 163);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1816, 18, 164);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1817, 18, 165);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1818, 18, 166);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1819, 18, 53);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1820, 18, 178);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1821, 18, 179);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1822, 18, 180);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1823, 18, 182);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1824, 18, 183);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1825, 18, 184);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1826, 18, 157);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1827, 19, 17);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1828, 19, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1829, 19, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1830, 19, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1831, 19, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1832, 19, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1833, 19, 23);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1834, 19, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1835, 19, 25);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1836, 19, 35);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1837, 19, 36);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1838, 19, 37);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1839, 19, 38);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1840, 19, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1841, 19, 55);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1842, 19, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1843, 19, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1844, 19, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1845, 19, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1846, 19, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1847, 19, 61);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1848, 19, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1849, 19, 63);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1850, 19, 73);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1851, 19, 74);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1852, 19, 75);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1853, 19, 76);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1854, 19, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1855, 19, 93);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1856, 19, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1857, 19, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1858, 19, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1859, 19, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1860, 19, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1861, 19, 99);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1862, 19, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1863, 19, 101);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1864, 19, 111);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1865, 19, 112);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1866, 19, 113);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1867, 19, 114);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1868, 19, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1869, 19, 131);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1870, 19, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1871, 19, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1872, 19, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1873, 19, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1874, 19, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1875, 19, 137);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1876, 19, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1877, 19, 139);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1878, 19, 149);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1879, 19, 150);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1880, 19, 151);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1881, 19, 152);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1882, 19, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1883, 19, 169);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1884, 19, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1885, 19, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1886, 19, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1887, 19, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1888, 19, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1889, 19, 175);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1890, 19, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1891, 19, 177);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1892, 19, 187);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1893, 19, 188);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1894, 19, 189);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1895, 19, 190);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1896, 19, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1897, 20, 17);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1898, 20, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1899, 20, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1900, 20, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1901, 20, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1902, 20, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1903, 20, 23);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1904, 20, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1905, 20, 25);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1906, 20, 35);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1907, 20, 36);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1908, 20, 37);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1909, 20, 38);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1910, 20, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1911, 20, 55);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1912, 20, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1913, 20, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1914, 20, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1915, 20, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1916, 20, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1917, 20, 61);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1918, 20, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1919, 20, 63);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1920, 20, 73);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1921, 20, 74);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1922, 20, 75);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1923, 20, 76);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1924, 20, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1925, 20, 93);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1926, 20, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1927, 20, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1928, 20, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1929, 20, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1930, 20, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1931, 20, 99);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1932, 20, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1933, 20, 101);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1934, 20, 111);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1935, 20, 112);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1936, 20, 113);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1937, 20, 114);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1938, 20, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1939, 20, 131);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1940, 20, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1941, 20, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1942, 20, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1943, 20, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1944, 20, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1945, 20, 137);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1946, 20, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1947, 20, 139);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1948, 20, 149);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1949, 20, 150);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1950, 20, 151);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1951, 20, 152);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1952, 20, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1953, 20, 169);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1954, 20, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1955, 20, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1956, 20, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1957, 20, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1958, 20, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1959, 20, 175);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1960, 20, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1961, 20, 177);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1962, 20, 187);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1963, 20, 188);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1964, 20, 189);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1965, 20, 190);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1966, 20, 168);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1967, 21, 17);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1968, 21, 18);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1969, 21, 19);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1970, 21, 20);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1971, 21, 21);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1972, 21, 22);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1973, 21, 23);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1974, 21, 24);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1975, 21, 25);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1976, 21, 35);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1977, 21, 36);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1978, 21, 37);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1979, 21, 38);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1980, 21, 16);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1981, 21, 55);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1982, 21, 56);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1983, 21, 57);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1984, 21, 58);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1985, 21, 59);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1986, 21, 60);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1987, 21, 61);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1988, 21, 62);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1989, 21, 63);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1990, 21, 73);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1991, 21, 74);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1992, 21, 75);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1993, 21, 76);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1994, 21, 54);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1995, 21, 93);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1996, 21, 94);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1997, 21, 95);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1998, 21, 96);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (1999, 21, 97);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2000, 21, 98);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2001, 21, 99);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2002, 21, 100);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2003, 21, 101);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2004, 21, 111);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2005, 21, 112);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2006, 21, 113);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2007, 21, 114);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2008, 21, 92);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2009, 21, 131);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2010, 21, 132);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2011, 21, 133);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2012, 21, 134);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2013, 21, 135);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2014, 21, 136);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2015, 21, 137);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2016, 21, 138);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2017, 21, 139);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2018, 21, 149);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2019, 21, 150);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2020, 21, 151);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2021, 21, 152);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2022, 21, 130);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2023, 21, 169);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2024, 21, 170);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2025, 21, 171);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2026, 21, 172);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2027, 21, 173);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2028, 21, 174);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2029, 21, 175);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2030, 21, 176);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2031, 21, 177);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2032, 21, 187);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2033, 21, 188);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2034, 21, 189);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2035, 21, 190);
INSERT INTO public.pinyin (id, initial_id, final_tone_id) VALUES (2036, 21, 168);


--
-- TOC entry 3438 (class 0 OID 19706)
-- Dependencies: 227
-- Data for Name: hieroglyphic; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3434 (class 0 OID 19686)
-- Dependencies: 223
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3436 (class 0 OID 19697)
-- Dependencies: 225
-- Data for Name: part_of_speech; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3421 (class 0 OID 19604)
-- Dependencies: 210
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3424 (class 0 OID 19623)
-- Dependencies: 213
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 228
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 216
-- Name: finals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.finals_id_seq', 38, true);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 218
-- Name: finals_tone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.finals_tone_id_seq', 305, true);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 232
-- Name: hieroglyph_collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hieroglyph_collections_id_seq', 1, false);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 226
-- Name: hieroglyphic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hieroglyphic_id_seq', 1, false);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 230
-- Name: hsk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hsk_id_seq', 1, false);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 214
-- Name: initials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.initials_id_seq', 21, true);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 222
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.languages_id_seq', 1, false);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 224
-- Name: part_of_speech_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.part_of_speech_id_seq', 1, false);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 220
-- Name: pinyin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pinyin_id_seq', 2036, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 209
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: basket_basket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_basket (
    id integer NOT NULL,
    pic character varying(100),
    sku character varying(64) NOT NULL,
    product_description character varying(256) NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.basket_basket OWNER TO postgres;

--
-- Name: basket_basket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_basket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_basket_id_seq OWNER TO postgres;

--
-- Name: basket_basket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_basket_id_seq OWNED BY public.basket_basket.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: invoices_invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices_invoice (
    id integer NOT NULL,
    invoice_number character varying(64) NOT NULL,
    invoice_date date NOT NULL,
    quantity integer NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.invoices_invoice OWNER TO postgres;

--
-- Name: invoices_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoices_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_invoice_id_seq OWNER TO postgres;

--
-- Name: invoices_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoices_invoice_id_seq OWNED BY public.invoices_invoice.id;


--
-- Name: invoices_invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices_invoices (
    id integer NOT NULL,
    sku character varying(64) NOT NULL,
    product_description character varying(256) NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    value integer NOT NULL,
    invoice_id integer NOT NULL,
    invoice_date date NOT NULL
);


ALTER TABLE public.invoices_invoices OWNER TO postgres;

--
-- Name: invoices_invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoices_invoices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_invoices_id_seq OWNER TO postgres;

--
-- Name: invoices_invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoices_invoices_id_seq OWNED BY public.invoices_invoices.id;


--
-- Name: shop_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_shop (
    id integer NOT NULL,
    sku character varying(64) NOT NULL,
    product_description character varying(256) NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    pic character varying(100)
);


ALTER TABLE public.shop_shop OWNER TO postgres;

--
-- Name: shop_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_shop_id_seq OWNER TO postgres;

--
-- Name: shop_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_shop_id_seq OWNED BY public.shop_shop.id;


--
-- Name: stores_customer_stock_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stores_customer_stock_info (
    id integer NOT NULL,
    area character varying(64) NOT NULL,
    country character varying(64) NOT NULL,
    city character varying(128) NOT NULL,
    store_name character varying(128) NOT NULL,
    sku character varying(64) NOT NULL,
    product_description character varying(256) NOT NULL,
    packing_number character varying(64) NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    value integer
);


ALTER TABLE public.stores_customer_stock_info OWNER TO postgres;

--
-- Name: stores_customer_stock_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stores_customer_stock_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_customer_stock_info_id_seq OWNER TO postgres;

--
-- Name: stores_customer_stock_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stores_customer_stock_info_id_seq OWNED BY public.stores_customer_stock_info.id;


--
-- Name: stores_customer_stock_info_warehouse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stores_customer_stock_info_warehouse (
    id integer NOT NULL,
    customer_stock_info_id integer NOT NULL,
    warehouse_stock_info_id integer NOT NULL
);


ALTER TABLE public.stores_customer_stock_info_warehouse OWNER TO postgres;

--
-- Name: stores_customer_stock_info_warhouse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stores_customer_stock_info_warhouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_customer_stock_info_warhouse_id_seq OWNER TO postgres;

--
-- Name: stores_customer_stock_info_warhouse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stores_customer_stock_info_warhouse_id_seq OWNED BY public.stores_customer_stock_info_warehouse.id;


--
-- Name: warehouse_warehouse_stock_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warehouse_warehouse_stock_info (
    id integer NOT NULL,
    warehouse_location character varying(64) NOT NULL,
    warehouse_name character varying(64) NOT NULL,
    sku character varying(64) NOT NULL,
    product_description character varying(256) NOT NULL,
    invoice_number character varying(64) NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    value integer,
    in_packing boolean NOT NULL,
    purchase_date date NOT NULL,
    warehouse_type character varying(64) NOT NULL
);


ALTER TABLE public.warehouse_warehouse_stock_info OWNER TO postgres;

--
-- Name: warehouse_warehouse_stock_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warehouse_warehouse_stock_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warehouse_warehouse_stock_info_id_seq OWNER TO postgres;

--
-- Name: warehouse_warehouse_stock_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warehouse_warehouse_stock_info_id_seq OWNED BY public.warehouse_warehouse_stock_info.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: basket_basket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_basket ALTER COLUMN id SET DEFAULT nextval('public.basket_basket_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: invoices_invoice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_invoice ALTER COLUMN id SET DEFAULT nextval('public.invoices_invoice_id_seq'::regclass);


--
-- Name: invoices_invoices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_invoices_id_seq'::regclass);


--
-- Name: shop_shop id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_shop ALTER COLUMN id SET DEFAULT nextval('public.shop_shop_id_seq'::regclass);


--
-- Name: stores_customer_stock_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info ALTER COLUMN id SET DEFAULT nextval('public.stores_customer_stock_info_id_seq'::regclass);


--
-- Name: stores_customer_stock_info_warehouse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info_warehouse ALTER COLUMN id SET DEFAULT nextval('public.stores_customer_stock_info_warhouse_id_seq'::regclass);


--
-- Name: warehouse_warehouse_stock_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouse_warehouse_stock_info ALTER COLUMN id SET DEFAULT nextval('public.warehouse_warehouse_stock_info_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add customer_ stock_info	7	add_customer_stock_info
26	Can change customer_ stock_info	7	change_customer_stock_info
27	Can delete customer_ stock_info	7	delete_customer_stock_info
28	Can view customer_ stock_info	7	view_customer_stock_info
29	Can add shop	8	add_shop
30	Can change shop	8	change_shop
31	Can delete shop	8	delete_shop
32	Can view shop	8	view_shop
33	Can add basket	9	add_basket
34	Can change basket	9	change_basket
35	Can delete basket	9	delete_basket
36	Can view basket	9	view_basket
37	Can add basket	10	add_basket
38	Can change basket	10	change_basket
39	Can delete basket	10	delete_basket
40	Can view basket	10	view_basket
41	Can add invoices	11	add_invoices
42	Can change invoices	11	change_invoices
43	Can delete invoices	11	delete_invoices
44	Can view invoices	11	view_invoices
45	Can add warehouse_ stock_info	12	add_warehouse_stock_info
46	Can change warehouse_ stock_info	12	change_warehouse_stock_info
47	Can delete warehouse_ stock_info	12	delete_warehouse_stock_info
48	Can view warehouse_ stock_info	12	view_warehouse_stock_info
49	Can add invoice	13	add_invoice
50	Can change invoice	13	change_invoice
51	Can delete invoice	13	delete_invoice
52	Can view invoice	13	view_invoice
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$216000$FOoUM0URkweq$XpXLv6VgNp5lSPv/fz9Cfh7uhw687nccpiqWLUIak2I=	\N	f	test1				f	t	2021-01-25 17:33:01.436206+01
3	pbkdf2_sha256$216000$NUjXX96eosCs$Kx/10CLqxpjOc2cyODR41lqbjJ7H1HjZU4e7gU4AVpY=	\N	f	ficu				f	t	2021-01-26 19:12:57.701298+01
1	pbkdf2_sha256$216000$Y419Vsd2eUqj$p1v2DnBtdExuErWLL+VQHsWcG1WJZJE+K8eGP22/mNM=	2021-01-26 19:14:13.333406+01	t	pficenes			pficenes@gmail.com	t	t	2021-01-14 18:43:25.240438+01
4	pbkdf2_sha256$216000$uccsui3vOZzi$RNVNePiJN5GDdAp+P/Qkdgcq8MkpUYR2n0RJ8NEasTU=	\N	f	ficu2				f	t	2021-01-26 19:21:49.407434+01
6	pbkdf2_sha256$216000$Kyymh2IewLww$Fc3Fs7YAsEqO9Uhex2m6FIDVrk1soLlXQ3ExbWQAzMo=	2021-01-26 20:48:11.458791+01	f	marta				f	t	2021-01-26 20:48:01.023768+01
5	pbkdf2_sha256$216000$tv399cbMSKaT$OzEpWIC7qQD+PEA3S+P7CpQqiM3De5cPk/VLYhbYzIk=	2021-02-03 12:21:21.93568+01	f	ficek				f	t	2021-01-26 20:26:50.961985+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: basket_basket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket_basket (id, pic, sku, product_description, quantity, price, value) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-01-14 19:06:38.738253+01	9	Denim Pants	2	[{"changed": {"fields": ["pic"]}}]	8	1
2	2021-01-14 19:06:45.248327+01	8	Dark Hat	2	[{"changed": {"fields": ["pic"]}}]	8	1
3	2021-01-14 19:06:53.402683+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
4	2021-01-14 19:07:01.151132+01	6	Black Flip-Flops	2	[{"changed": {"fields": ["pic"]}}]	8	1
5	2021-01-14 19:07:06.928931+01	5	Grey Shoes	2	[{"changed": {"fields": ["pic"]}}]	8	1
6	2021-01-14 19:08:43.774504+01	4	White T-Shirt	2	[{"changed": {"fields": ["pic"]}}]	8	1
7	2021-01-14 19:08:50.812195+01	3	Rose Dress	2	[{"changed": {"fields": ["pic"]}}]	8	1
8	2021-01-14 19:08:57.542818+01	2	Black Jacket	2	[{"changed": {"fields": ["pic"]}}]	8	1
9	2021-01-14 19:09:06.682002+01	1	Red Jacket	2	[{"changed": {"fields": ["pic"]}}]	8	1
10	2021-01-14 20:28:38.707484+01	9	Denim Pants	2	[{"changed": {"fields": ["pic"]}}]	8	1
11	2021-01-14 20:28:48.034259+01	9	Denim Pants	2	[{"changed": {"fields": ["pic"]}}]	8	1
12	2021-01-14 20:30:45.757165+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
13	2021-01-14 20:30:55.061588+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
14	2021-01-15 21:14:05.313753+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
15	2021-01-15 21:14:19.533587+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
16	2021-01-15 21:15:35.312708+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
17	2021-01-15 21:15:42.283747+01	7	Red Blouse	2	[{"changed": {"fields": ["pic"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	stores	customer_stock_info
8	shop	shop
9	shop	basket
10	basket	basket
11	invoices	invoices
12	warehouse	warehouse_stock_info
13	invoices	invoice
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-07 21:27:08.531873+01
2	auth	0001_initial	2021-01-07 21:27:08.583065+01
3	admin	0001_initial	2021-01-07 21:27:08.651771+01
4	admin	0002_logentry_remove_auto_add	2021-01-07 21:27:08.67155+01
5	admin	0003_logentry_add_action_flag_choices	2021-01-07 21:27:08.682252+01
6	contenttypes	0002_remove_content_type_name	2021-01-07 21:27:08.700412+01
7	auth	0002_alter_permission_name_max_length	2021-01-07 21:27:08.706987+01
8	auth	0003_alter_user_email_max_length	2021-01-07 21:27:08.717623+01
9	auth	0004_alter_user_username_opts	2021-01-07 21:27:08.727558+01
10	auth	0005_alter_user_last_login_null	2021-01-07 21:27:08.738337+01
11	auth	0006_require_contenttypes_0002	2021-01-07 21:27:08.742293+01
12	auth	0007_alter_validators_add_error_messages	2021-01-07 21:27:08.752683+01
13	auth	0008_alter_user_username_max_length	2021-01-07 21:27:08.769028+01
14	auth	0009_alter_user_last_name_max_length	2021-01-07 21:27:08.77945+01
15	auth	0010_alter_group_name_max_length	2021-01-07 21:27:08.792362+01
16	auth	0011_update_proxy_permissions	2021-01-07 21:27:08.804847+01
17	entry_view	0001_initial	2021-01-07 21:27:08.821724+01
18	entry_view	0002_auto_20201125_1111	2021-01-07 21:27:08.844297+01
19	entry_view	0003_delete_customer_stock_info	2021-01-07 21:27:08.849821+01
20	sessions	0001_initial	2021-01-07 21:27:08.861546+01
21	shop	0001_initial	2021-01-07 21:27:08.877299+01
22	shop	0002_shop_basket	2021-01-07 21:27:08.883053+01
23	shop	0003_auto_20201203_1615	2021-01-07 21:27:08.888136+01
24	shop	0004_auto_20201203_1617	2021-01-07 21:27:08.893103+01
25	shop	0005_auto_20201203_1618	2021-01-07 21:27:08.89878+01
26	shop	0006_auto_20201203_1626	2021-01-07 21:27:08.903765+01
27	shop	0007_auto_20201203_1631	2021-01-07 21:27:08.908563+01
28	shop	0008_auto_20201203_1651	2021-01-07 21:27:08.913257+01
29	shop	0009_auto_20201203_1652	2021-01-07 21:27:08.917983+01
30	shop	0010_auto_20201203_1655	2021-01-07 21:27:08.922805+01
31	shop	0011_auto_20201203_1710	2021-01-07 21:27:08.92747+01
32	shop	0012_auto_20201203_1712	2021-01-07 21:27:08.932244+01
33	shop	0013_remove_shop_basket	2021-01-07 21:27:08.937281+01
34	shop	0014_basket	2021-01-07 21:27:08.946195+01
35	shop	0015_auto_20201209_0936	2021-01-07 21:27:08.957797+01
36	shop	0016_auto_20201209_0941	2021-01-07 21:27:08.962874+01
37	stores	0001_initial	2021-01-07 21:27:08.975425+01
38	stores	0002_remove_customer_stock_info_customer_name	2021-01-10 15:16:08.232096+01
39	stores	0003_remove_customer_stock_info_value	2021-01-10 17:43:46.892863+01
40	stores	0004_customer_stock_info_value	2021-01-13 19:41:32.400084+01
41	stores	0002_auto_20210113_1945	2021-01-13 20:46:09.676035+01
42	stores	0003_auto_20210113_1946	2021-01-13 20:46:34.562444+01
43	shop	0017_auto_20210114_1747	2021-01-14 18:47:37.187441+01
44	basket	0001_initial	2021-01-15 20:36:00.19201+01
45	shop	0018_remove_shop_value	2021-01-17 19:19:19.413988+01
46	invoices	0001_initial	2021-01-18 21:16:47.932128+01
47	invoices	0002_auto_20210118_2057	2021-01-18 21:57:27.915581+01
48	auth	0012_alter_user_first_name_max_length	2021-01-20 22:35:02.033913+01
49	warehouse	0001_initial	2021-01-23 12:45:25.246435+01
50	warehouse	0002_auto_20210123_1246	2021-01-23 13:47:02.922806+01
51	stores	0004_auto_20210124_1539	2021-01-24 16:40:02.044842+01
52	invoices	0003_auto_20210125_0904	2021-01-25 10:04:56.067953+01
53	stores	0005_customer_stock_info_warhouse	2021-01-25 11:42:29.985642+01
54	stores	0006_auto_20210125_1044	2021-01-25 11:44:09.4966+01
55	stores	0007_auto_20210125_1102	2021-01-25 12:02:24.926052+01
56	stores	0008_auto_20210125_1106	2021-01-25 12:07:01.374368+01
57	stores	0009_auto_20210125_1116	2021-01-25 12:16:07.695273+01
58	stores	0010_auto_20210126_2101	2021-01-26 22:01:11.291657+01
59	invoices	0004_invoices_invoice_date	2021-01-28 19:17:24.512414+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
eeqr1k9f1syaufchfn9fkr2jcpkxa3y6	NDQ0YjliNzM2MWZjMTcyOGE5YzllM2E1ZmUxYjQyMmUwNTJjZmE0ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YWM0Y2UyZjFjMTU2MTFlZWU0NjNiZmQzYzc2YzhlNjIwZjk4MTIzIn0=	2021-01-28 19:06:16.152817+01
ovu2jq1gydxzs3xdqtlmzclrutwtfa2l	NDQ0YjliNzM2MWZjMTcyOGE5YzllM2E1ZmUxYjQyMmUwNTJjZmE0ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YWM0Y2UyZjFjMTU2MTFlZWU0NjNiZmQzYzc2YzhlNjIwZjk4MTIzIn0=	2021-01-28 20:28:31.430633+01
w3vjq3hqe9xiilxv4jg8wvuncdxus13i	NDQ0YjliNzM2MWZjMTcyOGE5YzllM2E1ZmUxYjQyMmUwNTJjZmE0ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YWM0Y2UyZjFjMTU2MTFlZWU0NjNiZmQzYzc2YzhlNjIwZjk4MTIzIn0=	2021-01-29 21:13:46.127022+01
6lek8g5rrnqqevhlnsr80smu49bumlag	.eJxVjMsOwiAQRf-FtSG8B1y69xvIwIBUDU1KuzL-uzbpQrf3nHNfLOK2triNssSJ2JlJdvrdEuZH6TugO_bbzPPc12VKfFf4QQe_zlSel8P9O2g42reuFJyAnBx5bXyxGilka5wxNjmVFVRTABUpjQqsFtZYqF4GkOCzroK9P9VaNvc:1l44Fe:YcbDR5rJY2g927dwViopTSJK5Z4kAV_ANmHErENQYf4	2021-02-08 16:58:02.404603+01
4bha13v6d34ff3flfmjxy1046ink8lhg	.eJxVjMsOwiAQRf-FtSG8B1y69xvIwIBUDU1KuzL-uzbpQrf3nHNfLOK2triNssSJ2JlJdvrdEuZH6TugO_bbzPPc12VKfFf4QQe_zlSel8P9O2g42reuFJyAnBx5bXyxGilka5wxNjmVFVRTABUpjQqsFtZYqF4GkOCzroK9P9VaNvc:1l44na:7nHqZbQd_BxHHPPSiZxuJsIYqnaA_V8fpKWhSkiWu48	2021-02-08 17:33:06.685218+01
t1wlg731bcbcy9iyz5j6j2qb4p0p27n8	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l4sPB:Yc5L-CIvLZbc0UFfWGH6OzoAekh61kxPre12GtXFuZ8	2021-02-10 22:31:13.333393+01
c7yc5gxzzws8yzirx3a1mq2k8rcs9oxn	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l4sTb:gwsuPg_vR0NYfN6ASVNWEm4GZwpn1DBy9Ne2muEONfk	2021-02-10 22:35:47.246238+01
g0w50kp3f0hi8h4k9mkytg6jw76dracr	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l4sY9:4Zb9LDq5_SAfe_zjMd1MCFTcA_PnpT6l75e8I17g7Xk	2021-02-10 22:40:29.79567+01
e2j14wtobkm43rgmkah3kd7exjm3g704	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5Ber:Fd89Y5ToT8g7EGDHX_zNx_IfjelGkc4dToUzF58D1Ps	2021-02-11 19:04:41.86978+01
2gjwzg15raj48xk2bm8d0t1t80avcc4r	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5BgO:D2JJVJYS6ar46keqGnbdz0Zdbu8kovPzRea3nfPgug8	2021-02-11 19:06:16.698824+01
pmdkuqttnnfi695nj376i0f6stwclh94	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5BhP:GxNqdfGLcMv2-RyWpeumaf8UBR6Tbc1ScWhFgx0-Pow	2021-02-11 19:07:19.673842+01
4ickb3rhgsotxqf5iza353cddgxk6uj4	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5mxg:J6-aZPtYkSRjqlz7aZHSxkDjv2Da4glWwWaVvMKc3SY	2021-02-13 10:54:36.878418+01
qzvapdfokpo32eo00aqllw846psey3ae	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5n6B:akMzYyDAGjURcgn15wjxgzzyuHQ7kXWIlk1XbXKjAfA	2021-02-13 11:03:23.733369+01
f73nmppfece3fjhtxl6powvt3rc25b7s	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5n7L:nSVHZf8yQlSdy5AaZ_mxK33iEIXahNA30BYXY5lfGik	2021-02-13 11:04:35.331762+01
awjyt1t2kupgrlw2cqqq25ofj4qkcatx	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5nua:Uv9SOGUv3vFhPPg4gqjafBP7fD5xLKuY72CyiDmCWWM	2021-02-13 11:55:28.915794+01
qyj8j0lezbiy1ukt8jlvsxfg6izjfrja	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l5pqJ:8L7exkC2mvNy2OtFcIQEEhNGCY6EunoGmHS-onoRtss	2021-02-13 13:59:11.603083+01
8wogzn2uninrozuk4m3jnqsb6w83bpfz	.eJxVjEEOwiAQRe_C2pBOhQIu3fcMZAZmpGpoUtqV8e7apAvd_vfef6mI21ri1niJU1YXZdXpdyNMD647yHest1mnua7LRHpX9EGbHufMz-vh_h0UbOVbO4vGE_VsM5-FIKMnI0bEAQwm-QEhQE7UoUASsciAvfMhYTDOdKzeHxChOPA:1l7GDp:JfNINTgwwnAUpdcwjjXEEwUSPxFmQnZ6kh_uc-YA8zc	2021-02-17 12:21:21.948889+01
\.


--
-- Data for Name: invoices_invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoices_invoice (id, invoice_number, invoice_date, quantity, value) FROM stdin;
62	INV951	2021-01-30	4	316
64	INV826	2021-01-30	6	334
\.


--
-- Data for Name: invoices_invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoices_invoices (id, sku, product_description, quantity, price, value, invoice_id, invoice_date) FROM stdin;
151	78WZ923	Black Flip-Flops	2	99	198	62	2021-01-30
152	WI034S2	Grey Shoes	2	59	118	62	2021-01-30
154	78WZ923	Black Flip-Flops	2	99	198	64	2021-01-30
155	WI034S2	Grey Shoes	2	59	118	64	2021-01-30
156	MU09863	White T-Shirt	2	9	18	64	2021-01-30
\.


--
-- Data for Name: shop_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_shop (id, sku, product_description, quantity, price, pic) FROM stdin;
8	GZ782SP	Dark Hat	1	69	dark_hat.jpg
6	78WZ923	Black Flip-Flops	1	99	black_flipflops.jpg
5	WI034S2	Grey Shoes	1	59	grey_shoes.jpg
4	MU09863	White T-Shirt	1	9	white_tshirt.jfif
3	AK83534	Rose Dress	1	39	rose_dress.jpg
2	WL0827P	Black Jacket	1	19	black_jacket.jpg
1	WZ087SJ	Red Jacket	1	29	red_jacket.jpg
9	AZ8709A	Denim Pants	1	89	denim_pants_C3Bh3ZE.jpg
7	FG458PD	Red Blouse	1	49	red_blouse_e8QJwKU.jpg
\.


--
-- Data for Name: stores_customer_stock_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stores_customer_stock_info (id, area, country, city, store_name, sku, product_description, packing_number, quantity, price, value) FROM stdin;
24856	Europe	Spain	Madrid	Madison Square Mall	FG458PD	Red Blouse	PKG42145	25	49	1225
24857	North America	Mexico	Mexico City	The Mall at Westlake	FG458PD	Red Blouse	PKG38037	23	49	1127
24858	Asia	Japan	Keihanshin	McFarland Mall	FG458PD	Red Blouse	PKG48599	24	49	1176
24859	Africa	Tanzania	Dar es Salaam	Montgomery Mall	FG458PD	Red Blouse	PKG20895	18	49	882
24860	North America	Canada	Ottawa	Parkway Place	FG458PD	Red Blouse	PKG83476	15	49	735
24861	Asia	India	New Delhi	Pelican Place at Craft Farms	FG458PD	Red Blouse	PKG99342	9	49	441
24862	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	FG458PD	Red Blouse	PKG8072	13	49	637
24863	North America	Mexico	Mexico City	Quintard Mall	FG458PD	Red Blouse	PKG92605	4	49	196
24864	Asia	China	Beijing	Riverchase Galleria	FG458PD	Red Blouse	PKG27956	23	49	1127
24865	Africa	Sudan	Khartoum	Selma Mall	FG458PD	Red Blouse	PKG66645	19	49	931
24866	Europe	France	Paris	The Shoppes at Bel Air	FG458PD	Red Blouse	PKG49425	20	49	980
24867	North America	Canada	Toronto	The Shoppes at Eastchase	FG458PD	Red Blouse	PKG33631	24	49	1176
24868	Europe	Austria	Vienna	Southgate Mall	FG458PD	Red Blouse	PKG30557	8	49	392
24869	North America	Mexico	Salinas de Hidalgo	Springdale Mall	FG458PD	Red Blouse	PKG55961	4	49	196
24870	Asia	Japan	Keihanshin	The Summit	GZ782SP	Dark Hat	PKG99681	25	69	1725
24871	Africa	Nigeria	Lagos	University Mall	GZ782SP	Dark Hat	PKG39958	13	69	897
24872	Europe	Austria	Vienna	Western Hills Mall	GZ782SP	Dark Hat	PKG79513	11	69	759
24873	Europe	Germany	Berlin	Wiregrass Commons Mall	GZ782SP	Dark Hat	PKG91500	18	69	1242
24874	North America	United States	Washington, D.C.	Arizona Mills	GZ782SP	Dark Hat	PKG27816	23	69	1587
24875	Asia	India	New Delhi	Arrowhead Towne Center	GZ782SP	Dark Hat	PKG52835	6	69	414
24876	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	GZ782SP	Dark Hat	PKG53459	9	69	621
24877	Asia	Russia	Moscow	Chandler Fashion Center	GZ782SP	Dark Hat	PKG57503	14	69	966
24878	Africa	Sudan	Omdurman	Christown Spectrum Mall	GZ782SP	Dark Hat	PKG981	17	69	1173
24879	Europe	Germany	Berlin	Desert Ridge Marketplace	GZ782SP	Dark Hat	PKG82039	18	69	1242
24880	North America	Canada	Toronto	Desert Sky Mall	GZ782SP	Dark Hat	PKG61515	23	69	1587
24881	Europe	Poland	Warsaw	El Con Mall	GZ782SP	Dark Hat	PKG74571	20	69	1380
24882	North America	Mexico	Mexico City	Estrella Falls	GZ782SP	Dark Hat	PKG82494	20	69	1380
24883	Asia	India	New Delhi	Fiesta Mall	GZ782SP	Dark Hat	PKG55789	1	69	69
24884	Europe	Austria	Vienna	Flagstaff Mall	GZ782SP	Dark Hat	PKG33756	21	69	1449
24885	North America	Canada	Ottawa	Foothills Mall	GZ782SP	Dark Hat	PKG97452	12	69	828
24886	Asia	Japan	Tokyo	Kierland Commons	GZ782SP	Dark Hat	PKG70497	13	69	897
24887	Africa	Egypt	Cairo	La Encantada	GZ782SP	Dark Hat	PKG48711	4	69	276
24888	Europe	France	Paris	Los Arcos Mall	GZ782SP	Dark Hat	PKG85362	13	69	897
24889	Europe	Poland	Warsaw	The Mall at Sierra Vista	GZ782SP	Dark Hat	PKG83124	9	69	621
24890	North America	United States	Washington, D.C.	Mesa Riverview	GZ782SP	Dark Hat	PKG825	22	69	1518
24891	Europe	France	Paris	Metrocenter Mall	GZ782SP	Dark Hat	PKG92149	1	69	69
24892	North America	Mexico	Mexico City	Paradise Valley Mall	GZ782SP	Dark Hat	PKG89785	8	69	552
24893	Europe	Germany	Berlin	Park Place	GZ782SP	Dark Hat	PKG99838	7	69	483
24894	North America	Canada	Ottawa	Prescott Gateway Mall	GZ782SP	Dark Hat	PKG81846	5	69	345
24895	Asia	India	New Delhi	SanTan Village	GZ782SP	Dark Hat	PKG97185	23	69	1587
24896	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	GZ782SP	Dark Hat	PKG2454	7	69	483
24897	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	GZ782SP	Dark Hat	PKG20455	14	69	966
24898	Asia	Russia	Moscow	Tanger Outlets	GZ782SP	Dark Hat	PKG56401	10	69	690
24899	Africa	Sudan	Khartoum	Tempe Marketplace	GZ782SP	Dark Hat	PKG37547	15	69	1035
24900	Europe	France	Paris	Tri City Mall	GZ782SP	Dark Hat	PKG96802	3	69	207
24901	North America	United States	Washington, D.C.	Tucson Mall	GZ782SP	Dark Hat	PKG22114	6	69	414
24902	Asia	Japan	Tokyo	Americana at Brand	GZ782SP	Dark Hat	PKG99888	17	69	1173
24903	Africa	Tanzania	Dodoma	Anaheim GardenWalk	GZ782SP	Dark Hat	PKG30510	1	69	69
24904	Europe	Italy	Rome	Anaheim Plaza	GZ782SP	Dark Hat	PKG4223	9	69	621
24905	Asia	India	New Delhi	Antelope Valley Mall	GZ782SP	Dark Hat	PKG9290	25	69	1725
24906	Africa	Nigeria	Lagos	Arden Fair	GZ782SP	Dark Hat	PKG43941	20	69	1380
24907	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	GZ782SP	Dark Hat	PKG94513	2	69	138
24908	North America	Canada	Ottawa	Barstow Mall	GZ782SP	Dark Hat	PKG27349	1	69	69
24909	North America	Mexico	Mexico City	Bay Street Emeryville	GZ782SP	Dark Hat	PKG74010	7	69	483
24910	Asia	Japan	Tokyo	Bayfair Center	GZ782SP	Dark Hat	PKG59712	9	69	621
24911	Africa	Ethiopia	Addis Ababa	Bayshore Mall	GZ782SP	Dark Hat	PKG92709	14	69	966
24912	Asia	China	Beijing	Bella Terra	GZ782SP	Dark Hat	PKG67596	14	69	966
24913	Africa	Sudan	Omdurman	Beverly Center	GZ782SP	Dark Hat	PKG85038	24	69	1656
24914	Europe	Spain	Madrid	Beverly Connection	GZ782SP	Dark Hat	PKG75564	10	69	690
24915	Asia	Russia	Moscow	Brea Mall	GZ782SP	Dark Hat	PKG47017	23	69	1587
24916	Africa	Nigeria	Lagos	Broadway Plaza	GZ782SP	Dark Hat	PKG81905	20	69	1380
24917	Europe	France	Paris	Buena Park Downtown	GZ782SP	Dark Hat	PKG5092	11	69	759
24918	North America	Canada	Ottawa	Burbank Town Center	GZ782SP	Dark Hat	PKG92255	8	69	552
24919	Africa	Egypt	Cairo	Capitola Mall	GZ782SP	Dark Hat	PKG25065	13	69	897
24920	Asia	Japan	Tokyo	Carousel Mall	GZ782SP	Dark Hat	PKG13976	2	69	138
24921	Africa	Sudan	Omdurman	Chico Mall	GZ782SP	Dark Hat	PKG45108	9	69	621
24922	Europe	Germany	Berlin	Chula Vista Center	GZ782SP	Dark Hat	PKG41167	1	69	69
24923	North America	United States	New York	Citadel Outlets	GZ782SP	Dark Hat	PKG78587	4	69	276
24924	Asia	Russia	Moscow	City National Plaza	GZ782SP	Dark Hat	PKG57244	22	69	1518
24925	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	GZ782SP	Dark Hat	PKG85379	6	69	414
24926	Europe	France	Paris	The Collection at RiverPark	GZ782SP	Dark Hat	PKG60224	19	69	1311
24927	North America	Mexico	Mexico City	The Commons at Calabasas	GZ782SP	Dark Hat	PKG58591	10	69	690
24928	Europe	Germany	Berlin	Del Amo Fashion Center	GZ782SP	Dark Hat	PKG94232	9	69	621
24929	Asia	Japan	Tokyo	Del Monte Center	GZ782SP	Dark Hat	PKG37695	6	69	414
24930	Africa	Egypt	Cairo	Desert Fashion Plaza	GZ782SP	Dark Hat	PKG94497	13	69	897
24931	Asia	Russia	Moscow	Downtown Commons	GZ782SP	Dark Hat	PKG32838	18	69	1242
24932	Africa	Tanzania	Dodoma	Downtown Disney	GZ782SP	Dark Hat	PKG91309	16	69	1104
24933	Europe	France	Paris	El Cerrito Plaza	GZ782SP	Dark Hat	PKG67536	25	69	1725
24934	North America	Canada	Toronto	East Bay Science and Technology Center	GZ782SP	Dark Hat	PKG64804	10	69	690
24935	Asia	China	Shanghai	Eastland Center	GZ782SP	Dark Hat	PKG63906	17	69	1173
24936	Africa	Nigeria	Lagos	Eastridge Center	GZ782SP	Dark Hat	PKG52314	22	69	1518
24937	Europe	Spain	Madrid	Fallbrook Center	GZ782SP	Dark Hat	PKG53020	2	69	138
24938	North America	United States	Washington, D.C.	Fashion Fair	GZ782SP	Dark Hat	PKG72749	22	69	1518
24939	Europe	Poland	Warsaw	Auburn Mall	GZ782SP	Dark Hat	PKG95462	22	69	1518
24940	North America	United States	Washington, D.C.	Bridge Street Town Centre	GZ782SP	Dark Hat	PKG12340	20	69	1380
24941	Asia	China	Beijing	Brookwood Village	GZ782SP	Dark Hat	PKG19406	14	69	966
24942	Africa	Nigeria	Abuja	Century Plaza	GZ782SP	Dark Hat	PKG98531	15	69	1035
24943	Europe	Germany	Berlin	Decatur Mall	AZ8709A	Denim Pants	PKG16240	17	89	1513
24944	Europe	Austria	Vienna	Eastdale Mall	AZ8709A	Denim Pants	PKG26409	12	89	1068
24945	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	AZ8709A	Denim Pants	PKG91028	4	89	356
24946	Asia	Russia	Moscow	Eastwood Mall	AZ8709A	Denim Pants	PKG14898	1	89	89
24947	Africa	Ethiopia	Addis Ababa	Florence Mall	AZ8709A	Denim Pants	PKG64110	18	89	1602
24948	North America	Canada	Ottawa	Gadsden Mall	AZ8709A	Denim Pants	PKG9229	2	89	178
24949	Asia	India	New Delhi	Heart of Huntsville Mall	AZ8709A	Denim Pants	PKG74469	5	89	445
24950	Africa	Egypt	Cairo	High Point Town Center	AZ8709A	Denim Pants	PKG46622	17	89	1513
24951	Europe	France	Paris	Jasper Mall	AZ8709A	Denim Pants	PKG26077	16	89	1424
24952	Europe	Spain	Madrid	Madison Square Mall	AZ8709A	Denim Pants	PKG37754	22	89	1958
24953	North America	Mexico	Mexico City	The Mall at Westlake	AZ8709A	Denim Pants	PKG90457	9	89	801
24954	Asia	Japan	Keihanshin	McFarland Mall	AZ8709A	Denim Pants	PKG2602	5	89	445
24955	Africa	Tanzania	Dar es Salaam	Montgomery Mall	AZ8709A	Denim Pants	PKG60913	23	89	2047
24956	North America	Canada	Ottawa	Parkway Place	AZ8709A	Denim Pants	PKG22453	25	89	2225
24957	Asia	India	New Delhi	Pelican Place at Craft Farms	AZ8709A	Denim Pants	PKG53374	16	89	1424
24958	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	AZ8709A	Denim Pants	PKG59306	20	89	1780
24959	North America	Mexico	Mexico City	Quintard Mall	AZ8709A	Denim Pants	PKG8405	4	89	356
24960	Asia	China	Beijing	Riverchase Galleria	AZ8709A	Denim Pants	PKG68341	5	89	445
24961	Africa	Sudan	Khartoum	Selma Mall	AZ8709A	Denim Pants	PKG8622	9	89	801
24962	Europe	France	Paris	The Shoppes at Bel Air	AZ8709A	Denim Pants	PKG63406	25	89	2225
24963	North America	Canada	Toronto	The Shoppes at Eastchase	AZ8709A	Denim Pants	PKG35569	12	89	1068
24964	Europe	Austria	Vienna	Southgate Mall	AZ8709A	Denim Pants	PKG99987	16	89	1424
24965	North America	Mexico	Salinas de Hidalgo	Springdale Mall	AZ8709A	Denim Pants	PKG49889	24	89	2136
24966	Asia	Japan	Keihanshin	The Summit	AZ8709A	Denim Pants	PKG96478	16	89	1424
24967	Africa	Nigeria	Lagos	University Mall	AZ8709A	Denim Pants	PKG26136	5	89	445
24968	Europe	Austria	Vienna	Western Hills Mall	AZ8709A	Denim Pants	PKG30699	21	89	1869
24969	Europe	Germany	Berlin	Wiregrass Commons Mall	AZ8709A	Denim Pants	PKG99304	1	89	89
24970	North America	United States	Washington, D.C.	Arizona Mills	AZ8709A	Denim Pants	PKG83085	23	89	2047
24971	Asia	India	New Delhi	Arrowhead Towne Center	AZ8709A	Denim Pants	PKG78	21	89	1869
24972	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	AZ8709A	Denim Pants	PKG90913	13	89	1157
24973	Asia	Russia	Moscow	Chandler Fashion Center	AZ8709A	Denim Pants	PKG90835	23	89	2047
24974	Africa	Sudan	Omdurman	Christown Spectrum Mall	AZ8709A	Denim Pants	PKG22160	10	89	890
24975	Europe	Germany	Berlin	Desert Ridge Marketplace	AZ8709A	Denim Pants	PKG60717	16	89	1424
24976	North America	Canada	Toronto	Desert Sky Mall	AZ8709A	Denim Pants	PKG86829	21	89	1869
24977	Europe	Poland	Warsaw	El Con Mall	AZ8709A	Denim Pants	PKG72290	3	89	267
24978	North America	Mexico	Mexico City	Estrella Falls	AZ8709A	Denim Pants	PKG98973	12	89	1068
24979	Asia	India	New Delhi	Fiesta Mall	AZ8709A	Denim Pants	PKG86607	15	89	1335
24980	Europe	Austria	Vienna	Flagstaff Mall	AZ8709A	Denim Pants	PKG74046	12	89	1068
24981	North America	Canada	Ottawa	Foothills Mall	AZ8709A	Denim Pants	PKG41445	11	89	979
24982	Asia	Japan	Tokyo	Kierland Commons	AZ8709A	Denim Pants	PKG60509	15	89	1335
24983	Africa	Egypt	Cairo	La Encantada	AZ8709A	Denim Pants	PKG26819	24	89	2136
24984	Europe	France	Paris	Los Arcos Mall	AZ8709A	Denim Pants	PKG31971	4	89	356
24985	Europe	Poland	Warsaw	The Mall at Sierra Vista	AZ8709A	Denim Pants	PKG78594	16	89	1424
24986	North America	United States	Washington, D.C.	Mesa Riverview	AZ8709A	Denim Pants	PKG71120	22	89	1958
24987	Europe	France	Paris	Metrocenter Mall	AZ8709A	Denim Pants	PKG72069	23	89	2047
24988	North America	Mexico	Mexico City	Paradise Valley Mall	AZ8709A	Denim Pants	PKG24144	2	89	178
24989	Europe	Germany	Berlin	Park Place	AZ8709A	Denim Pants	PKG49868	19	89	1691
24990	North America	Canada	Ottawa	Prescott Gateway Mall	AZ8709A	Denim Pants	PKG48203	22	89	1958
24991	Asia	India	New Delhi	SanTan Village	AZ8709A	Denim Pants	PKG22437	21	89	1869
24992	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	AZ8709A	Denim Pants	PKG10400	25	89	2225
24993	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	AZ8709A	Denim Pants	PKG36507	25	89	2225
24994	Asia	Russia	Moscow	Tanger Outlets	AZ8709A	Denim Pants	PKG25063	22	89	1958
24995	Africa	Sudan	Khartoum	Tempe Marketplace	AZ8709A	Denim Pants	PKG52329	5	89	445
24996	Europe	France	Paris	Tri City Mall	AZ8709A	Denim Pants	PKG67637	2	89	178
24997	North America	United States	Washington, D.C.	Tucson Mall	AZ8709A	Denim Pants	PKG53382	12	89	1068
24998	Asia	Japan	Tokyo	Americana at Brand	AZ8709A	Denim Pants	PKG37772	13	89	1157
24999	Africa	Tanzania	Dodoma	Anaheim GardenWalk	AZ8709A	Denim Pants	PKG10931	8	89	712
25000	Europe	Italy	Rome	Anaheim Plaza	AZ8709A	Denim Pants	PKG1197	8	89	712
25001	Asia	India	New Delhi	Antelope Valley Mall	AZ8709A	Denim Pants	PKG5553	3	89	267
25002	Africa	Nigeria	Lagos	Arden Fair	AZ8709A	Denim Pants	PKG26321	5	89	445
25003	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	AZ8709A	Denim Pants	PKG8415	14	89	1246
25004	North America	Canada	Ottawa	Barstow Mall	AZ8709A	Denim Pants	PKG86204	22	89	1958
25005	North America	Mexico	Mexico City	Bay Street Emeryville	AZ8709A	Denim Pants	PKG22742	9	89	801
25006	Asia	Japan	Tokyo	Bayfair Center	AZ8709A	Denim Pants	PKG78365	23	89	2047
25007	Africa	Ethiopia	Addis Ababa	Bayshore Mall	AZ8709A	Denim Pants	PKG18477	2	89	178
25008	Asia	China	Beijing	Bella Terra	AZ8709A	Denim Pants	PKG28402	14	89	1246
25009	Africa	Sudan	Omdurman	Beverly Center	AZ8709A	Denim Pants	PKG20473	17	89	1513
25010	Europe	Spain	Madrid	Beverly Connection	AZ8709A	Denim Pants	PKG61157	11	89	979
25011	Asia	Russia	Moscow	Brea Mall	AZ8709A	Denim Pants	PKG47761	10	89	890
25012	Africa	Nigeria	Lagos	Broadway Plaza	AZ8709A	Denim Pants	PKG24107	1	89	89
25013	Europe	France	Paris	Buena Park Downtown	AZ8709A	Denim Pants	PKG32140	13	89	1157
25014	North America	Canada	Ottawa	Burbank Town Center	AZ8709A	Denim Pants	PKG87348	2	89	178
25015	Africa	Egypt	Cairo	Capitola Mall	AZ8709A	Denim Pants	PKG80755	2	89	178
25016	Europe	Poland	Warsaw	Auburn Mall	WZ087SJ	Red Jacket	PKG61222	19	29	551
25017	North America	United States	Washington, D.C.	Bridge Street Town Centre	WZ087SJ	Red Jacket	PKG67344	8	29	232
25018	Asia	China	Beijing	Brookwood Village	WZ087SJ	Red Jacket	PKG27995	20	29	580
25019	Africa	Nigeria	Abuja	Century Plaza	WZ087SJ	Red Jacket	PKG96264	6	29	174
25020	Europe	Germany	Berlin	Decatur Mall	WZ087SJ	Red Jacket	PKG77405	20	29	580
25021	Europe	Austria	Vienna	Eastdale Mall	WZ087SJ	Red Jacket	PKG16382	4	29	116
25022	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	WZ087SJ	Red Jacket	PKG80551	10	29	290
25023	Asia	Russia	Moscow	Eastwood Mall	WZ087SJ	Red Jacket	PKG83776	15	29	435
25024	Africa	Ethiopia	Addis Ababa	Florence Mall	WZ087SJ	Red Jacket	PKG8089	24	29	696
25025	North America	Canada	Ottawa	Gadsden Mall	WZ087SJ	Red Jacket	PKG15773	25	29	725
25026	Asia	India	New Delhi	Heart of Huntsville Mall	WZ087SJ	Red Jacket	PKG57477	2	29	58
25027	Africa	Egypt	Cairo	High Point Town Center	WZ087SJ	Red Jacket	PKG79801	13	29	377
25028	Europe	France	Paris	Jasper Mall	WZ087SJ	Red Jacket	PKG51111	25	29	725
25029	Europe	Spain	Madrid	Madison Square Mall	WZ087SJ	Red Jacket	PKG22458	25	29	725
25030	North America	Mexico	Mexico City	The Mall at Westlake	WZ087SJ	Red Jacket	PKG68850	5	29	145
25031	Asia	Japan	Keihanshin	McFarland Mall	WZ087SJ	Red Jacket	PKG29047	6	29	174
25032	Africa	Tanzania	Dar es Salaam	Montgomery Mall	WZ087SJ	Red Jacket	PKG5379	19	29	551
25033	North America	Canada	Ottawa	Parkway Place	WZ087SJ	Red Jacket	PKG9304	17	29	493
25034	Asia	India	New Delhi	Pelican Place at Craft Farms	WZ087SJ	Red Jacket	PKG9102	19	29	551
25035	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	WZ087SJ	Red Jacket	PKG48309	1	29	29
25036	North America	Mexico	Mexico City	Quintard Mall	WZ087SJ	Red Jacket	PKG74738	20	29	580
25037	Asia	China	Beijing	Riverchase Galleria	WZ087SJ	Red Jacket	PKG15557	24	29	696
25038	Africa	Sudan	Khartoum	Selma Mall	WZ087SJ	Red Jacket	PKG10429	2	29	58
25039	Europe	France	Paris	The Shoppes at Bel Air	WZ087SJ	Red Jacket	PKG8408	4	29	116
25040	North America	Canada	Toronto	The Shoppes at Eastchase	WZ087SJ	Red Jacket	PKG91805	7	29	203
25041	Europe	Austria	Vienna	Southgate Mall	WZ087SJ	Red Jacket	PKG94768	7	29	203
25042	North America	Mexico	Salinas de Hidalgo	Springdale Mall	WZ087SJ	Red Jacket	PKG56196	3	29	87
25043	Asia	Japan	Keihanshin	The Summit	WZ087SJ	Red Jacket	PKG87427	16	29	464
25044	Africa	Nigeria	Lagos	University Mall	WZ087SJ	Red Jacket	PKG21469	22	29	638
25045	Europe	Austria	Vienna	Western Hills Mall	WZ087SJ	Red Jacket	PKG5144	23	29	667
25046	Europe	Germany	Berlin	Wiregrass Commons Mall	WZ087SJ	Red Jacket	PKG7954	19	29	551
25047	North America	United States	Washington, D.C.	Arizona Mills	WZ087SJ	Red Jacket	PKG60087	3	29	87
25048	Asia	India	New Delhi	Arrowhead Towne Center	WZ087SJ	Red Jacket	PKG91302	13	29	377
25049	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	WZ087SJ	Red Jacket	PKG1630	4	29	116
25050	Asia	Russia	Moscow	Chandler Fashion Center	WZ087SJ	Red Jacket	PKG93313	13	29	377
25051	Africa	Sudan	Omdurman	Christown Spectrum Mall	WZ087SJ	Red Jacket	PKG31707	23	29	667
25052	Europe	Germany	Berlin	Desert Ridge Marketplace	WZ087SJ	Red Jacket	PKG70876	12	29	348
25053	North America	Canada	Toronto	Desert Sky Mall	WZ087SJ	Red Jacket	PKG94262	7	29	203
25054	Europe	Poland	Warsaw	El Con Mall	WZ087SJ	Red Jacket	PKG24638	2	29	58
25055	North America	Mexico	Mexico City	Estrella Falls	WZ087SJ	Red Jacket	PKG11645	5	29	145
25056	Asia	India	New Delhi	Fiesta Mall	WZ087SJ	Red Jacket	PKG99164	16	29	464
25057	Europe	Austria	Vienna	Flagstaff Mall	WZ087SJ	Red Jacket	PKG48798	7	29	203
25058	North America	Canada	Ottawa	Foothills Mall	WZ087SJ	Red Jacket	PKG6547	11	29	319
25059	Asia	Japan	Tokyo	Kierland Commons	WZ087SJ	Red Jacket	PKG62153	6	29	174
25060	Africa	Egypt	Cairo	La Encantada	WZ087SJ	Red Jacket	PKG32400	22	29	638
25061	Europe	France	Paris	Los Arcos Mall	WZ087SJ	Red Jacket	PKG8967	22	29	638
25062	Europe	Poland	Warsaw	The Mall at Sierra Vista	WZ087SJ	Red Jacket	PKG27490	10	29	290
25063	North America	United States	Washington, D.C.	Mesa Riverview	WZ087SJ	Red Jacket	PKG80003	6	29	174
25064	Europe	France	Paris	Metrocenter Mall	WZ087SJ	Red Jacket	PKG43351	20	29	580
25065	North America	Mexico	Mexico City	Paradise Valley Mall	WZ087SJ	Red Jacket	PKG43412	12	29	348
25066	Europe	Germany	Berlin	Park Place	WZ087SJ	Red Jacket	PKG54407	21	29	609
25067	North America	Canada	Ottawa	Prescott Gateway Mall	WZ087SJ	Red Jacket	PKG30415	19	29	551
25068	Asia	India	New Delhi	SanTan Village	WZ087SJ	Red Jacket	PKG26097	21	29	609
25069	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	WZ087SJ	Red Jacket	PKG64481	18	29	522
25070	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	WZ087SJ	Red Jacket	PKG18291	21	29	609
25071	Asia	Russia	Moscow	Tanger Outlets	WZ087SJ	Red Jacket	PKG99997	24	29	696
25072	Africa	Sudan	Khartoum	Tempe Marketplace	WZ087SJ	Red Jacket	PKG14242	3	29	87
25073	Europe	France	Paris	Tri City Mall	WZ087SJ	Red Jacket	PKG41675	15	29	435
25074	North America	United States	Washington, D.C.	Tucson Mall	WZ087SJ	Red Jacket	PKG28405	22	29	638
25075	Asia	Japan	Tokyo	Americana at Brand	WZ087SJ	Red Jacket	PKG75321	18	29	522
25076	Africa	Tanzania	Dodoma	Anaheim GardenWalk	WZ087SJ	Red Jacket	PKG1212	17	29	493
25077	Europe	Italy	Rome	Anaheim Plaza	WZ087SJ	Red Jacket	PKG1860	15	29	435
25078	Asia	India	New Delhi	Antelope Valley Mall	WZ087SJ	Red Jacket	PKG61629	5	29	145
25079	Africa	Nigeria	Lagos	Arden Fair	WZ087SJ	Red Jacket	PKG75374	11	29	319
25080	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	WZ087SJ	Red Jacket	PKG20558	17	29	493
25081	North America	Canada	Ottawa	Barstow Mall	WZ087SJ	Red Jacket	PKG75844	1	29	29
25082	North America	Mexico	Mexico City	Bay Street Emeryville	WZ087SJ	Red Jacket	PKG90501	4	29	116
25083	Asia	Japan	Tokyo	Bayfair Center	WZ087SJ	Red Jacket	PKG74784	24	29	696
25084	Africa	Ethiopia	Addis Ababa	Bayshore Mall	WZ087SJ	Red Jacket	PKG60627	5	29	145
25085	Asia	China	Beijing	Bella Terra	WZ087SJ	Red Jacket	PKG26350	21	29	609
25086	Africa	Sudan	Omdurman	Beverly Center	WZ087SJ	Red Jacket	PKG79660	3	29	87
25087	Europe	Spain	Madrid	Beverly Connection	WZ087SJ	Red Jacket	PKG74579	9	29	261
25088	Asia	Russia	Moscow	Brea Mall	WZ087SJ	Red Jacket	PKG52965	9	29	261
25089	Africa	Nigeria	Lagos	Broadway Plaza	WZ087SJ	Red Jacket	PKG63805	21	29	609
25090	Europe	France	Paris	Buena Park Downtown	WZ087SJ	Red Jacket	PKG88424	12	29	348
25091	North America	Canada	Ottawa	Burbank Town Center	WZ087SJ	Red Jacket	PKG45634	24	29	696
25092	Africa	Egypt	Cairo	Capitola Mall	WZ087SJ	Red Jacket	PKG15753	23	29	667
25093	Asia	Japan	Tokyo	Carousel Mall	WZ087SJ	Red Jacket	PKG84059	23	29	667
25094	Africa	Sudan	Omdurman	Chico Mall	WZ087SJ	Red Jacket	PKG57367	12	29	348
25095	Europe	Germany	Berlin	Chula Vista Center	WZ087SJ	Red Jacket	PKG29057	20	29	580
25096	North America	United States	New York	Citadel Outlets	WZ087SJ	Red Jacket	PKG8546	11	29	319
25097	Asia	Russia	Moscow	City National Plaza	WZ087SJ	Red Jacket	PKG98397	6	29	174
25098	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	WZ087SJ	Red Jacket	PKG72742	14	29	406
25099	Europe	France	Paris	The Collection at RiverPark	WZ087SJ	Red Jacket	PKG42869	19	29	551
25100	North America	Mexico	Mexico City	The Commons at Calabasas	WZ087SJ	Red Jacket	PKG4003	20	29	580
25101	Europe	Germany	Berlin	Del Amo Fashion Center	WZ087SJ	Red Jacket	PKG92449	12	29	348
25102	Asia	Japan	Tokyo	Del Monte Center	WZ087SJ	Red Jacket	PKG59447	24	29	696
25103	Africa	Egypt	Cairo	Desert Fashion Plaza	WZ087SJ	Red Jacket	PKG87901	9	29	261
25104	Asia	Russia	Moscow	Downtown Commons	WZ087SJ	Red Jacket	PKG30635	18	29	522
25105	Africa	Tanzania	Dodoma	Downtown Disney	WZ087SJ	Red Jacket	PKG89595	23	29	667
25106	Europe	France	Paris	El Cerrito Plaza	WZ087SJ	Red Jacket	PKG72027	20	29	580
25107	North America	Canada	Toronto	East Bay Science and Technology Center	WZ087SJ	Red Jacket	PKG60064	6	29	174
25108	Asia	China	Shanghai	Eastland Center	WZ087SJ	Red Jacket	PKG15807	5	29	145
25109	Africa	Nigeria	Lagos	Eastridge Center	WZ087SJ	Red Jacket	PKG75781	24	29	696
25110	Europe	Spain	Madrid	Fallbrook Center	WZ087SJ	Red Jacket	PKG8803	24	29	696
25111	North America	United States	Washington, D.C.	Fashion Fair	WZ087SJ	Red Jacket	PKG22314	12	29	348
25112	Europe	Poland	Warsaw	Auburn Mall	WL0827P	Black Jacket	PKG7514	10	19	190
25113	North America	United States	Washington, D.C.	Bridge Street Town Centre	WL0827P	Black Jacket	PKG62	13	19	247
25114	Asia	China	Beijing	Brookwood Village	WL0827P	Black Jacket	PKG67672	22	19	418
25115	Africa	Nigeria	Abuja	Century Plaza	WL0827P	Black Jacket	PKG76144	6	19	114
25116	Europe	Germany	Berlin	Decatur Mall	WL0827P	Black Jacket	PKG94988	15	19	285
25117	Europe	Austria	Vienna	Eastdale Mall	WL0827P	Black Jacket	PKG56905	10	19	190
25118	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	WL0827P	Black Jacket	PKG87734	20	19	380
25119	Asia	Russia	Moscow	Eastwood Mall	WL0827P	Black Jacket	PKG81243	15	19	285
25120	Africa	Ethiopia	Addis Ababa	Florence Mall	WL0827P	Black Jacket	PKG76052	1	19	19
25121	North America	Canada	Ottawa	Gadsden Mall	WL0827P	Black Jacket	PKG54894	16	19	304
25122	Asia	India	New Delhi	Heart of Huntsville Mall	WL0827P	Black Jacket	PKG19604	6	19	114
25123	Africa	Egypt	Cairo	High Point Town Center	WL0827P	Black Jacket	PKG51694	24	19	456
25124	Europe	France	Paris	Jasper Mall	WL0827P	Black Jacket	PKG78035	18	19	342
25125	Europe	Spain	Madrid	Madison Square Mall	WL0827P	Black Jacket	PKG67453	21	19	399
25126	North America	Mexico	Mexico City	The Mall at Westlake	WL0827P	Black Jacket	PKG45243	15	19	285
25127	Asia	Japan	Keihanshin	McFarland Mall	WL0827P	Black Jacket	PKG33999	5	19	95
25128	Africa	Tanzania	Dar es Salaam	Montgomery Mall	WL0827P	Black Jacket	PKG10721	8	19	152
25129	North America	Canada	Ottawa	Parkway Place	WL0827P	Black Jacket	PKG88336	17	19	323
25130	Asia	India	New Delhi	Pelican Place at Craft Farms	WL0827P	Black Jacket	PKG79611	9	19	171
25131	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	WL0827P	Black Jacket	PKG90170	19	19	361
25132	North America	Mexico	Mexico City	Quintard Mall	WL0827P	Black Jacket	PKG46279	17	19	323
25133	Asia	China	Beijing	Riverchase Galleria	WL0827P	Black Jacket	PKG68479	11	19	209
25134	Africa	Sudan	Khartoum	Selma Mall	WL0827P	Black Jacket	PKG82334	5	19	95
25135	Europe	France	Paris	The Shoppes at Bel Air	WL0827P	Black Jacket	PKG66103	11	19	209
25136	North America	Canada	Toronto	The Shoppes at Eastchase	WL0827P	Black Jacket	PKG73790	13	19	247
25137	Europe	Austria	Vienna	Southgate Mall	WL0827P	Black Jacket	PKG81098	21	19	399
25138	North America	Mexico	Salinas de Hidalgo	Springdale Mall	WL0827P	Black Jacket	PKG58323	20	19	380
25139	Asia	Japan	Keihanshin	The Summit	WL0827P	Black Jacket	PKG63865	20	19	380
25140	Africa	Nigeria	Lagos	University Mall	WL0827P	Black Jacket	PKG5563	23	19	437
25141	Europe	Austria	Vienna	Western Hills Mall	WL0827P	Black Jacket	PKG89554	9	19	171
25142	Europe	Germany	Berlin	Wiregrass Commons Mall	WL0827P	Black Jacket	PKG48049	3	19	57
25143	North America	United States	Washington, D.C.	Arizona Mills	WL0827P	Black Jacket	PKG44319	19	19	361
25144	Asia	India	New Delhi	Arrowhead Towne Center	WL0827P	Black Jacket	PKG32441	9	19	171
25145	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	WL0827P	Black Jacket	PKG42553	12	19	228
25146	Asia	Russia	Moscow	Chandler Fashion Center	WL0827P	Black Jacket	PKG34688	11	19	209
25147	Africa	Sudan	Omdurman	Christown Spectrum Mall	WL0827P	Black Jacket	PKG98334	23	19	437
25148	Europe	Germany	Berlin	Desert Ridge Marketplace	WL0827P	Black Jacket	PKG53089	15	19	285
25149	North America	Canada	Toronto	Desert Sky Mall	WL0827P	Black Jacket	PKG38262	21	19	399
25150	Europe	Poland	Warsaw	El Con Mall	WL0827P	Black Jacket	PKG63302	15	19	285
25151	North America	Mexico	Mexico City	Estrella Falls	WL0827P	Black Jacket	PKG34894	20	19	380
25152	Asia	India	New Delhi	Fiesta Mall	WL0827P	Black Jacket	PKG78280	14	19	266
25153	Europe	Austria	Vienna	Flagstaff Mall	WL0827P	Black Jacket	PKG81645	3	19	57
25154	North America	Canada	Ottawa	Foothills Mall	WL0827P	Black Jacket	PKG41088	7	19	133
25155	Asia	Japan	Tokyo	Kierland Commons	WL0827P	Black Jacket	PKG36697	13	19	247
25156	Africa	Egypt	Cairo	La Encantada	WL0827P	Black Jacket	PKG69092	18	19	342
25157	Europe	France	Paris	Los Arcos Mall	WL0827P	Black Jacket	PKG30323	20	19	380
25158	Europe	Poland	Warsaw	The Mall at Sierra Vista	WL0827P	Black Jacket	PKG2504	5	19	95
25159	North America	United States	Washington, D.C.	Mesa Riverview	WL0827P	Black Jacket	PKG49942	13	19	247
25160	Europe	France	Paris	Metrocenter Mall	WL0827P	Black Jacket	PKG50426	17	19	323
25161	North America	Mexico	Mexico City	Paradise Valley Mall	WL0827P	Black Jacket	PKG82407	6	19	114
25162	Europe	Germany	Berlin	Park Place	WL0827P	Black Jacket	PKG45362	24	19	456
25163	North America	Canada	Ottawa	Prescott Gateway Mall	WL0827P	Black Jacket	PKG19576	18	19	342
25164	Asia	India	New Delhi	SanTan Village	WL0827P	Black Jacket	PKG59801	1	19	19
25165	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	WL0827P	Black Jacket	PKG86039	25	19	475
25166	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	WL0827P	Black Jacket	PKG34599	4	19	76
25167	Asia	Russia	Moscow	Tanger Outlets	WL0827P	Black Jacket	PKG29859	21	19	399
25168	Africa	Sudan	Khartoum	Tempe Marketplace	WL0827P	Black Jacket	PKG87192	4	19	76
25169	Europe	France	Paris	Tri City Mall	WL0827P	Black Jacket	PKG99848	18	19	342
25170	North America	United States	Washington, D.C.	Tucson Mall	WL0827P	Black Jacket	PKG1760	3	19	57
25171	Asia	Japan	Tokyo	Americana at Brand	WL0827P	Black Jacket	PKG72090	18	19	342
25172	Africa	Tanzania	Dodoma	Anaheim GardenWalk	WL0827P	Black Jacket	PKG69518	19	19	361
25173	Europe	Italy	Rome	Anaheim Plaza	WL0827P	Black Jacket	PKG24093	8	19	152
25174	Asia	India	New Delhi	Antelope Valley Mall	WL0827P	Black Jacket	PKG23333	21	19	399
25175	Africa	Nigeria	Lagos	Arden Fair	WL0827P	Black Jacket	PKG68387	24	19	456
25176	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	WL0827P	Black Jacket	PKG73032	4	19	76
25177	North America	Canada	Ottawa	Barstow Mall	WL0827P	Black Jacket	PKG70819	3	19	57
25178	North America	Mexico	Mexico City	Bay Street Emeryville	WL0827P	Black Jacket	PKG29234	6	19	114
25179	Asia	Japan	Tokyo	Bayfair Center	WL0827P	Black Jacket	PKG1389	15	19	285
25180	Africa	Ethiopia	Addis Ababa	Bayshore Mall	WL0827P	Black Jacket	PKG52476	3	19	57
25181	Asia	China	Beijing	Bella Terra	WL0827P	Black Jacket	PKG94775	22	19	418
25182	Africa	Sudan	Omdurman	Beverly Center	WL0827P	Black Jacket	PKG8219	8	19	152
25183	Europe	Spain	Madrid	Beverly Connection	WL0827P	Black Jacket	PKG94293	2	19	38
25184	Asia	Russia	Moscow	Brea Mall	WL0827P	Black Jacket	PKG85759	23	19	437
25185	Africa	Nigeria	Lagos	Broadway Plaza	WL0827P	Black Jacket	PKG3506	14	19	266
25186	Europe	France	Paris	Buena Park Downtown	WL0827P	Black Jacket	PKG96374	3	19	57
25187	North America	Canada	Ottawa	Burbank Town Center	WL0827P	Black Jacket	PKG59643	23	19	437
25188	Africa	Egypt	Cairo	Capitola Mall	WL0827P	Black Jacket	PKG42670	22	19	418
25189	Asia	Japan	Tokyo	Carousel Mall	WL0827P	Black Jacket	PKG91493	12	19	228
25190	Africa	Sudan	Omdurman	Chico Mall	WL0827P	Black Jacket	PKG95121	20	19	380
25191	Europe	Germany	Berlin	Chula Vista Center	WL0827P	Black Jacket	PKG35802	14	19	266
25192	North America	United States	New York	Citadel Outlets	WL0827P	Black Jacket	PKG44862	23	19	437
25193	Asia	Russia	Moscow	City National Plaza	WL0827P	Black Jacket	PKG54798	19	19	361
25194	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	WL0827P	Black Jacket	PKG4513	24	19	456
25195	Europe	France	Paris	The Collection at RiverPark	WL0827P	Black Jacket	PKG61011	14	19	266
25196	North America	Mexico	Mexico City	The Commons at Calabasas	WL0827P	Black Jacket	PKG33589	12	19	228
25197	Europe	Germany	Berlin	Del Amo Fashion Center	WL0827P	Black Jacket	PKG76969	18	19	342
25198	Asia	Japan	Tokyo	Del Monte Center	WL0827P	Black Jacket	PKG43979	2	19	38
25199	Africa	Egypt	Cairo	Desert Fashion Plaza	WL0827P	Black Jacket	PKG4657	20	19	380
25200	Asia	Russia	Moscow	Downtown Commons	WL0827P	Black Jacket	PKG64783	18	19	342
25201	Africa	Tanzania	Dodoma	Downtown Disney	WL0827P	Black Jacket	PKG11832	5	19	95
25202	Europe	France	Paris	El Cerrito Plaza	WL0827P	Black Jacket	PKG32407	16	19	304
25203	North America	Canada	Toronto	East Bay Science and Technology Center	WL0827P	Black Jacket	PKG75416	2	19	38
25204	Asia	China	Shanghai	Eastland Center	WL0827P	Black Jacket	PKG14458	2	19	38
25205	Africa	Nigeria	Lagos	Eastridge Center	WL0827P	Black Jacket	PKG25869	16	19	304
25206	Europe	Spain	Madrid	Fallbrook Center	WL0827P	Black Jacket	PKG44650	22	19	418
25207	North America	United States	Washington, D.C.	Fashion Fair	WL0827P	Black Jacket	PKG48191	3	19	57
25208	Europe	Poland	Warsaw	Auburn Mall	AK83534	Rose Dress	PKG80354	1	39	39
25209	North America	United States	Washington, D.C.	Bridge Street Town Centre	AK83534	Rose Dress	PKG25684	20	39	780
25210	Asia	China	Beijing	Brookwood Village	AK83534	Rose Dress	PKG65320	15	39	585
25211	Africa	Nigeria	Abuja	Century Plaza	AK83534	Rose Dress	PKG39373	17	39	663
25212	Europe	Germany	Berlin	Decatur Mall	AK83534	Rose Dress	PKG29861	12	39	468
25213	Europe	Austria	Vienna	Eastdale Mall	AK83534	Rose Dress	PKG46881	11	39	429
25214	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	AK83534	Rose Dress	PKG93564	22	39	858
25215	Asia	Russia	Moscow	Eastwood Mall	AK83534	Rose Dress	PKG18065	19	39	741
25216	Africa	Ethiopia	Addis Ababa	Florence Mall	AK83534	Rose Dress	PKG69111	18	39	702
25217	North America	Canada	Ottawa	Gadsden Mall	AK83534	Rose Dress	PKG82660	22	39	858
25218	Asia	India	New Delhi	Heart of Huntsville Mall	AK83534	Rose Dress	PKG89529	13	39	507
25219	Africa	Egypt	Cairo	High Point Town Center	AK83534	Rose Dress	PKG84555	8	39	312
25220	Europe	France	Paris	Jasper Mall	AK83534	Rose Dress	PKG79039	8	39	312
25221	Europe	Spain	Madrid	Madison Square Mall	AK83534	Rose Dress	PKG45329	3	39	117
25222	North America	Mexico	Mexico City	The Mall at Westlake	AK83534	Rose Dress	PKG3513	6	39	234
25223	Asia	Japan	Keihanshin	McFarland Mall	AK83534	Rose Dress	PKG89783	14	39	546
25224	Africa	Tanzania	Dar es Salaam	Montgomery Mall	AK83534	Rose Dress	PKG69357	9	39	351
25225	North America	Canada	Ottawa	Parkway Place	AK83534	Rose Dress	PKG29073	17	39	663
25226	Asia	India	New Delhi	Pelican Place at Craft Farms	AK83534	Rose Dress	PKG34057	4	39	156
25227	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	AK83534	Rose Dress	PKG18547	18	39	702
25228	North America	Mexico	Mexico City	Quintard Mall	AK83534	Rose Dress	PKG32909	12	39	468
25229	Asia	China	Beijing	Riverchase Galleria	AK83534	Rose Dress	PKG27294	9	39	351
25230	Africa	Sudan	Khartoum	Selma Mall	AK83534	Rose Dress	PKG44553	24	39	936
25231	Europe	France	Paris	The Shoppes at Bel Air	AK83534	Rose Dress	PKG26865	17	39	663
25232	North America	Canada	Toronto	The Shoppes at Eastchase	AK83534	Rose Dress	PKG535	20	39	780
25233	Europe	Austria	Vienna	Southgate Mall	AK83534	Rose Dress	PKG36537	13	39	507
25234	North America	Mexico	Salinas de Hidalgo	Springdale Mall	AK83534	Rose Dress	PKG78551	10	39	390
25235	Asia	Japan	Keihanshin	The Summit	AK83534	Rose Dress	PKG29244	25	39	975
25236	Africa	Nigeria	Lagos	University Mall	AK83534	Rose Dress	PKG1667	16	39	624
25237	Europe	Austria	Vienna	Western Hills Mall	AK83534	Rose Dress	PKG9857	25	39	975
25238	Europe	Germany	Berlin	Wiregrass Commons Mall	AK83534	Rose Dress	PKG10023	5	39	195
25239	North America	United States	Washington, D.C.	Arizona Mills	AK83534	Rose Dress	PKG77109	5	39	195
25240	Asia	India	New Delhi	Arrowhead Towne Center	AK83534	Rose Dress	PKG44677	4	39	156
25241	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	AK83534	Rose Dress	PKG68547	18	39	702
25242	Asia	Russia	Moscow	Chandler Fashion Center	AK83534	Rose Dress	PKG3004	10	39	390
25243	Africa	Sudan	Omdurman	Christown Spectrum Mall	AK83534	Rose Dress	PKG16290	13	39	507
25244	Europe	Germany	Berlin	Desert Ridge Marketplace	AK83534	Rose Dress	PKG9957	11	39	429
25245	North America	Canada	Toronto	Desert Sky Mall	AK83534	Rose Dress	PKG34416	17	39	663
25246	Europe	Poland	Warsaw	El Con Mall	AK83534	Rose Dress	PKG81315	9	39	351
25247	North America	Mexico	Mexico City	Estrella Falls	AK83534	Rose Dress	PKG58930	14	39	546
25248	Asia	India	New Delhi	Fiesta Mall	AK83534	Rose Dress	PKG10368	13	39	507
25249	Europe	Austria	Vienna	Flagstaff Mall	AK83534	Rose Dress	PKG88624	12	39	468
25250	North America	Canada	Ottawa	Foothills Mall	AK83534	Rose Dress	PKG19688	23	39	897
25251	Asia	Japan	Tokyo	Kierland Commons	AK83534	Rose Dress	PKG90767	10	39	390
25252	Africa	Egypt	Cairo	La Encantada	AK83534	Rose Dress	PKG89581	13	39	507
25253	Europe	France	Paris	Los Arcos Mall	AK83534	Rose Dress	PKG70086	16	39	624
25254	Europe	Poland	Warsaw	The Mall at Sierra Vista	AK83534	Rose Dress	PKG31766	14	39	546
25255	North America	United States	Washington, D.C.	Mesa Riverview	AK83534	Rose Dress	PKG11322	25	39	975
25256	Europe	France	Paris	Metrocenter Mall	AK83534	Rose Dress	PKG28639	8	39	312
25257	North America	Mexico	Mexico City	Paradise Valley Mall	AK83534	Rose Dress	PKG61621	10	39	390
25258	Europe	Germany	Berlin	Park Place	AK83534	Rose Dress	PKG89067	19	39	741
25259	North America	Canada	Ottawa	Prescott Gateway Mall	AK83534	Rose Dress	PKG2902	6	39	234
25260	Asia	India	New Delhi	SanTan Village	AK83534	Rose Dress	PKG51444	1	39	39
25261	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	AK83534	Rose Dress	PKG17961	17	39	663
25262	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	AK83534	Rose Dress	PKG67458	10	39	390
25263	Asia	Russia	Moscow	Tanger Outlets	AK83534	Rose Dress	PKG39775	11	39	429
25264	Africa	Sudan	Khartoum	Tempe Marketplace	AK83534	Rose Dress	PKG61506	13	39	507
25265	Europe	France	Paris	Tri City Mall	AK83534	Rose Dress	PKG97456	24	39	936
25266	North America	United States	Washington, D.C.	Tucson Mall	AK83534	Rose Dress	PKG11729	20	39	780
25267	Asia	Japan	Tokyo	Americana at Brand	AK83534	Rose Dress	PKG28706	24	39	936
25268	Africa	Tanzania	Dodoma	Anaheim GardenWalk	AK83534	Rose Dress	PKG61901	7	39	273
25269	Europe	Italy	Rome	Anaheim Plaza	AK83534	Rose Dress	PKG67570	18	39	702
25270	Asia	India	New Delhi	Antelope Valley Mall	AK83534	Rose Dress	PKG41764	10	39	390
25271	Africa	Nigeria	Lagos	Arden Fair	AK83534	Rose Dress	PKG72808	14	39	546
25272	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	AK83534	Rose Dress	PKG80153	5	39	195
25273	North America	Canada	Ottawa	Barstow Mall	AK83534	Rose Dress	PKG32972	9	39	351
25274	North America	Mexico	Mexico City	Bay Street Emeryville	AK83534	Rose Dress	PKG3545	9	39	351
25275	Asia	Japan	Tokyo	Bayfair Center	AK83534	Rose Dress	PKG6140	25	39	975
25276	Africa	Ethiopia	Addis Ababa	Bayshore Mall	AK83534	Rose Dress	PKG50748	21	39	819
25277	Asia	China	Beijing	Bella Terra	AK83534	Rose Dress	PKG82771	12	39	468
25278	Africa	Sudan	Omdurman	Beverly Center	AK83534	Rose Dress	PKG33172	25	39	975
25279	Europe	Spain	Madrid	Beverly Connection	AK83534	Rose Dress	PKG97706	3	39	117
25280	Asia	Russia	Moscow	Brea Mall	AK83534	Rose Dress	PKG56337	22	39	858
25281	Africa	Nigeria	Lagos	Broadway Plaza	MU09863	White T-Shirt	PKG25855	11	9	99
25282	Europe	France	Paris	Buena Park Downtown	MU09863	White T-Shirt	PKG12621	20	9	180
25283	North America	Canada	Ottawa	Burbank Town Center	MU09863	White T-Shirt	PKG91363	9	9	81
25284	Africa	Egypt	Cairo	Capitola Mall	MU09863	White T-Shirt	PKG81538	16	9	144
25285	Asia	Japan	Tokyo	Carousel Mall	MU09863	White T-Shirt	PKG55039	18	9	162
25286	Africa	Sudan	Omdurman	Chico Mall	MU09863	White T-Shirt	PKG26840	17	9	153
25287	Europe	Germany	Berlin	Chula Vista Center	MU09863	White T-Shirt	PKG27530	11	9	99
25288	North America	United States	New York	Citadel Outlets	MU09863	White T-Shirt	PKG5844	3	9	27
25289	Asia	Russia	Moscow	City National Plaza	MU09863	White T-Shirt	PKG46619	16	9	144
25290	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	MU09863	White T-Shirt	PKG7407	20	9	180
25291	Europe	France	Paris	The Collection at RiverPark	MU09863	White T-Shirt	PKG77981	25	9	225
25292	North America	Mexico	Mexico City	The Commons at Calabasas	MU09863	White T-Shirt	PKG40098	23	9	207
25293	Europe	Germany	Berlin	Del Amo Fashion Center	MU09863	White T-Shirt	PKG35566	13	9	117
25294	Asia	Japan	Tokyo	Del Monte Center	MU09863	White T-Shirt	PKG333	16	9	144
25295	Africa	Egypt	Cairo	Desert Fashion Plaza	MU09863	White T-Shirt	PKG18910	13	9	117
25296	Asia	Russia	Moscow	Downtown Commons	MU09863	White T-Shirt	PKG84304	24	9	216
25297	Africa	Tanzania	Dodoma	Downtown Disney	MU09863	White T-Shirt	PKG54613	24	9	216
25298	Europe	France	Paris	El Cerrito Plaza	MU09863	White T-Shirt	PKG11592	18	9	162
25299	North America	Canada	Toronto	East Bay Science and Technology Center	MU09863	White T-Shirt	PKG38282	5	9	45
25300	Asia	China	Shanghai	Eastland Center	MU09863	White T-Shirt	PKG90526	19	9	171
25301	Africa	Nigeria	Lagos	Eastridge Center	MU09863	White T-Shirt	PKG14510	12	9	108
25302	Europe	Spain	Madrid	Fallbrook Center	MU09863	White T-Shirt	PKG35586	9	9	81
25303	North America	United States	Washington, D.C.	Fashion Fair	MU09863	White T-Shirt	PKG37673	21	9	189
25304	Europe	Poland	Warsaw	Auburn Mall	MU09863	White T-Shirt	PKG14290	20	9	180
25305	North America	United States	Washington, D.C.	Bridge Street Town Centre	MU09863	White T-Shirt	PKG68706	1	9	9
25306	Asia	China	Beijing	Brookwood Village	MU09863	White T-Shirt	PKG99529	13	9	117
25307	Africa	Nigeria	Abuja	Century Plaza	MU09863	White T-Shirt	PKG85837	19	9	171
25308	Europe	Germany	Berlin	Decatur Mall	MU09863	White T-Shirt	PKG20179	3	9	27
25309	Europe	Austria	Vienna	Eastdale Mall	MU09863	White T-Shirt	PKG91106	6	9	54
25310	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	MU09863	White T-Shirt	PKG93315	3	9	27
25311	Asia	Russia	Moscow	Eastwood Mall	MU09863	White T-Shirt	PKG91622	11	9	99
25312	Africa	Ethiopia	Addis Ababa	Florence Mall	MU09863	White T-Shirt	PKG54496	9	9	81
25313	North America	Canada	Ottawa	Gadsden Mall	MU09863	White T-Shirt	PKG47037	21	9	189
25314	Asia	India	New Delhi	Heart of Huntsville Mall	MU09863	White T-Shirt	PKG3876	16	9	144
25315	Africa	Egypt	Cairo	High Point Town Center	MU09863	White T-Shirt	PKG94158	10	9	90
25316	Europe	France	Paris	Jasper Mall	MU09863	White T-Shirt	PKG76113	16	9	144
25317	Europe	Spain	Madrid	Madison Square Mall	MU09863	White T-Shirt	PKG33876	24	9	216
25318	North America	Mexico	Mexico City	The Mall at Westlake	MU09863	White T-Shirt	PKG49838	1	9	9
25319	Asia	Japan	Keihanshin	McFarland Mall	MU09863	White T-Shirt	PKG92470	19	9	171
25320	Africa	Tanzania	Dar es Salaam	Montgomery Mall	MU09863	White T-Shirt	PKG17889	21	9	189
25321	North America	Canada	Ottawa	Parkway Place	MU09863	White T-Shirt	PKG76056	21	9	189
25322	Asia	India	New Delhi	Pelican Place at Craft Farms	MU09863	White T-Shirt	PKG6079	11	9	99
25323	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	MU09863	White T-Shirt	PKG63070	16	9	144
25324	North America	Mexico	Mexico City	Quintard Mall	MU09863	White T-Shirt	PKG89726	7	9	63
25325	Asia	China	Beijing	Riverchase Galleria	MU09863	White T-Shirt	PKG88829	24	9	216
25326	Africa	Sudan	Khartoum	Selma Mall	MU09863	White T-Shirt	PKG98291	11	9	99
25327	Europe	France	Paris	The Shoppes at Bel Air	MU09863	White T-Shirt	PKG68132	1	9	9
25328	North America	Canada	Toronto	The Shoppes at Eastchase	MU09863	White T-Shirt	PKG63804	24	9	216
25329	Europe	Austria	Vienna	Southgate Mall	MU09863	White T-Shirt	PKG22155	3	9	27
25330	North America	Mexico	Salinas de Hidalgo	Springdale Mall	MU09863	White T-Shirt	PKG54607	3	9	27
25331	Asia	Japan	Keihanshin	The Summit	MU09863	White T-Shirt	PKG58280	24	9	216
25332	Africa	Nigeria	Lagos	University Mall	MU09863	White T-Shirt	PKG2538	18	9	162
25333	Europe	Austria	Vienna	Western Hills Mall	MU09863	White T-Shirt	PKG91381	4	9	36
25334	Europe	Germany	Berlin	Wiregrass Commons Mall	MU09863	White T-Shirt	PKG10083	3	9	27
25335	North America	United States	Washington, D.C.	Arizona Mills	MU09863	White T-Shirt	PKG13768	25	9	225
25336	Asia	India	New Delhi	Arrowhead Towne Center	MU09863	White T-Shirt	PKG19091	22	9	198
25337	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	MU09863	White T-Shirt	PKG91146	11	9	99
25338	Asia	Russia	Moscow	Chandler Fashion Center	MU09863	White T-Shirt	PKG10554	23	9	207
25339	Africa	Sudan	Omdurman	Christown Spectrum Mall	MU09863	White T-Shirt	PKG5648	12	9	108
25340	Europe	Germany	Berlin	Desert Ridge Marketplace	MU09863	White T-Shirt	PKG62337	19	9	171
25341	North America	Canada	Toronto	Desert Sky Mall	MU09863	White T-Shirt	PKG63931	10	9	90
25342	Europe	Poland	Warsaw	El Con Mall	MU09863	White T-Shirt	PKG16482	6	9	54
25343	North America	Mexico	Mexico City	Estrella Falls	MU09863	White T-Shirt	PKG19636	23	9	207
25344	Asia	India	New Delhi	Fiesta Mall	MU09863	White T-Shirt	PKG32187	11	9	99
25345	Europe	Austria	Vienna	Flagstaff Mall	MU09863	White T-Shirt	PKG63941	14	9	126
25346	North America	Canada	Ottawa	Foothills Mall	MU09863	White T-Shirt	PKG58830	18	9	162
25347	Asia	Japan	Tokyo	Kierland Commons	MU09863	White T-Shirt	PKG32963	1	9	9
25348	Africa	Egypt	Cairo	La Encantada	MU09863	White T-Shirt	PKG79491	15	9	135
25349	Europe	France	Paris	Los Arcos Mall	MU09863	White T-Shirt	PKG51148	11	9	99
25350	Europe	Poland	Warsaw	The Mall at Sierra Vista	MU09863	White T-Shirt	PKG30671	18	9	162
25351	North America	United States	Washington, D.C.	Mesa Riverview	MU09863	White T-Shirt	PKG90173	15	9	135
25352	Europe	France	Paris	Metrocenter Mall	MU09863	White T-Shirt	PKG47471	6	9	54
25353	North America	Mexico	Mexico City	Paradise Valley Mall	MU09863	White T-Shirt	PKG65290	3	9	27
25354	Europe	Germany	Berlin	Park Place	MU09863	White T-Shirt	PKG6190	3	9	27
25355	North America	Canada	Ottawa	Prescott Gateway Mall	MU09863	White T-Shirt	PKG83767	18	9	162
25356	Asia	India	New Delhi	SanTan Village	MU09863	White T-Shirt	PKG41477	5	9	45
25357	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	MU09863	White T-Shirt	PKG73108	16	9	144
25358	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	MU09863	White T-Shirt	PKG31217	15	9	135
25359	Asia	Russia	Moscow	Tanger Outlets	MU09863	White T-Shirt	PKG13476	16	9	144
25360	Africa	Sudan	Khartoum	Tempe Marketplace	MU09863	White T-Shirt	PKG12686	11	9	99
25361	Europe	France	Paris	Tri City Mall	MU09863	White T-Shirt	PKG59846	8	9	72
25362	North America	United States	Washington, D.C.	Tucson Mall	MU09863	White T-Shirt	PKG15064	8	9	72
25363	Asia	Japan	Tokyo	Americana at Brand	MU09863	White T-Shirt	PKG57008	8	9	72
25364	Africa	Tanzania	Dodoma	Anaheim GardenWalk	MU09863	White T-Shirt	PKG45330	17	9	153
25365	Europe	Italy	Rome	Anaheim Plaza	MU09863	White T-Shirt	PKG60604	22	9	198
25366	Asia	India	New Delhi	Antelope Valley Mall	MU09863	White T-Shirt	PKG76926	16	9	144
25367	Africa	Nigeria	Lagos	Arden Fair	MU09863	White T-Shirt	PKG98255	16	9	144
25368	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	MU09863	White T-Shirt	PKG94243	3	9	27
25369	North America	Canada	Ottawa	Barstow Mall	MU09863	White T-Shirt	PKG11719	2	9	18
25370	North America	Mexico	Mexico City	Bay Street Emeryville	MU09863	White T-Shirt	PKG23434	14	9	126
25371	Asia	Japan	Tokyo	Bayfair Center	MU09863	White T-Shirt	PKG99257	11	9	99
25372	Africa	Ethiopia	Addis Ababa	Bayshore Mall	MU09863	White T-Shirt	PKG46017	25	9	225
25373	Asia	China	Beijing	Bella Terra	MU09863	White T-Shirt	PKG65429	9	9	81
25374	Africa	Sudan	Omdurman	Beverly Center	MU09863	White T-Shirt	PKG34937	4	9	36
25375	Europe	Spain	Madrid	Beverly Connection	MU09863	White T-Shirt	PKG32841	1	9	9
25376	Asia	Russia	Moscow	Brea Mall	MU09863	White T-Shirt	PKG41943	9	9	81
25377	Africa	Nigeria	Lagos	Broadway Plaza	MU09863	White T-Shirt	PKG9561	21	9	189
25378	Europe	France	Paris	Buena Park Downtown	MU09863	White T-Shirt	PKG83168	15	9	135
25379	North America	Canada	Ottawa	Burbank Town Center	MU09863	White T-Shirt	PKG28995	25	9	225
25380	Africa	Egypt	Cairo	Capitola Mall	MU09863	White T-Shirt	PKG35816	19	9	171
25381	Asia	Japan	Tokyo	Carousel Mall	MU09863	White T-Shirt	PKG9687	18	9	162
25382	Africa	Sudan	Omdurman	Chico Mall	MU09863	White T-Shirt	PKG90661	16	9	144
25383	Europe	Germany	Berlin	Chula Vista Center	MU09863	White T-Shirt	PKG2980	7	9	63
25384	North America	United States	New York	Citadel Outlets	MU09863	White T-Shirt	PKG89863	24	9	216
25385	Asia	Russia	Moscow	City National Plaza	MU09863	White T-Shirt	PKG14083	4	9	36
25386	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	MU09863	White T-Shirt	PKG7651	10	9	90
25387	Europe	France	Paris	The Collection at RiverPark	MU09863	White T-Shirt	PKG81988	4	9	36
25388	North America	Mexico	Mexico City	The Commons at Calabasas	MU09863	White T-Shirt	PKG33531	14	9	126
25389	Europe	Germany	Berlin	Del Amo Fashion Center	MU09863	White T-Shirt	PKG65447	13	9	117
25390	Asia	Japan	Tokyo	Del Monte Center	MU09863	White T-Shirt	PKG89248	20	9	180
25391	Africa	Egypt	Cairo	Desert Fashion Plaza	MU09863	White T-Shirt	PKG64388	12	9	108
25392	Asia	Russia	Moscow	Downtown Commons	MU09863	White T-Shirt	PKG64641	25	9	225
25393	Africa	Tanzania	Dodoma	Downtown Disney	MU09863	White T-Shirt	PKG54893	20	9	180
25394	Europe	France	Paris	El Cerrito Plaza	MU09863	White T-Shirt	PKG35793	25	9	225
25395	North America	Canada	Toronto	East Bay Science and Technology Center	MU09863	White T-Shirt	PKG31516	25	9	225
25396	Asia	China	Shanghai	Eastland Center	MU09863	White T-Shirt	PKG83649	22	9	198
25397	Africa	Nigeria	Lagos	Eastridge Center	MU09863	White T-Shirt	PKG21096	14	9	126
25398	Europe	Spain	Madrid	Fallbrook Center	MU09863	White T-Shirt	PKG39220	24	9	216
25399	North America	United States	Washington, D.C.	Fashion Fair	MU09863	White T-Shirt	PKG3909	23	9	207
25400	Europe	Poland	Warsaw	Auburn Mall	WI034S2	Grey Shoes	PKG55320	8	59	472
25401	North America	United States	Washington, D.C.	Bridge Street Town Centre	WI034S2	Grey Shoes	PKG48312	11	59	649
25402	Asia	China	Beijing	Brookwood Village	WI034S2	Grey Shoes	PKG5432	15	59	885
25403	Africa	Nigeria	Abuja	Century Plaza	WI034S2	Grey Shoes	PKG41887	17	59	1003
25404	Europe	Germany	Berlin	Decatur Mall	WI034S2	Grey Shoes	PKG26432	9	59	531
25405	Europe	Austria	Vienna	Eastdale Mall	WI034S2	Grey Shoes	PKG74992	11	59	649
25406	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	WI034S2	Grey Shoes	PKG82676	21	59	1239
25407	Asia	Russia	Moscow	Eastwood Mall	WI034S2	Grey Shoes	PKG62915	15	59	885
25408	Africa	Ethiopia	Addis Ababa	Florence Mall	WI034S2	Grey Shoes	PKG99880	17	59	1003
25409	North America	Canada	Ottawa	Gadsden Mall	WI034S2	Grey Shoes	PKG73487	25	59	1475
25410	Asia	India	New Delhi	Heart of Huntsville Mall	WI034S2	Grey Shoes	PKG47702	13	59	767
25411	Africa	Egypt	Cairo	High Point Town Center	WI034S2	Grey Shoes	PKG91407	25	59	1475
25412	Europe	France	Paris	Jasper Mall	WI034S2	Grey Shoes	PKG68746	7	59	413
25413	Europe	Spain	Madrid	Madison Square Mall	WI034S2	Grey Shoes	PKG78661	8	59	472
25414	North America	Mexico	Mexico City	The Mall at Westlake	WI034S2	Grey Shoes	PKG23860	14	59	826
25415	Asia	Japan	Keihanshin	McFarland Mall	WI034S2	Grey Shoes	PKG44815	6	59	354
25416	Africa	Tanzania	Dar es Salaam	Montgomery Mall	WI034S2	Grey Shoes	PKG31426	6	59	354
25417	North America	Canada	Ottawa	Parkway Place	WI034S2	Grey Shoes	PKG51869	14	59	826
25418	Asia	India	New Delhi	Pelican Place at Craft Farms	WI034S2	Grey Shoes	PKG66637	7	59	413
25419	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	WI034S2	Grey Shoes	PKG38169	24	59	1416
25420	North America	Mexico	Mexico City	Quintard Mall	WI034S2	Grey Shoes	PKG72903	8	59	472
25421	Asia	China	Beijing	Riverchase Galleria	WI034S2	Grey Shoes	PKG54784	16	59	944
25422	Africa	Sudan	Khartoum	Selma Mall	WI034S2	Grey Shoes	PKG32549	18	59	1062
25423	Europe	France	Paris	The Shoppes at Bel Air	WI034S2	Grey Shoes	PKG42737	15	59	885
25424	North America	Canada	Toronto	The Shoppes at Eastchase	WI034S2	Grey Shoes	PKG14309	20	59	1180
25425	Europe	Austria	Vienna	Southgate Mall	WI034S2	Grey Shoes	PKG64764	7	59	413
25426	North America	Mexico	Salinas de Hidalgo	Springdale Mall	WI034S2	Grey Shoes	PKG73912	17	59	1003
25427	Asia	Japan	Keihanshin	The Summit	WI034S2	Grey Shoes	PKG52711	4	59	236
25428	Africa	Nigeria	Lagos	University Mall	WI034S2	Grey Shoes	PKG18730	18	59	1062
25429	Europe	Austria	Vienna	Western Hills Mall	WI034S2	Grey Shoes	PKG60299	8	59	472
25430	Europe	Germany	Berlin	Wiregrass Commons Mall	WI034S2	Grey Shoes	PKG28538	20	59	1180
25431	North America	United States	Washington, D.C.	Arizona Mills	WI034S2	Grey Shoes	PKG59441	24	59	1416
25432	Asia	India	New Delhi	Arrowhead Towne Center	WI034S2	Grey Shoes	PKG74711	9	59	531
25433	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	WI034S2	Grey Shoes	PKG19813	17	59	1003
25434	Asia	Russia	Moscow	Chandler Fashion Center	WI034S2	Grey Shoes	PKG99531	20	59	1180
25435	Africa	Sudan	Omdurman	Christown Spectrum Mall	WI034S2	Grey Shoes	PKG65385	11	59	649
25436	Europe	Germany	Berlin	Desert Ridge Marketplace	WI034S2	Grey Shoes	PKG40801	4	59	236
25437	North America	Canada	Toronto	Desert Sky Mall	WI034S2	Grey Shoes	PKG31492	2	59	118
25438	Europe	Poland	Warsaw	El Con Mall	WI034S2	Grey Shoes	PKG52788	2	59	118
25439	North America	Mexico	Mexico City	Estrella Falls	WI034S2	Grey Shoes	PKG18909	18	59	1062
25440	Asia	India	New Delhi	Fiesta Mall	WI034S2	Grey Shoes	PKG45675	25	59	1475
25441	Europe	Austria	Vienna	Flagstaff Mall	WI034S2	Grey Shoes	PKG43914	8	59	472
25442	North America	Canada	Ottawa	Foothills Mall	WI034S2	Grey Shoes	PKG86235	18	59	1062
25443	Asia	Japan	Tokyo	Kierland Commons	WI034S2	Grey Shoes	PKG96623	16	59	944
25444	Africa	Egypt	Cairo	La Encantada	WI034S2	Grey Shoes	PKG959	18	59	1062
25445	Europe	France	Paris	Los Arcos Mall	WI034S2	Grey Shoes	PKG27823	14	59	826
25446	Europe	Poland	Warsaw	The Mall at Sierra Vista	WI034S2	Grey Shoes	PKG37774	14	59	826
25447	North America	United States	Washington, D.C.	Mesa Riverview	WI034S2	Grey Shoes	PKG45167	11	59	649
25448	Europe	France	Paris	Metrocenter Mall	WI034S2	Grey Shoes	PKG63137	9	59	531
25449	North America	Mexico	Mexico City	Paradise Valley Mall	WI034S2	Grey Shoes	PKG38230	3	59	177
25450	Europe	Germany	Berlin	Park Place	WI034S2	Grey Shoes	PKG62902	1	59	59
25451	North America	Canada	Ottawa	Prescott Gateway Mall	WI034S2	Grey Shoes	PKG76180	4	59	236
25452	Asia	India	New Delhi	SanTan Village	WI034S2	Grey Shoes	PKG36854	10	59	590
25453	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	WI034S2	Grey Shoes	PKG75924	11	59	649
25454	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	WI034S2	Grey Shoes	PKG13272	23	59	1357
25455	Asia	Russia	Moscow	Tanger Outlets	WI034S2	Grey Shoes	PKG28987	20	59	1180
25456	Africa	Sudan	Khartoum	Tempe Marketplace	WI034S2	Grey Shoes	PKG39170	19	59	1121
25457	Europe	France	Paris	Tri City Mall	WI034S2	Grey Shoes	PKG56650	5	59	295
25458	North America	United States	Washington, D.C.	Tucson Mall	WI034S2	Grey Shoes	PKG33622	4	59	236
25459	Asia	Japan	Tokyo	Americana at Brand	WI034S2	Grey Shoes	PKG19489	1	59	59
25460	Africa	Tanzania	Dodoma	Anaheim GardenWalk	WI034S2	Grey Shoes	PKG69708	23	59	1357
25461	Europe	Italy	Rome	Anaheim Plaza	WI034S2	Grey Shoes	PKG39303	25	59	1475
25462	Asia	India	New Delhi	Antelope Valley Mall	WI034S2	Grey Shoes	PKG95255	23	59	1357
25463	Africa	Nigeria	Lagos	Arden Fair	WI034S2	Grey Shoes	PKG97766	18	59	1062
25464	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	WI034S2	Grey Shoes	PKG39000	9	59	531
25465	North America	Canada	Ottawa	Barstow Mall	WI034S2	Grey Shoes	PKG29636	7	59	413
25466	North America	Mexico	Mexico City	Bay Street Emeryville	WI034S2	Grey Shoes	PKG86527	18	59	1062
25467	Asia	Japan	Tokyo	Bayfair Center	WI034S2	Grey Shoes	PKG61332	17	59	1003
25468	Africa	Ethiopia	Addis Ababa	Bayshore Mall	WI034S2	Grey Shoes	PKG76623	21	59	1239
25469	Asia	China	Beijing	Bella Terra	WI034S2	Grey Shoes	PKG33658	3	59	177
25470	Africa	Sudan	Omdurman	Beverly Center	WI034S2	Grey Shoes	PKG81778	2	59	118
25471	Europe	Spain	Madrid	Beverly Connection	WI034S2	Grey Shoes	PKG15768	4	59	236
25472	Asia	Russia	Moscow	Brea Mall	WI034S2	Grey Shoes	PKG97489	21	59	1239
25473	Africa	Nigeria	Lagos	Broadway Plaza	78WZ923	Black Flip-Flops	PKG29630	19	99	1881
25474	Europe	France	Paris	Buena Park Downtown	78WZ923	Black Flip-Flops	PKG96577	3	99	297
25475	North America	Canada	Ottawa	Burbank Town Center	78WZ923	Black Flip-Flops	PKG87597	20	99	1980
25476	Africa	Egypt	Cairo	Capitola Mall	78WZ923	Black Flip-Flops	PKG73232	16	99	1584
25477	Asia	Japan	Tokyo	Carousel Mall	78WZ923	Black Flip-Flops	PKG7969	22	99	2178
25478	Africa	Sudan	Omdurman	Chico Mall	78WZ923	Black Flip-Flops	PKG14677	10	99	990
25479	Europe	Germany	Berlin	Chula Vista Center	78WZ923	Black Flip-Flops	PKG43885	21	99	2079
25480	North America	United States	New York	Citadel Outlets	78WZ923	Black Flip-Flops	PKG76022	13	99	1287
25481	Asia	Russia	Moscow	City National Plaza	78WZ923	Black Flip-Flops	PKG64198	8	99	792
25482	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	78WZ923	Black Flip-Flops	PKG55666	7	99	693
25483	Europe	France	Paris	The Collection at RiverPark	78WZ923	Black Flip-Flops	PKG13243	10	99	990
25484	North America	Mexico	Mexico City	The Commons at Calabasas	78WZ923	Black Flip-Flops	PKG51840	2	99	198
25485	Europe	Germany	Berlin	Del Amo Fashion Center	78WZ923	Black Flip-Flops	PKG93234	11	99	1089
25486	Asia	Japan	Tokyo	Del Monte Center	78WZ923	Black Flip-Flops	PKG15389	8	99	792
25487	Africa	Egypt	Cairo	Desert Fashion Plaza	78WZ923	Black Flip-Flops	PKG1157	13	99	1287
25488	Asia	Russia	Moscow	Downtown Commons	78WZ923	Black Flip-Flops	PKG31107	3	99	297
25489	Africa	Tanzania	Dodoma	Downtown Disney	78WZ923	Black Flip-Flops	PKG82737	25	99	2475
25490	Europe	France	Paris	El Cerrito Plaza	78WZ923	Black Flip-Flops	PKG36136	18	99	1782
25491	North America	Canada	Toronto	East Bay Science and Technology Center	78WZ923	Black Flip-Flops	PKG48973	19	99	1881
25492	Asia	China	Shanghai	Eastland Center	78WZ923	Black Flip-Flops	PKG78116	2	99	198
25493	Africa	Nigeria	Lagos	Eastridge Center	78WZ923	Black Flip-Flops	PKG54110	18	99	1782
25494	Europe	Spain	Madrid	Fallbrook Center	78WZ923	Black Flip-Flops	PKG14818	24	99	2376
25495	North America	United States	Washington, D.C.	Fashion Fair	78WZ923	Black Flip-Flops	PKG19090	12	99	1188
25496	Europe	Poland	Warsaw	Auburn Mall	78WZ923	Black Flip-Flops	PKG55844	19	99	1881
25497	North America	United States	Washington, D.C.	Bridge Street Town Centre	78WZ923	Black Flip-Flops	PKG51283	10	99	990
25498	Asia	China	Beijing	Brookwood Village	78WZ923	Black Flip-Flops	PKG98164	10	99	990
25499	Africa	Nigeria	Abuja	Century Plaza	78WZ923	Black Flip-Flops	PKG70	18	99	1782
25500	Europe	Germany	Berlin	Decatur Mall	78WZ923	Black Flip-Flops	PKG7199	13	99	1287
25501	Europe	Austria	Vienna	Eastdale Mall	78WZ923	Black Flip-Flops	PKG19446	25	99	2475
25502	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	78WZ923	Black Flip-Flops	PKG20326	11	99	1089
25503	Asia	Russia	Moscow	Eastwood Mall	78WZ923	Black Flip-Flops	PKG31129	8	99	792
25504	Africa	Ethiopia	Addis Ababa	Florence Mall	78WZ923	Black Flip-Flops	PKG29696	11	99	1089
25505	North America	Canada	Ottawa	Gadsden Mall	78WZ923	Black Flip-Flops	PKG68822	12	99	1188
25506	Asia	India	New Delhi	Heart of Huntsville Mall	78WZ923	Black Flip-Flops	PKG95750	21	99	2079
25507	Africa	Egypt	Cairo	High Point Town Center	78WZ923	Black Flip-Flops	PKG30031	18	99	1782
25508	Europe	France	Paris	Jasper Mall	78WZ923	Black Flip-Flops	PKG41048	3	99	297
25509	Europe	Spain	Madrid	Madison Square Mall	78WZ923	Black Flip-Flops	PKG81729	3	99	297
25510	North America	Mexico	Mexico City	The Mall at Westlake	78WZ923	Black Flip-Flops	PKG14038	9	99	891
25511	Asia	Japan	Keihanshin	McFarland Mall	78WZ923	Black Flip-Flops	PKG90088	17	99	1683
25512	Africa	Tanzania	Dar es Salaam	Montgomery Mall	78WZ923	Black Flip-Flops	PKG64856	3	99	297
25513	North America	Canada	Ottawa	Parkway Place	78WZ923	Black Flip-Flops	PKG98090	20	99	1980
25514	Asia	India	New Delhi	Pelican Place at Craft Farms	78WZ923	Black Flip-Flops	PKG60630	7	99	693
25515	Europe	Italy	Rome	Pinnacle at Tutwiler Farm	78WZ923	Black Flip-Flops	PKG96944	12	99	1188
25516	North America	Mexico	Mexico City	Quintard Mall	78WZ923	Black Flip-Flops	PKG53232	1	99	99
25517	Asia	China	Beijing	Riverchase Galleria	78WZ923	Black Flip-Flops	PKG92280	10	99	990
25518	Africa	Sudan	Khartoum	Selma Mall	78WZ923	Black Flip-Flops	PKG36972	15	99	1485
25519	Europe	France	Paris	The Shoppes at Bel Air	78WZ923	Black Flip-Flops	PKG64314	19	99	1881
25520	North America	Canada	Toronto	The Shoppes at Eastchase	78WZ923	Black Flip-Flops	PKG24467	8	99	792
25521	Europe	Austria	Vienna	Southgate Mall	78WZ923	Black Flip-Flops	PKG40841	19	99	1881
25522	North America	Mexico	Salinas de Hidalgo	Springdale Mall	78WZ923	Black Flip-Flops	PKG73666	7	99	693
25523	Asia	Japan	Keihanshin	The Summit	78WZ923	Black Flip-Flops	PKG10675	19	99	1881
25524	Africa	Nigeria	Lagos	University Mall	78WZ923	Black Flip-Flops	PKG47323	4	99	396
25525	Europe	Austria	Vienna	Western Hills Mall	78WZ923	Black Flip-Flops	PKG24926	9	99	891
25526	Europe	Germany	Berlin	Wiregrass Commons Mall	78WZ923	Black Flip-Flops	PKG58205	9	99	891
25527	North America	United States	Washington, D.C.	Arizona Mills	78WZ923	Black Flip-Flops	PKG42146	23	99	2277
25528	Asia	India	New Delhi	Arrowhead Towne Center	78WZ923	Black Flip-Flops	PKG95822	13	99	1287
25529	Africa	Ethiopia	Addis Ababa	Biltmore Fashion Park	78WZ923	Black Flip-Flops	PKG92919	8	99	792
25530	Asia	Russia	Moscow	Chandler Fashion Center	78WZ923	Black Flip-Flops	PKG31674	20	99	1980
25531	Africa	Sudan	Omdurman	Christown Spectrum Mall	78WZ923	Black Flip-Flops	PKG17294	6	99	594
25532	Europe	Germany	Berlin	Desert Ridge Marketplace	78WZ923	Black Flip-Flops	PKG55847	3	99	297
25533	North America	Canada	Toronto	Desert Sky Mall	78WZ923	Black Flip-Flops	PKG14041	22	99	2178
25534	Europe	Poland	Warsaw	El Con Mall	78WZ923	Black Flip-Flops	PKG16979	17	99	1683
25535	North America	Mexico	Mexico City	Estrella Falls	78WZ923	Black Flip-Flops	PKG55161	16	99	1584
25536	Asia	India	New Delhi	Fiesta Mall	78WZ923	Black Flip-Flops	PKG78691	14	99	1386
25537	Europe	Austria	Vienna	Flagstaff Mall	78WZ923	Black Flip-Flops	PKG23852	10	99	990
25538	North America	Canada	Ottawa	Foothills Mall	78WZ923	Black Flip-Flops	PKG45918	12	99	1188
25539	Asia	Japan	Tokyo	Kierland Commons	78WZ923	Black Flip-Flops	PKG50124	25	99	2475
25540	Africa	Egypt	Cairo	La Encantada	78WZ923	Black Flip-Flops	PKG97870	19	99	1881
25541	Europe	France	Paris	Los Arcos Mall	78WZ923	Black Flip-Flops	PKG82774	3	99	297
25542	Europe	Poland	Warsaw	The Mall at Sierra Vista	78WZ923	Black Flip-Flops	PKG30361	12	99	1188
25543	North America	United States	Washington, D.C.	Mesa Riverview	78WZ923	Black Flip-Flops	PKG16921	21	99	2079
25544	Europe	France	Paris	Metrocenter Mall	78WZ923	Black Flip-Flops	PKG75666	9	99	891
25545	North America	Mexico	Mexico City	Paradise Valley Mall	78WZ923	Black Flip-Flops	PKG97037	7	99	693
25546	Europe	Germany	Berlin	Park Place	FG458PD	Red Blouse	PKG61365	23	49	1127
25547	North America	Canada	Ottawa	Prescott Gateway Mall	FG458PD	Red Blouse	PKG25432	5	49	245
25548	Asia	India	New Delhi	SanTan Village	FG458PD	Red Blouse	PKG30779	9	49	441
25549	Africa	Ethiopia	Addis Ababa	Scottsdale Fashion Square	FG458PD	Red Blouse	PKG82342	10	49	490
25550	North America	Mexico	Salinas de Hidalgo	Superstition Springs Center	FG458PD	Red Blouse	PKG15224	22	49	1078
25551	Asia	Russia	Moscow	Tanger Outlets	FG458PD	Red Blouse	PKG15223	19	49	931
25552	Africa	Sudan	Khartoum	Tempe Marketplace	FG458PD	Red Blouse	PKG13021	18	49	882
25553	Europe	France	Paris	Tri City Mall	FG458PD	Red Blouse	PKG12112	23	49	1127
25554	North America	United States	Washington, D.C.	Tucson Mall	FG458PD	Red Blouse	PKG97565	14	49	686
25555	Asia	Japan	Tokyo	Americana at Brand	FG458PD	Red Blouse	PKG58998	18	49	882
25556	Africa	Tanzania	Dodoma	Anaheim GardenWalk	FG458PD	Red Blouse	PKG43813	7	49	343
25557	Europe	Italy	Rome	Anaheim Plaza	FG458PD	Red Blouse	PKG89602	5	49	245
25558	Asia	India	New Delhi	Antelope Valley Mall	FG458PD	Red Blouse	PKG4288	12	49	588
25559	Africa	Nigeria	Lagos	Arden Fair	FG458PD	Red Blouse	PKG23038	13	49	637
25560	Europe	Spain	Madrid	Baldwin Hills Crenshaw Plaza	FG458PD	Red Blouse	PKG74391	18	49	882
25561	North America	Canada	Ottawa	Barstow Mall	FG458PD	Red Blouse	PKG4971	5	49	245
25562	North America	Mexico	Mexico City	Bay Street Emeryville	FG458PD	Red Blouse	PKG67177	24	49	1176
25563	Asia	Japan	Tokyo	Bayfair Center	FG458PD	Red Blouse	PKG22274	9	49	441
25564	Africa	Ethiopia	Addis Ababa	Bayshore Mall	FG458PD	Red Blouse	PKG95927	7	49	343
25565	Asia	China	Beijing	Bella Terra	FG458PD	Red Blouse	PKG45870	21	49	1029
25566	Africa	Sudan	Omdurman	Beverly Center	FG458PD	Red Blouse	PKG12969	17	49	833
25567	Europe	Spain	Madrid	Beverly Connection	FG458PD	Red Blouse	PKG11677	16	49	784
25568	Asia	Russia	Moscow	Brea Mall	FG458PD	Red Blouse	PKG77267	11	49	539
25569	Africa	Nigeria	Lagos	Broadway Plaza	FG458PD	Red Blouse	PKG31547	4	49	196
25570	Europe	France	Paris	Buena Park Downtown	FG458PD	Red Blouse	PKG64774	11	49	539
25571	North America	Canada	Ottawa	Burbank Town Center	FG458PD	Red Blouse	PKG43836	10	49	490
25572	Africa	Egypt	Cairo	Capitola Mall	FG458PD	Red Blouse	PKG42286	5	49	245
25573	Asia	Japan	Tokyo	Carousel Mall	FG458PD	Red Blouse	PKG63183	15	49	735
25574	Africa	Sudan	Omdurman	Chico Mall	FG458PD	Red Blouse	PKG78226	24	49	1176
25575	Europe	Germany	Berlin	Chula Vista Center	FG458PD	Red Blouse	PKG13904	22	49	1078
25576	North America	United States	New York	Citadel Outlets	FG458PD	Red Blouse	PKG78459	15	49	735
25577	Asia	Russia	Moscow	City National Plaza	FG458PD	Red Blouse	PKG42568	23	49	1127
25578	Africa	Tanzania	Dar es Salaam	Coddingtown Mall	FG458PD	Red Blouse	PKG78512	7	49	343
25579	Europe	France	Paris	The Collection at RiverPark	FG458PD	Red Blouse	PKG75817	16	49	784
25580	North America	Mexico	Mexico City	The Commons at Calabasas	FG458PD	Red Blouse	PKG27692	16	49	784
25581	Europe	Germany	Berlin	Del Amo Fashion Center	FG458PD	Red Blouse	PKG45619	7	49	343
25582	Asia	Japan	Tokyo	Del Monte Center	FG458PD	Red Blouse	PKG9518	1	49	49
25583	Africa	Egypt	Cairo	Desert Fashion Plaza	FG458PD	Red Blouse	PKG54881	22	49	1078
25584	Asia	Russia	Moscow	Downtown Commons	FG458PD	Red Blouse	PKG89469	9	49	441
25585	Africa	Tanzania	Dodoma	Downtown Disney	FG458PD	Red Blouse	PKG59681	12	49	588
25586	Europe	France	Paris	El Cerrito Plaza	FG458PD	Red Blouse	PKG39871	9	49	441
25587	North America	Canada	Toronto	East Bay Science and Technology Center	FG458PD	Red Blouse	PKG14961	1	49	49
25588	Asia	China	Shanghai	Eastland Center	FG458PD	Red Blouse	PKG98620	4	49	196
25589	Africa	Nigeria	Lagos	Eastridge Center	FG458PD	Red Blouse	PKG57106	21	49	1029
25590	Europe	Spain	Madrid	Fallbrook Center	FG458PD	Red Blouse	PKG55029	7	49	343
25591	North America	United States	Washington, D.C.	Fashion Fair	FG458PD	Red Blouse	PKG48773	13	49	637
25592	Europe	Poland	Warsaw	Auburn Mall	FG458PD	Red Blouse	PKG25459	18	49	882
25593	North America	United States	Washington, D.C.	Bridge Street Town Centre	FG458PD	Red Blouse	PKG43030	14	49	686
25594	Asia	China	Beijing	Brookwood Village	FG458PD	Red Blouse	PKG53272	24	49	1176
25595	Africa	Nigeria	Abuja	Century Plaza	FG458PD	Red Blouse	PKG13702	6	49	294
25596	Europe	Germany	Berlin	Decatur Mall	FG458PD	Red Blouse	PKG54771	10	49	490
25597	Europe	Austria	Vienna	Eastdale Mall	FG458PD	Red Blouse	PKG31101	13	49	637
25598	North America	Mexico	Salinas de Hidalgo	Eastern Shore Centre	FG458PD	Red Blouse	PKG30620	12	49	588
25599	Asia	Russia	Moscow	Eastwood Mall	FG458PD	Red Blouse	PKG67176	2	49	98
25600	Africa	Ethiopia	Addis Ababa	Florence Mall	FG458PD	Red Blouse	PKG74402	23	49	1127
25601	North America	Canada	Ottawa	Gadsden Mall	FG458PD	Red Blouse	PKG93624	21	49	1029
25602	Asia	India	New Delhi	Heart of Huntsville Mall	FG458PD	Red Blouse	PKG66573	9	49	441
25603	Africa	Egypt	Cairo	High Point Town Center	FG458PD	Red Blouse	PKG687	1	49	49
25604	Europe	France	Paris	Jasper Mall	FG458PD	Red Blouse	PKG82507	1	49	49
\.


--
-- Data for Name: stores_customer_stock_info_warehouse; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stores_customer_stock_info_warehouse (id, customer_stock_info_id, warehouse_stock_info_id) FROM stdin;
\.


--
-- Data for Name: warehouse_warehouse_stock_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.warehouse_warehouse_stock_info (id, warehouse_location, warehouse_name, sku, product_description, invoice_number, quantity, price, value, in_packing, purchase_date, warehouse_type) FROM stdin;
1563	East_Side	Sikorki	WZ087SJ	Red Jacket	INV61222	19	29	551	f	2018-12-12	Wholesale
1564	East_Side	Sikorki	WL0827P	Black Jacket	INV7514	10	19	190	f	2018-11-11	Wholesale
1565	East_Side	Sikorki	AK83534	Rose Dress	INV80354	1	39	39	f	2018-10-10	Wholesale
1566	East_Side	Sikorki	MU09863	White T-Shirt	INV25855	11	9	99	f	2018-09-09	Wholesale
1567	East_Side	Sikorki	WI034S2	Grey Shoes	INV55320	8	59	472	f	2018-08-08	Wholesale
1568	East_Side	Sikorki	78WZ923	Black Flip-Flops	INV29630	19	99	1881	f	2018-07-07	Wholesale
1569	East_Side	Sikorki	FG458PD	Red Blouse	INV61365	23	49	1127	f	2018-06-06	Wholesale
1570	East_Side	Sikorki	GZ782SP	Dark Hat	INV99681	25	69	1725	f	2018-05-05	Wholesale
1571	East_Side	Sikorki	AZ8709A	Denim Pants	INV16240	17	89	1513	f	2018-04-04	Wholesale
1572	West_Side	Poniatowski	WZ087SJ	Red Jacket	INV61222	12	29	348	f	2018-12-12	E-Commerce
1573	West_Side	Poniatowski	WL0827P	Black Jacket	INV7514	4	19	76	f	2018-11-11	E-Commerce
1574	West_Side	Poniatowski	AK83534	Rose Dress	INV80354	55	39	2145	f	2018-10-10	E-Commerce
1575	West_Side	Poniatowski	MU09863	White T-Shirt	INV25855	23	9	207	f	2018-09-09	E-Commerce
1576	West_Side	Poniatowski	WI034S2	Grey Shoes	INV55320	44	59	2596	f	2018-08-08	E-Commerce
1577	West_Side	Poniatowski	78WZ923	Black Flip-Flops	INV29630	12	99	1188	f	2018-07-07	E-Commerce
1578	West_Side	Poniatowski	FG458PD	Red Blouse	INV61365	24	49	1176	f	2018-06-06	E-Commerce
1579	West_Side	Poniatowski	GZ782SP	Dark Hat	INV99681	12	69	828	f	2018-05-05	E-Commerce
1580	West_Side	Poniatowski	AZ8709A	Denim Pants	INV16240	5	89	445	f	2018-04-04	E-Commerce
1581	North_Side	Kulczewski	WZ087SJ	Red Jacket	INV61222	66	29	1914	f	2018-12-12	Licensee
1582	North_Side	Kulczewski	WL0827P	Black Jacket	INV7514	25	19	475	f	2018-11-11	Licensee
1583	North_Side	Kulczewski	AK83534	Rose Dress	INV80354	33	39	1287	f	2018-10-10	Licensee
1584	North_Side	Kulczewski	MU09863	White T-Shirt	INV25855	12	9	108	f	2018-09-09	Licensee
1585	North_Side	Kulczewski	WI034S2	Grey Shoes	INV55320	66	59	3894	f	2018-08-08	Licensee
1586	North_Side	Kulczewski	78WZ923	Black Flip-Flops	INV29630	23	99	2277	f	2018-07-07	Licensee
1587	North_Side	Kulczewski	FG458PD	Red Blouse	INV61365	222	49	10878	f	2018-06-06	Licensee
1588	North_Side	Kulczewski	GZ782SP	Dark Hat	INV99681	11	69	759	f	2018-05-05	Licensee
1589	North_Side	Kulczewski	AZ8709A	Denim Pants	INV16240	5	89	445	f	2018-04-04	Licensee
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: basket_basket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_basket_id_seq', 175, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 17, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 59, true);


--
-- Name: invoices_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_invoice_id_seq', 64, true);


--
-- Name: invoices_invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_invoices_id_seq', 156, true);


--
-- Name: shop_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_shop_id_seq', 9, true);


--
-- Name: stores_customer_stock_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stores_customer_stock_info_id_seq', 25605, true);


--
-- Name: stores_customer_stock_info_warhouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stores_customer_stock_info_warhouse_id_seq', 12, true);


--
-- Name: warehouse_warehouse_stock_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouse_warehouse_stock_info_id_seq', 1595, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: basket_basket basket_basket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_basket
    ADD CONSTRAINT basket_basket_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: invoices_invoice invoices_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_invoice
    ADD CONSTRAINT invoices_invoice_pkey PRIMARY KEY (id);


--
-- Name: invoices_invoices invoices_invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_invoices
    ADD CONSTRAINT invoices_invoices_pkey PRIMARY KEY (id);


--
-- Name: shop_shop shop_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_shop
    ADD CONSTRAINT shop_shop_pkey PRIMARY KEY (id);


--
-- Name: stores_customer_stock_info_warehouse stores_customer_stock_in_customer_stock_info_id_w_aff457e2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info_warehouse
    ADD CONSTRAINT stores_customer_stock_in_customer_stock_info_id_w_aff457e2_uniq UNIQUE (customer_stock_info_id, warehouse_stock_info_id);


--
-- Name: stores_customer_stock_info stores_customer_stock_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info
    ADD CONSTRAINT stores_customer_stock_info_pkey PRIMARY KEY (id);


--
-- Name: stores_customer_stock_info_warehouse stores_customer_stock_info_warhouse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info_warehouse
    ADD CONSTRAINT stores_customer_stock_info_warhouse_pkey PRIMARY KEY (id);


--
-- Name: warehouse_warehouse_stock_info warehouse_warehouse_stock_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouse_warehouse_stock_info
    ADD CONSTRAINT warehouse_warehouse_stock_info_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: invoices_invoices_invoice_id_f7524ed9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoices_invoices_invoice_id_f7524ed9 ON public.invoices_invoices USING btree (invoice_id);


--
-- Name: stores_customer_stock_info_customer_stock_info_id_0e6b7885; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stores_customer_stock_info_customer_stock_info_id_0e6b7885 ON public.stores_customer_stock_info_warehouse USING btree (customer_stock_info_id);


--
-- Name: stores_customer_stock_info_warehouse_stock_info_id_7493539b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stores_customer_stock_info_warehouse_stock_info_id_7493539b ON public.stores_customer_stock_info_warehouse USING btree (warehouse_stock_info_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invoices_invoices invoices_invoices_invoice_id_f7524ed9_fk_invoices_invoice_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices_invoices
    ADD CONSTRAINT invoices_invoices_invoice_id_f7524ed9_fk_invoices_invoice_id FOREIGN KEY (invoice_id) REFERENCES public.invoices_invoice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stores_customer_stock_info_warehouse stores_customer_stoc_customer_stock_info__2b89738f_fk_stores_cu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info_warehouse
    ADD CONSTRAINT stores_customer_stoc_customer_stock_info__2b89738f_fk_stores_cu FOREIGN KEY (customer_stock_info_id) REFERENCES public.stores_customer_stock_info(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stores_customer_stock_info_warehouse stores_customer_stoc_warehouse_stock_info_9f4560fb_fk_warehouse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores_customer_stock_info_warehouse
    ADD CONSTRAINT stores_customer_stoc_warehouse_stock_info_9f4560fb_fk_warehouse FOREIGN KEY (warehouse_stock_info_id) REFERENCES public.warehouse_warehouse_stock_info(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


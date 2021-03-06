PGDMP                      	    y           postgres    13.0    13.0     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13442    postgres    DATABASE     d   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3004                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16441    articles    TABLE     ?   CREATE TABLE public.articles (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    image text NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.articles;
       public         heap    postgres    false            ?            1259    16447    articles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    201            ?           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    202            ?            1259    16449    users    TABLE     Z   CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password text
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16455    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            +           2604    16465    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            ,           2604    16466    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            ?          0    16441    articles 
   TABLE DATA           G   COPY public.articles (id, name, description, image, price) FROM stdin;
    public          postgres    false    201   ?       ?          0    16449    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    203   <       ?           0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 9, true);
          public          postgres    false    202            ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    204            .           2606    16460    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    201            0           2606    16462    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            ?   L  x?m?MO1???_1?J̲ 1??DD?T?e?Na??n?.????ȁ?̤??y??ϸAq???=T-??N?fO???
w?.?\.k?KWv?l???v????E??n?LmO?????VAt*?uڨs???@?=?%`U?'[?+ػ?D?????a?>?#?@L%?aqָ?A??FI?-??8?*Q?c????~?}?󉶅?f????O{??A??????%????I????b???GGf??#y8?iH*??"4??X???w????ً%7?J9h?"K??-o\?bHs(6u$%E4!ɵ?m????/?????3ϲ??P??      ?   ?   x?e???   г|?gD@?[???5???\q?6?"]????x?????[?l??F?Nڲ??]d?t??Y\2V??f/?XU?U?<?????F??w???K?Ģ? B??_R>???496?0?>|UHm<????5??c??5/????7? ??4V     
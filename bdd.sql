PGDMP                          y            postgres    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     p   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Chinese (Simplified)_China.936';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3004                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16451    articles    TABLE     �   CREATE TABLE public.articles (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    image text NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    16449    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    204            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    203            �            1259    16417    users    TABLE     Z   CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16415    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    202            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    201            ,           2604    16454    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            +           2604    16420    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            �          0    16451    articles 
   TABLE DATA           G   COPY public.articles (id, name, description, image, price) FROM stdin;
    public          postgres    false    204   �       �          0    16417    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    202   
       �           0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 9, true);
          public          postgres    false    203            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    201            0           2606    16459    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    204            .           2606    16425    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    202            �   �  x��TM��6^˧��[���E03�  �AvJz��P"�O�k��K�k�W5�A-P@%<���{ʣ��z�M/����H�;K ��֊/��8}�D+o��ueg��`ltpN�_(��Y��S���{0݁��~�,��M���K����ú.�N����Q�4�"���	��;eG��8�2]$���]!�W��L��t�+�gx�X�{�r������Xcgc�D���{�T��T���mE�K�&)X�Ѻ�w�廆u<��um���WiE�t=�P%<K�"oʴN ������m˛��g�R,�B�� =
rRކ���dǅ��i?]Pw��$���L?�װ���r��_B�ȵ���*��;�[�"�5({P��x�To�Bc%����yAK��u���s�&E��4O������C2�B��~�X�:����H�%�nx�_N�^̴���.X��@�#�ӷg�$V�������s�1HbxuXu�m����)�.*����eQ���K����w��!|���!�/��$�B�"c'4��/�n^�D6h�ÑA?��^O-��b��#��6�v±n��lW|u�ΰi��K�*y]��RK�~��E��M���m�؟xn�3�i�у:s����_\:�V82J�C5}o͵ff�M'NN��Y�����ѬJd:po�737r?	���^����Ʊ�ܒw�a�xu�UM�I�MZ�dw,�͐�]Y%�����`7��EHy�)^,� ���      �   �   x�e���   г|�gD@�[���5���\q�6�"]����x�����[�l��F�Nڲ��]d�t�Y\2V��f/�XU�U�<�����F��w���K�Ģ� B��_R>��?496�0�>|UHm<���5?�c��5/����7� ��4V     
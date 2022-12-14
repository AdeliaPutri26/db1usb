PGDMP     	    4            
    z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16581    retail    DATABASE     j   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16583    barang    TABLE     ?   CREATE TABLE public.barang (
    idbarang integer NOT NULL,
    namabarang character varying(30),
    harga integer,
    stok integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16582    barang_idbarang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_idbarang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.barang_idbarang_seq;
       public          postgres    false    210                       0    0    barang_idbarang_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.barang_idbarang_seq OWNED BY public.barang.idbarang;
          public          postgres    false    209            ?            1259    16597 
   pembayaran    TABLE     Y   CREATE TABLE public.pembayaran (
    idbayar integer NOT NULL,
    totalbayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16596    pembayaran_idbayar_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_idbayar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pembayaran_idbayar_seq;
       public          postgres    false    214                       0    0    pembayaran_idbayar_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pembayaran_idbayar_seq OWNED BY public.pembayaran.idbayar;
          public          postgres    false    213            ?            1259    16590    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    idpembeli integer NOT NULL,
    namapembeli character varying(30),
    alamat character varying(30)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16589    pembeli_idpembeli_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembeli_idpembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pembeli_idpembeli_seq;
       public          postgres    false    212                       0    0    pembeli_idpembeli_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pembeli_idpembeli_seq OWNED BY public.pembeli.idpembeli;
          public          postgres    false    211            f           2604    16586    barang idbarang    DEFAULT     r   ALTER TABLE ONLY public.barang ALTER COLUMN idbarang SET DEFAULT nextval('public.barang_idbarang_seq'::regclass);
 >   ALTER TABLE public.barang ALTER COLUMN idbarang DROP DEFAULT;
       public          postgres    false    210    209    210            h           2604    16600    pembayaran idbayar    DEFAULT     x   ALTER TABLE ONLY public.pembayaran ALTER COLUMN idbayar SET DEFAULT nextval('public.pembayaran_idbayar_seq'::regclass);
 A   ALTER TABLE public.pembayaran ALTER COLUMN idbayar DROP DEFAULT;
       public          postgres    false    213    214    214            g           2604    16593    pembeli idpembeli    DEFAULT     v   ALTER TABLE ONLY public.pembeli ALTER COLUMN idpembeli SET DEFAULT nextval('public.pembeli_idpembeli_seq'::regclass);
 @   ALTER TABLE public.pembeli ALTER COLUMN idpembeli DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16583    barang 
   TABLE DATA           C   COPY public.barang (idbarang, namabarang, harga, stok) FROM stdin;
    public          postgres    false    210   ?       ?          0    16597 
   pembayaran 
   TABLE DATA           9   COPY public.pembayaran (idbayar, totalbayar) FROM stdin;
    public          postgres    false    214          ?          0    16590    pembeli 
   TABLE DATA           A   COPY public.pembeli (idpembeli, namapembeli, alamat) FROM stdin;
    public          postgres    false    212   K       	           0    0    barang_idbarang_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.barang_idbarang_seq', 1, false);
          public          postgres    false    209            
           0    0    pembayaran_idbayar_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pembayaran_idbayar_seq', 1, false);
          public          postgres    false    213                       0    0    pembeli_idpembeli_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pembeli_idpembeli_seq', 1, false);
          public          postgres    false    211            j           2606    16588    barang barang_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (idbarang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            n           2606    16602    pembayaran pembayaran_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (idbayar);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    214            l           2606    16595    pembeli pembeli_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (idpembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    212            ?   <   x?32?tJ?*?43500?442?22?tN?I?K?44 NS.Cΐ?bNS0?&F??? u??      ?   )   x?32246??45 .##CcNCψ?$????? ???      ?   Q   x?32246??tLI??qp?s??2224?0?(-)??K?p?u
J?d?RF??YE?@)gG? GGwOG??=... $??     
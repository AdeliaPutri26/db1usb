PGDMP                     
    z            siakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16498    siakad    DATABASE     ?   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16510    dosen    TABLE     w   CREATE TABLE public.dosen (
    namadosen character varying(30) NOT NULL,
    namamk character varying(30) NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16505    matkul    TABLE     d   CREATE TABLE public.matkul (
    namamk character varying(30) NOT NULL,
    sks integer NOT NULL
);
    DROP TABLE public.matkul;
       public         heap    postgres    false            ?            1259    16500    mhs    TABLE     ?   CREATE TABLE public.mhs (
    nim integer NOT NULL,
    nama character varying(30) NOT NULL,
    alamat character varying(30) NOT NULL
);
    DROP TABLE public.mhs;
       public         heap    postgres    false                       0    16510    dosen 
   TABLE DATA           2   COPY public.dosen (namadosen, namamk) FROM stdin;
    public          postgres    false    216   ?
       ?          0    16505    matkul 
   TABLE DATA           -   COPY public.matkul (namamk, sks) FROM stdin;
    public          postgres    false    215   
       ?          0    16500    mhs 
   TABLE DATA           0   COPY public.mhs (nim, nama, alamat) FROM stdin;
    public          postgres    false    214   3       o           2606    16509    matkul matkul_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.matkul
    ADD CONSTRAINT matkul_pkey PRIMARY KEY (sks);
 <   ALTER TABLE ONLY public.matkul DROP CONSTRAINT matkul_pkey;
       public            postgres    false    215            m           2606    16504    mhs mhs_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.mhs
    ADD CONSTRAINT mhs_pkey PRIMARY KEY (nim);
 6   ALTER TABLE ONLY public.mhs DROP CONSTRAINT mhs_pkey;
       public            postgres    false    214                !   x???K)J?L???,?M,??????????? g ?      ?      x?p??4?????4?????? "?V      ?   <   x?34351?tLI??LT(-)??I,H?K??24156???%r$?&??e?b???? ??      
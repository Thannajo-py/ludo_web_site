toc.dat                                                                                             0000600 0004000 0002000 00000505065 14047007276 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           y        	   fil_rouge    13.2    13.2 ?   4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         7           1262    22314 	   fil_rouge    DATABASE     e   CREATE DATABASE fil_rouge WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE fil_rouge;
                postgres    false         ?            1259    22346 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         ?            1259    22344    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    205         8           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    204         ?            1259    22356    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         ?            1259    22354    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    207         9           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    206         ?            1259    22338    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         ?            1259    22336    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    203         :           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    202         ?            1259    22364 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false         ?            1259    22374    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false         ?            1259    22372    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    211         ;           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    210         ?            1259    22362    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    209         <           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    208         ?            1259    22382    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false         ?            1259    22380 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    213         =           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    212         ?            1259    22442    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false         ?            1259    22440    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    215         >           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    214         ?            1259    22328    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         ?            1259    22326    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    201         ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    200         ?            1259    33351    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         ?            1259    33349    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    248         @           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    247         ?            1259    22473    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false                    1259    126047    ludoaccueil_news    TABLE     ?  CREATE TABLE public.ludoaccueil_news (
    id integer NOT NULL,
    internal_img_url character varying(200),
    external_img_url character varying(200),
    internal_video_url character varying(200),
    external_video_url text,
    content text,
    internal_video_codec character varying(10),
    created_at timestamp with time zone NOT NULL,
    title character varying(200),
    audio_codec character varying(200),
    audio_url character varying(200)
);
 $   DROP TABLE public.ludoaccueil_news;
       public         heap    postgres    false                    1259    126045    ludoaccueil_news_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludoaccueil_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ludoaccueil_news_id_seq;
       public          postgres    false    280         A           0    0    ludoaccueil_news_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ludoaccueil_news_id_seq OWNED BY public.ludoaccueil_news.id;
          public          postgres    false    279         ?            1259    22573    ludorecherche_addon_artists    TABLE     ?   CREATE TABLE public.ludorecherche_addon_artists (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    artist_id integer NOT NULL
);
 /   DROP TABLE public.ludorecherche_addon_artists;
       public         heap    postgres    false         ?            1259    22571 #   ludorecherche_add_on_artists_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.ludorecherche_add_on_artists_id_seq;
       public          postgres    false    234         B           0    0 #   ludorecherche_add_on_artists_id_seq    SEQUENCE OWNED BY     j   ALTER SEQUENCE public.ludorecherche_add_on_artists_id_seq OWNED BY public.ludorecherche_addon_artists.id;
          public          postgres    false    233         ?            1259    22581    ludorecherche_addon_designers    TABLE     ?   CREATE TABLE public.ludorecherche_addon_designers (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    designer_id integer NOT NULL
);
 1   DROP TABLE public.ludorecherche_addon_designers;
       public         heap    postgres    false         ?            1259    22579 %   ludorecherche_add_on_designers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.ludorecherche_add_on_designers_id_seq;
       public          postgres    false    236         C           0    0 %   ludorecherche_add_on_designers_id_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public.ludorecherche_add_on_designers_id_seq OWNED BY public.ludorecherche_addon_designers.id;
          public          postgres    false    235         ?            1259    22485    ludorecherche_addon    TABLE     %  CREATE TABLE public.ludorecherche_addon (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text,
    bgg_link text NOT NULL,
    game_id integer,
    language_id integer,
    age integer,
    english_name character varying(200),
    buying_price integer,
    stock integer NOT NULL,
    external_image text,
    thumb_image text,
    max_time integer
);
 '   DROP TABLE public.ludorecherche_addon;
       public         heap    postgres    false         ?            1259    22483    ludorecherche_add_on_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ludorecherche_add_on_id_seq;
       public          postgres    false    218         D           0    0    ludorecherche_add_on_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.ludorecherche_add_on_id_seq OWNED BY public.ludorecherche_addon.id;
          public          postgres    false    217         ?            1259    33191     ludorecherche_addon_playing_mode    TABLE     ?   CREATE TABLE public.ludorecherche_addon_playing_mode (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    playingmode_id integer NOT NULL
);
 4   DROP TABLE public.ludorecherche_addon_playing_mode;
       public         heap    postgres    false         ?            1259    33189 (   ludorecherche_add_on_playing_mode_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq;
       public          postgres    false    244         E           0    0 (   ludorecherche_add_on_playing_mode_id_seq    SEQUENCE OWNED BY     t   ALTER SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_addon_playing_mode.id;
          public          postgres    false    243         ?            1259    22589    ludorecherche_addon_publishers    TABLE     ?   CREATE TABLE public.ludorecherche_addon_publishers (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    publisher_id integer NOT NULL
);
 2   DROP TABLE public.ludorecherche_addon_publishers;
       public         heap    postgres    false         ?            1259    22587 &   ludorecherche_add_on_publishers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.ludorecherche_add_on_publishers_id_seq;
       public          postgres    false    238         F           0    0 &   ludorecherche_add_on_publishers_id_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.ludorecherche_add_on_publishers_id_seq OWNED BY public.ludorecherche_addon_publishers.id;
          public          postgres    false    237         ?            1259    22498    ludorecherche_artist    TABLE     p   CREATE TABLE public.ludorecherche_artist (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 (   DROP TABLE public.ludorecherche_artist;
       public         heap    postgres    false         ?            1259    22496    ludorecherche_artist_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ludorecherche_artist_id_seq;
       public          postgres    false    220         G           0    0    ludorecherche_artist_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ludorecherche_artist_id_seq OWNED BY public.ludorecherche_artist.id;
          public          postgres    false    219                    1259    125279    ludorecherche_background    TABLE     ?   CREATE TABLE public.ludorecherche_background (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    theme_id integer
);
 ,   DROP TABLE public.ludorecherche_background;
       public         heap    postgres    false                    1259    125277    ludorecherche_background_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_background_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ludorecherche_background_id_seq;
       public          postgres    false    270         H           0    0    ludorecherche_background_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ludorecherche_background_id_seq OWNED BY public.ludorecherche_background.id;
          public          postgres    false    269         ?            1259    22508    ludorecherche_designer    TABLE     r   CREATE TABLE public.ludorecherche_designer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 *   DROP TABLE public.ludorecherche_designer;
       public         heap    postgres    false         ?            1259    22506    ludorecherche_designer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_designer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ludorecherche_designer_id_seq;
       public          postgres    false    222         I           0    0    ludorecherche_designer_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ludorecherche_designer_id_seq OWNED BY public.ludorecherche_designer.id;
          public          postgres    false    221         ?            1259    33535    ludorecherche_difficulty    TABLE     t   CREATE TABLE public.ludorecherche_difficulty (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 ,   DROP TABLE public.ludorecherche_difficulty;
       public         heap    postgres    false         ?            1259    33533    ludorecherche_difficulty_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_difficulty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ludorecherche_difficulty_id_seq;
       public          postgres    false    250         J           0    0    ludorecherche_difficulty_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ludorecherche_difficulty_id_seq OWNED BY public.ludorecherche_difficulty.id;
          public          postgres    false    249         ?            1259    22528    ludorecherche_game    TABLE     /  CREATE TABLE public.ludorecherche_game (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text,
    bgg_link text NOT NULL,
    by_player boolean NOT NULL,
    max_time integer,
    age integer,
    language_id integer,
    english_name character varying(200),
    buying_price integer,
    stock integer NOT NULL,
    external_image text,
    thumb_image text
);
 &   DROP TABLE public.ludorecherche_game;
       public         heap    postgres    false         ?            1259    22549    ludorecherche_game_artists    TABLE     ?   CREATE TABLE public.ludorecherche_game_artists (
    id integer NOT NULL,
    game_id integer NOT NULL,
    artist_id integer NOT NULL
);
 .   DROP TABLE public.ludorecherche_game_artists;
       public         heap    postgres    false         ?            1259    22547 !   ludorecherche_game_artists_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ludorecherche_game_artists_id_seq;
       public          postgres    false    228         K           0    0 !   ludorecherche_game_artists_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ludorecherche_game_artists_id_seq OWNED BY public.ludorecherche_game_artists.id;
          public          postgres    false    227         ?            1259    22557    ludorecherche_game_designers    TABLE     ?   CREATE TABLE public.ludorecherche_game_designers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    designer_id integer NOT NULL
);
 0   DROP TABLE public.ludorecherche_game_designers;
       public         heap    postgres    false         ?            1259    22555 #   ludorecherche_game_designers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.ludorecherche_game_designers_id_seq;
       public          postgres    false    230         L           0    0 #   ludorecherche_game_designers_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.ludorecherche_game_designers_id_seq OWNED BY public.ludorecherche_game_designers.id;
          public          postgres    false    229         ?            1259    22526    ludorecherche_game_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ludorecherche_game_id_seq;
       public          postgres    false    226         M           0    0    ludorecherche_game_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ludorecherche_game_id_seq OWNED BY public.ludorecherche_game.id;
          public          postgres    false    225                    1259    125417    ludorecherche_game_mechanism    TABLE     ?   CREATE TABLE public.ludorecherche_game_mechanism (
    id integer NOT NULL,
    game_id integer NOT NULL,
    mechanism_id integer NOT NULL
);
 0   DROP TABLE public.ludorecherche_game_mechanism;
       public         heap    postgres    false                    1259    125415 #   ludorecherche_game_mechanism_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_mechanism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.ludorecherche_game_mechanism_id_seq;
       public          postgres    false    276         N           0    0 #   ludorecherche_game_mechanism_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.ludorecherche_game_mechanism_id_seq OWNED BY public.ludorecherche_game_mechanism.id;
          public          postgres    false    275         ?            1259    33199    ludorecherche_game_playing_mode    TABLE     ?   CREATE TABLE public.ludorecherche_game_playing_mode (
    id integer NOT NULL,
    game_id integer NOT NULL,
    playingmode_id integer NOT NULL
);
 3   DROP TABLE public.ludorecherche_game_playing_mode;
       public         heap    postgres    false         ?            1259    33197 &   ludorecherche_game_playing_mode_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.ludorecherche_game_playing_mode_id_seq;
       public          postgres    false    246         O           0    0 &   ludorecherche_game_playing_mode_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.ludorecherche_game_playing_mode_id_seq OWNED BY public.ludorecherche_game_playing_mode.id;
          public          postgres    false    245         ?            1259    22565    ludorecherche_game_publishers    TABLE     ?   CREATE TABLE public.ludorecherche_game_publishers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    publisher_id integer NOT NULL
);
 1   DROP TABLE public.ludorecherche_game_publishers;
       public         heap    postgres    false         ?            1259    22563 $   ludorecherche_game_publishers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.ludorecherche_game_publishers_id_seq;
       public          postgres    false    232         P           0    0 $   ludorecherche_game_publishers_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.ludorecherche_game_publishers_id_seq OWNED BY public.ludorecherche_game_publishers.id;
          public          postgres    false    231         ?            1259    33590    ludorecherche_game_tag    TABLE     ?   CREATE TABLE public.ludorecherche_game_tag (
    id integer NOT NULL,
    game_id integer NOT NULL,
    tag_id integer NOT NULL
);
 *   DROP TABLE public.ludorecherche_game_tag;
       public         heap    postgres    false         ?            1259    33588    ludorecherche_game_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ludorecherche_game_tag_id_seq;
       public          postgres    false    254         Q           0    0    ludorecherche_game_tag_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ludorecherche_game_tag_id_seq OWNED BY public.ludorecherche_game_tag.id;
          public          postgres    false    253                    1259    125425    ludorecherche_game_topic    TABLE     ?   CREATE TABLE public.ludorecherche_game_topic (
    id integer NOT NULL,
    game_id integer NOT NULL,
    topic_id integer NOT NULL
);
 ,   DROP TABLE public.ludorecherche_game_topic;
       public         heap    postgres    false                    1259    125423    ludorecherche_game_topic_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_game_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ludorecherche_game_topic_id_seq;
       public          postgres    false    278         R           0    0    ludorecherche_game_topic_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ludorecherche_game_topic_id_seq OWNED BY public.ludorecherche_game_topic.id;
          public          postgres    false    277         ?            1259    33049    ludorecherche_language    TABLE     r   CREATE TABLE public.ludorecherche_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 *   DROP TABLE public.ludorecherche_language;
       public         heap    postgres    false         ?            1259    33047    ludorecherche_language_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ludorecherche_language_id_seq;
       public          postgres    false    240         S           0    0    ludorecherche_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ludorecherche_language_id_seq OWNED BY public.ludorecherche_language.id;
          public          postgres    false    239                    1259    125397    ludorecherche_mechanism    TABLE     s   CREATE TABLE public.ludorecherche_mechanism (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 +   DROP TABLE public.ludorecherche_mechanism;
       public         heap    postgres    false                    1259    125395    ludorecherche_mechanism_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_mechanism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ludorecherche_mechanism_id_seq;
       public          postgres    false    272         T           0    0    ludorecherche_mechanism_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ludorecherche_mechanism_id_seq OWNED BY public.ludorecherche_mechanism.id;
          public          postgres    false    271                    1259    86136     ludorecherche_multiaddon_artists    TABLE     ?   CREATE TABLE public.ludorecherche_multiaddon_artists (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    artist_id integer NOT NULL
);
 4   DROP TABLE public.ludorecherche_multiaddon_artists;
       public         heap    postgres    false                    1259    86134 )   ludorecherche_multi_add_on_artists_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq;
       public          postgres    false    258         U           0    0 )   ludorecherche_multi_add_on_artists_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq OWNED BY public.ludorecherche_multiaddon_artists.id;
          public          postgres    false    257                    1259    86144 "   ludorecherche_multiaddon_designers    TABLE     ?   CREATE TABLE public.ludorecherche_multiaddon_designers (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    designer_id integer NOT NULL
);
 6   DROP TABLE public.ludorecherche_multiaddon_designers;
       public         heap    postgres    false                    1259    86142 +   ludorecherche_multi_add_on_designers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq;
       public          postgres    false    260         V           0    0 +   ludorecherche_multi_add_on_designers_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq OWNED BY public.ludorecherche_multiaddon_designers.id;
          public          postgres    false    259                    1259    86152    ludorecherche_multiaddon_games    TABLE     ?   CREATE TABLE public.ludorecherche_multiaddon_games (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    game_id integer NOT NULL
);
 2   DROP TABLE public.ludorecherche_multiaddon_games;
       public         heap    postgres    false                    1259    86150 '   ludorecherche_multi_add_on_games_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_multi_add_on_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.ludorecherche_multi_add_on_games_id_seq;
       public          postgres    false    262         W           0    0 '   ludorecherche_multi_add_on_games_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.ludorecherche_multi_add_on_games_id_seq OWNED BY public.ludorecherche_multiaddon_games.id;
          public          postgres    false    261                     1259    86123    ludorecherche_multiaddon    TABLE       CREATE TABLE public.ludorecherche_multiaddon (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    created_at timestamp with time zone NOT NULL,
    picture text,
    bgg_link text NOT NULL,
    difficulty_id integer,
    language_id integer,
    age integer,
    english_name character varying(200),
    buying_price integer,
    stock integer NOT NULL,
    external_image text,
    thumb_image text,
    max_time integer
);
 ,   DROP TABLE public.ludorecherche_multiaddon;
       public         heap    postgres    false         ?            1259    86121 !   ludorecherche_multi_add_on_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_multi_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ludorecherche_multi_add_on_id_seq;
       public          postgres    false    256         X           0    0 !   ludorecherche_multi_add_on_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ludorecherche_multi_add_on_id_seq OWNED BY public.ludorecherche_multiaddon.id;
          public          postgres    false    255                    1259    86160 %   ludorecherche_multiaddon_playing_mode    TABLE     ?   CREATE TABLE public.ludorecherche_multiaddon_playing_mode (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    playingmode_id integer NOT NULL
);
 9   DROP TABLE public.ludorecherche_multiaddon_playing_mode;
       public         heap    postgres    false                    1259    86158 .   ludorecherche_multi_add_on_playing_mode_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq;
       public          postgres    false    264         Y           0    0 .   ludorecherche_multi_add_on_playing_mode_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_multiaddon_playing_mode.id;
          public          postgres    false    263         
           1259    86168 #   ludorecherche_multiaddon_publishers    TABLE     ?   CREATE TABLE public.ludorecherche_multiaddon_publishers (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    publisher_id integer NOT NULL
);
 7   DROP TABLE public.ludorecherche_multiaddon_publishers;
       public         heap    postgres    false         	           1259    86166 ,   ludorecherche_multi_add_on_publishers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq;
       public          postgres    false    266         Z           0    0 ,   ludorecherche_multi_add_on_publishers_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq OWNED BY public.ludorecherche_multiaddon_publishers.id;
          public          postgres    false    265         ?            1259    33059    ludorecherche_playingmode    TABLE     u   CREATE TABLE public.ludorecherche_playingmode (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 -   DROP TABLE public.ludorecherche_playingmode;
       public         heap    postgres    false         ?            1259    33057     ludorecherche_playingmode_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_playingmode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.ludorecherche_playingmode_id_seq;
       public          postgres    false    242         [           0    0     ludorecherche_playingmode_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.ludorecherche_playingmode_id_seq OWNED BY public.ludorecherche_playingmode.id;
          public          postgres    false    241         ?            1259    22518    ludorecherche_publisher    TABLE     s   CREATE TABLE public.ludorecherche_publisher (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 +   DROP TABLE public.ludorecherche_publisher;
       public         heap    postgres    false         ?            1259    22516    ludorecherche_publisher_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ludorecherche_publisher_id_seq;
       public          postgres    false    224         \           0    0    ludorecherche_publisher_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ludorecherche_publisher_id_seq OWNED BY public.ludorecherche_publisher.id;
          public          postgres    false    223         ?            1259    33580    ludorecherche_tag    TABLE     m   CREATE TABLE public.ludorecherche_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 %   DROP TABLE public.ludorecherche_tag;
       public         heap    postgres    false         ?            1259    33578    ludorecherche_tag_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ludorecherche_tag_id_seq;
       public          postgres    false    252         ]           0    0    ludorecherche_tag_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.ludorecherche_tag_id_seq OWNED BY public.ludorecherche_tag.id;
          public          postgres    false    251                    1259    125271    ludorecherche_theme    TABLE     W  CREATE TABLE public.ludorecherche_theme (
    id integer NOT NULL,
    background_image character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    advanced_search_button_text character varying(200) NOT NULL,
    advanced_search_title character varying(200) NOT NULL,
    color_2nd character varying(18) NOT NULL,
    color_3rd character varying(18) NOT NULL,
    color_4th character varying(18) NOT NULL,
    color_main character varying(18) NOT NULL,
    image_404 character varying(200) NOT NULL,
    image_500 character varying(200) NOT NULL,
    index_text text NOT NULL,
    index_title character varying(200) NOT NULL,
    list_all_title character varying(200) NOT NULL,
    text_404 text NOT NULL,
    text_500 text NOT NULL,
    title_404 character varying(200) NOT NULL,
    title_500 character varying(200) NOT NULL,
    font_link text NOT NULL,
    font_name character varying(200) NOT NULL,
    empty_query_text text NOT NULL,
    query_name character varying(200) NOT NULL,
    empty_query_image character varying(200) NOT NULL,
    color_back character varying(18) NOT NULL
);
 '   DROP TABLE public.ludorecherche_theme;
       public         heap    postgres    false                    1259    125269    ludorecherche_theme_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ludorecherche_theme_id_seq;
       public          postgres    false    268         ^           0    0    ludorecherche_theme_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ludorecherche_theme_id_seq OWNED BY public.ludorecherche_theme.id;
          public          postgres    false    267                    1259    125407    ludorecherche_topic    TABLE     o   CREATE TABLE public.ludorecherche_topic (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 '   DROP TABLE public.ludorecherche_topic;
       public         heap    postgres    false                    1259    125405    ludorecherche_topic_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ludorecherche_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ludorecherche_topic_id_seq;
       public          postgres    false    274         _           0    0    ludorecherche_topic_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ludorecherche_topic_id_seq OWNED BY public.ludorecherche_topic.id;
          public          postgres    false    273                    2604    33509    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205                    2604    33510    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                    2604    33511    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                    2604    33512    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                    2604    33513    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                    2604    33514    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                     2604    33515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                    2604    33516    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201         1           2604    33517    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248         A           2604    126050    ludoaccueil_news id    DEFAULT     z   ALTER TABLE ONLY public.ludoaccueil_news ALTER COLUMN id SET DEFAULT nextval('public.ludoaccueil_news_id_seq'::regclass);
 B   ALTER TABLE public.ludoaccueil_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280         "           2604    33518    ludorecherche_addon id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_addon ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_id_seq'::regclass);
 E   ALTER TABLE public.ludorecherche_addon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         *           2604    33519    ludorecherche_addon_artists id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_addon_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_artists_id_seq'::regclass);
 M   ALTER TABLE public.ludorecherche_addon_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234         +           2604    33520     ludorecherche_addon_designers id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_addon_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_designers_id_seq'::regclass);
 O   ALTER TABLE public.ludorecherche_addon_designers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236         /           2604    33521 #   ludorecherche_addon_playing_mode id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_playing_mode_id_seq'::regclass);
 R   ALTER TABLE public.ludorecherche_addon_playing_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244         ,           2604    33522 !   ludorecherche_addon_publishers id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_publishers_id_seq'::regclass);
 P   ALTER TABLE public.ludorecherche_addon_publishers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238         #           2604    33523    ludorecherche_artist id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_artist ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_artist_id_seq'::regclass);
 F   ALTER TABLE public.ludorecherche_artist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220         <           2604    125282    ludorecherche_background id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_background ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_background_id_seq'::regclass);
 J   ALTER TABLE public.ludorecherche_background ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270         $           2604    33524    ludorecherche_designer id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_designer ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_designer_id_seq'::regclass);
 H   ALTER TABLE public.ludorecherche_designer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222         2           2604    33538    ludorecherche_difficulty id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_difficulty ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_difficulty_id_seq'::regclass);
 J   ALTER TABLE public.ludorecherche_difficulty ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250         &           2604    33525    ludorecherche_game id    DEFAULT     ~   ALTER TABLE ONLY public.ludorecherche_game ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_id_seq'::regclass);
 D   ALTER TABLE public.ludorecherche_game ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226         '           2604    33526    ludorecherche_game_artists id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_artists_id_seq'::regclass);
 L   ALTER TABLE public.ludorecherche_game_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228         (           2604    33527    ludorecherche_game_designers id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_designers_id_seq'::regclass);
 N   ALTER TABLE public.ludorecherche_game_designers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230         ?           2604    125420    ludorecherche_game_mechanism id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_mechanism ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_mechanism_id_seq'::regclass);
 N   ALTER TABLE public.ludorecherche_game_mechanism ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276         0           2604    33528 "   ludorecherche_game_playing_mode id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_playing_mode_id_seq'::regclass);
 Q   ALTER TABLE public.ludorecherche_game_playing_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246         )           2604    33529     ludorecherche_game_publishers id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_publishers_id_seq'::regclass);
 O   ALTER TABLE public.ludorecherche_game_publishers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232         4           2604    33593    ludorecherche_game_tag id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_tag_id_seq'::regclass);
 H   ALTER TABLE public.ludorecherche_game_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254         @           2604    125428    ludorecherche_game_topic id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_game_topic ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_topic_id_seq'::regclass);
 J   ALTER TABLE public.ludorecherche_game_topic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278         -           2604    33530    ludorecherche_language id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_language ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_language_id_seq'::regclass);
 H   ALTER TABLE public.ludorecherche_language ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240         =           2604    125400    ludorecherche_mechanism id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_mechanism ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_mechanism_id_seq'::regclass);
 I   ALTER TABLE public.ludorecherche_mechanism ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272         5           2604    86126    ludorecherche_multiaddon id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_id_seq'::regclass);
 J   ALTER TABLE public.ludorecherche_multiaddon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256         6           2604    86139 #   ludorecherche_multiaddon_artists id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_artists_id_seq'::regclass);
 R   ALTER TABLE public.ludorecherche_multiaddon_artists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258         7           2604    86147 %   ludorecherche_multiaddon_designers id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_designers_id_seq'::regclass);
 T   ALTER TABLE public.ludorecherche_multiaddon_designers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260         8           2604    86155 !   ludorecherche_multiaddon_games id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_games_id_seq'::regclass);
 P   ALTER TABLE public.ludorecherche_multiaddon_games ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262         9           2604    86163 (   ludorecherche_multiaddon_playing_mode id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_playing_mode_id_seq'::regclass);
 W   ALTER TABLE public.ludorecherche_multiaddon_playing_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264         :           2604    86171 &   ludorecherche_multiaddon_publishers id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_publishers_id_seq'::regclass);
 U   ALTER TABLE public.ludorecherche_multiaddon_publishers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266         .           2604    33531    ludorecherche_playingmode id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_playingmode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_playingmode_id_seq'::regclass);
 K   ALTER TABLE public.ludorecherche_playingmode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242         %           2604    33532    ludorecherche_publisher id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_publisher ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_publisher_id_seq'::regclass);
 I   ALTER TABLE public.ludorecherche_publisher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224         3           2604    33583    ludorecherche_tag id    DEFAULT     |   ALTER TABLE ONLY public.ludorecherche_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_tag_id_seq'::regclass);
 C   ALTER TABLE public.ludorecherche_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252         ;           2604    125274    ludorecherche_theme id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_theme ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_theme_id_seq'::regclass);
 E   ALTER TABLE public.ludorecherche_theme ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268         >           2604    125410    ludorecherche_topic id    DEFAULT     ?   ALTER TABLE ONLY public.ludorecherche_topic ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_topic_id_seq'::regclass);
 E   ALTER TABLE public.ludorecherche_topic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274         ?          0    22346 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    205       3558.dat ?          0    22356    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    207       3560.dat ?          0    22338    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    203       3556.dat ?          0    22364 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    209       3562.dat ?          0    22374    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    211       3564.dat ?          0    22382    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    213       3566.dat ?          0    22442    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    215       3568.dat ?          0    22328    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    201       3554.dat           0    33351    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    248       3601.dat ?          0    22473    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    216       3569.dat 1          0    126047    ludoaccueil_news 
   TABLE DATA           ?   COPY public.ludoaccueil_news (id, internal_img_url, external_img_url, internal_video_url, external_video_url, content, internal_video_codec, created_at, title, audio_codec, audio_url) FROM stdin;
    public          postgres    false    280       3633.dat ?          0    22485    ludorecherche_addon 
   TABLE DATA           ?   COPY public.ludorecherche_addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) FROM stdin;
    public          postgres    false    218       3571.dat           0    22573    ludorecherche_addon_artists 
   TABLE DATA           N   COPY public.ludorecherche_addon_artists (id, addon_id, artist_id) FROM stdin;
    public          postgres    false    234       3587.dat           0    22581    ludorecherche_addon_designers 
   TABLE DATA           R   COPY public.ludorecherche_addon_designers (id, addon_id, designer_id) FROM stdin;
    public          postgres    false    236       3589.dat           0    33191     ludorecherche_addon_playing_mode 
   TABLE DATA           X   COPY public.ludorecherche_addon_playing_mode (id, addon_id, playingmode_id) FROM stdin;
    public          postgres    false    244       3597.dat           0    22589    ludorecherche_addon_publishers 
   TABLE DATA           T   COPY public.ludorecherche_addon_publishers (id, addon_id, publisher_id) FROM stdin;
    public          postgres    false    238       3591.dat ?          0    22498    ludorecherche_artist 
   TABLE DATA           8   COPY public.ludorecherche_artist (id, name) FROM stdin;
    public          postgres    false    220       3573.dat '          0    125279    ludorecherche_background 
   TABLE DATA           F   COPY public.ludorecherche_background (id, name, theme_id) FROM stdin;
    public          postgres    false    270       3623.dat ?          0    22508    ludorecherche_designer 
   TABLE DATA           :   COPY public.ludorecherche_designer (id, name) FROM stdin;
    public          postgres    false    222       3575.dat           0    33535    ludorecherche_difficulty 
   TABLE DATA           <   COPY public.ludorecherche_difficulty (id, name) FROM stdin;
    public          postgres    false    250       3603.dat ?          0    22528    ludorecherche_game 
   TABLE DATA           ?   COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id, english_name, buying_price, stock, external_image, thumb_image) FROM stdin;
    public          postgres    false    226       3579.dat ?          0    22549    ludorecherche_game_artists 
   TABLE DATA           L   COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM stdin;
    public          postgres    false    228       3581.dat ?          0    22557    ludorecherche_game_designers 
   TABLE DATA           P   COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM stdin;
    public          postgres    false    230       3583.dat -          0    125417    ludorecherche_game_mechanism 
   TABLE DATA           Q   COPY public.ludorecherche_game_mechanism (id, game_id, mechanism_id) FROM stdin;
    public          postgres    false    276       3629.dat           0    33199    ludorecherche_game_playing_mode 
   TABLE DATA           V   COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM stdin;
    public          postgres    false    246       3599.dat           0    22565    ludorecherche_game_publishers 
   TABLE DATA           R   COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM stdin;
    public          postgres    false    232       3585.dat           0    33590    ludorecherche_game_tag 
   TABLE DATA           E   COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM stdin;
    public          postgres    false    254       3607.dat /          0    125425    ludorecherche_game_topic 
   TABLE DATA           I   COPY public.ludorecherche_game_topic (id, game_id, topic_id) FROM stdin;
    public          postgres    false    278       3631.dat 	          0    33049    ludorecherche_language 
   TABLE DATA           :   COPY public.ludorecherche_language (id, name) FROM stdin;
    public          postgres    false    240       3593.dat )          0    125397    ludorecherche_mechanism 
   TABLE DATA           ;   COPY public.ludorecherche_mechanism (id, name) FROM stdin;
    public          postgres    false    272       3625.dat           0    86123    ludorecherche_multiaddon 
   TABLE DATA           ?   COPY public.ludorecherche_multiaddon (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) FROM stdin;
    public          postgres    false    256       3609.dat           0    86136     ludorecherche_multiaddon_artists 
   TABLE DATA           X   COPY public.ludorecherche_multiaddon_artists (id, multiaddon_id, artist_id) FROM stdin;
    public          postgres    false    258       3611.dat           0    86144 "   ludorecherche_multiaddon_designers 
   TABLE DATA           \   COPY public.ludorecherche_multiaddon_designers (id, multiaddon_id, designer_id) FROM stdin;
    public          postgres    false    260       3613.dat           0    86152    ludorecherche_multiaddon_games 
   TABLE DATA           T   COPY public.ludorecherche_multiaddon_games (id, multiaddon_id, game_id) FROM stdin;
    public          postgres    false    262       3615.dat !          0    86160 %   ludorecherche_multiaddon_playing_mode 
   TABLE DATA           b   COPY public.ludorecherche_multiaddon_playing_mode (id, multiaddon_id, playingmode_id) FROM stdin;
    public          postgres    false    264       3617.dat #          0    86168 #   ludorecherche_multiaddon_publishers 
   TABLE DATA           ^   COPY public.ludorecherche_multiaddon_publishers (id, multiaddon_id, publisher_id) FROM stdin;
    public          postgres    false    266       3619.dat           0    33059    ludorecherche_playingmode 
   TABLE DATA           =   COPY public.ludorecherche_playingmode (id, name) FROM stdin;
    public          postgres    false    242       3595.dat ?          0    22518    ludorecherche_publisher 
   TABLE DATA           ;   COPY public.ludorecherche_publisher (id, name) FROM stdin;
    public          postgres    false    224       3577.dat           0    33580    ludorecherche_tag 
   TABLE DATA           5   COPY public.ludorecherche_tag (id, name) FROM stdin;
    public          postgres    false    252       3605.dat %          0    125271    ludorecherche_theme 
   TABLE DATA           f  COPY public.ludorecherche_theme (id, background_image, name, advanced_search_button_text, advanced_search_title, color_2nd, color_3rd, color_4th, color_main, image_404, image_500, index_text, index_title, list_all_title, text_404, text_500, title_404, title_500, font_link, font_name, empty_query_text, query_name, empty_query_image, color_back) FROM stdin;
    public          postgres    false    268       3621.dat +          0    125407    ludorecherche_topic 
   TABLE DATA           7   COPY public.ludorecherche_topic (id, name) FROM stdin;
    public          postgres    false    274       3627.dat `           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    204         a           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    206         b           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
          public          postgres    false    202         c           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    210         d           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    208         e           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    212         f           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 682, true);
          public          postgres    false    214         g           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);
          public          postgres    false    200         h           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 69, true);
          public          postgres    false    247         i           0    0    ludoaccueil_news_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ludoaccueil_news_id_seq', 1, true);
          public          postgres    false    279         j           0    0 #   ludorecherche_add_on_artists_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.ludorecherche_add_on_artists_id_seq', 45, true);
          public          postgres    false    233         k           0    0 %   ludorecherche_add_on_designers_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.ludorecherche_add_on_designers_id_seq', 49, true);
          public          postgres    false    235         l           0    0    ludorecherche_add_on_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ludorecherche_add_on_id_seq', 22, true);
          public          postgres    false    217         m           0    0 (   ludorecherche_add_on_playing_mode_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.ludorecherche_add_on_playing_mode_id_seq', 26, true);
          public          postgres    false    243         n           0    0 &   ludorecherche_add_on_publishers_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.ludorecherche_add_on_publishers_id_seq', 28, true);
          public          postgres    false    237         o           0    0    ludorecherche_artist_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ludorecherche_artist_id_seq', 138, true);
          public          postgres    false    219         p           0    0    ludorecherche_background_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_background_id_seq', 1, true);
          public          postgres    false    269         q           0    0    ludorecherche_designer_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_designer_id_seq', 117, true);
          public          postgres    false    221         r           0    0    ludorecherche_difficulty_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_difficulty_id_seq', 3, true);
          public          postgres    false    249         s           0    0 !   ludorecherche_game_artists_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ludorecherche_game_artists_id_seq', 171, true);
          public          postgres    false    227         t           0    0 #   ludorecherche_game_designers_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ludorecherche_game_designers_id_seq', 136, true);
          public          postgres    false    229         u           0    0    ludorecherche_game_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ludorecherche_game_id_seq', 92, true);
          public          postgres    false    225         v           0    0 #   ludorecherche_game_mechanism_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.ludorecherche_game_mechanism_id_seq', 120, true);
          public          postgres    false    275         w           0    0 &   ludorecherche_game_playing_mode_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.ludorecherche_game_playing_mode_id_seq', 97, true);
          public          postgres    false    245         x           0    0 $   ludorecherche_game_publishers_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.ludorecherche_game_publishers_id_seq', 101, true);
          public          postgres    false    231         y           0    0    ludorecherche_game_tag_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_game_tag_id_seq', 192, true);
          public          postgres    false    253         z           0    0    ludorecherche_game_topic_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ludorecherche_game_topic_id_seq', 93, true);
          public          postgres    false    277         {           0    0    ludorecherche_language_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ludorecherche_language_id_seq', 2, true);
          public          postgres    false    239         |           0    0    ludorecherche_mechanism_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_mechanism_id_seq', 39, true);
          public          postgres    false    271         }           0    0 )   ludorecherche_multi_add_on_artists_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_artists_id_seq', 1, true);
          public          postgres    false    257         ~           0    0 +   ludorecherche_multi_add_on_designers_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_designers_id_seq', 8, true);
          public          postgres    false    259                    0    0 '   ludorecherche_multi_add_on_games_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_games_id_seq', 8, true);
          public          postgres    false    261         ?           0    0 !   ludorecherche_multi_add_on_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_id_seq', 2, true);
          public          postgres    false    255         ?           0    0 .   ludorecherche_multi_add_on_playing_mode_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_playing_mode_id_seq', 4, true);
          public          postgres    false    263         ?           0    0 ,   ludorecherche_multi_add_on_publishers_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_publishers_id_seq', 3, true);
          public          postgres    false    265         ?           0    0     ludorecherche_playingmode_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ludorecherche_playingmode_id_seq', 5, true);
          public          postgres    false    241         ?           0    0    ludorecherche_publisher_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ludorecherche_publisher_id_seq', 57, true);
          public          postgres    false    223         ?           0    0    ludorecherche_tag_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.ludorecherche_tag_id_seq', 50, true);
          public          postgres    false    251         ?           0    0    ludorecherche_theme_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ludorecherche_theme_id_seq', 2, true);
          public          postgres    false    267         ?           0    0    ludorecherche_topic_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ludorecherche_topic_id_seq', 37, true);
          public          postgres    false    273         M           2606    22471    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    205         R           2606    22398 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    207    207         U           2606    22361 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    207         O           2606    22351    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    205         H           2606    22389 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    203    203         J           2606    22343 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    203         ]           2606    22379 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    211         `           2606    22413 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    211    211         W           2606    22369    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    209         c           2606    22387 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    213         f           2606    22427 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    213    213         Z           2606    22465     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    209         i           2606    22451 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    215         C           2606    22335 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    201    201         E           2606    22333 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    201         ?           2606    33359 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    248         m           2606    22480 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    216         *           2606    126055 &   ludoaccueil_news ludoaccueil_news_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ludoaccueil_news
    ADD CONSTRAINT ludoaccueil_news_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ludoaccueil_news DROP CONSTRAINT ludoaccueil_news_pkey;
       public            postgres    false    280         -           2606    126058 +   ludoaccueil_news ludoaccueil_news_title_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.ludoaccueil_news
    ADD CONSTRAINT ludoaccueil_news_title_key UNIQUE (title);
 U   ALTER TABLE ONLY public.ludoaccueil_news DROP CONSTRAINT ludoaccueil_news_title_key;
       public            postgres    false    280         ?           2606    22657 Z   ludorecherche_addon_artists ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq UNIQUE (addon_id, artist_id);
 ?   ALTER TABLE ONLY public.ludorecherche_addon_artists DROP CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq;
       public            postgres    false    234    234         ?           2606    22578 =   ludorecherche_addon_artists ludorecherche_add_on_artists_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY public.ludorecherche_addon_artists DROP CONSTRAINT ludorecherche_add_on_artists_pkey;
       public            postgres    false    234         ?           2606    22671 Z   ludorecherche_addon_designers ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq UNIQUE (addon_id, designer_id);
 ?   ALTER TABLE ONLY public.ludorecherche_addon_designers DROP CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq;
       public            postgres    false    236    236         ?           2606    22586 A   ludorecherche_addon_designers ludorecherche_add_on_designers_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_designers_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY public.ludorecherche_addon_designers DROP CONSTRAINT ludorecherche_add_on_designers_pkey;
       public            postgres    false    236         t           2606    22495 1   ludorecherche_addon ludorecherche_add_on_name_key 
   CONSTRAINT     l   ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_name_key UNIQUE (name);
 [   ALTER TABLE ONLY public.ludorecherche_addon DROP CONSTRAINT ludorecherche_add_on_name_key;
       public            postgres    false    218         v           2606    22493 -   ludorecherche_addon ludorecherche_add_on_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.ludorecherche_addon DROP CONSTRAINT ludorecherche_add_on_pkey;
       public            postgres    false    218         ?           2606    33206 `   ludorecherche_addon_playing_mode ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq UNIQUE (addon_id, playingmode_id);
 ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode DROP CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq;
       public            postgres    false    244    244         ?           2606    33196 G   ludorecherche_addon_playing_mode ludorecherche_add_on_playing_mode_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playing_mode_pkey PRIMARY KEY (id);
 q   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode DROP CONSTRAINT ludorecherche_add_on_playing_mode_pkey;
       public            postgres    false    244         ?           2606    22685 \   ludorecherche_addon_publishers ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq UNIQUE (addon_id, publisher_id);
 ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers DROP CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq;
       public            postgres    false    238    238         ?           2606    22594 C   ludorecherche_addon_publishers ludorecherche_add_on_publishers_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_publishers_pkey PRIMARY KEY (id);
 m   ALTER TABLE ONLY public.ludorecherche_addon_publishers DROP CONSTRAINT ludorecherche_add_on_publishers_pkey;
       public            postgres    false    238         y           2606    125387 8   ludorecherche_addon ludorecherche_addon_english_name_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_addon_english_name_key UNIQUE (english_name);
 b   ALTER TABLE ONLY public.ludorecherche_addon DROP CONSTRAINT ludorecherche_addon_english_name_key;
       public            postgres    false    218         |           2606    22505 2   ludorecherche_artist ludorecherche_artist_name_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_name_key UNIQUE (name);
 \   ALTER TABLE ONLY public.ludorecherche_artist DROP CONSTRAINT ludorecherche_artist_name_key;
       public            postgres    false    220         ~           2606    22503 .   ludorecherche_artist ludorecherche_artist_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ludorecherche_artist DROP CONSTRAINT ludorecherche_artist_pkey;
       public            postgres    false    220                    2606    125286 :   ludorecherche_background ludorecherche_background_name_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_background_name_key UNIQUE (name);
 d   ALTER TABLE ONLY public.ludorecherche_background DROP CONSTRAINT ludorecherche_background_name_key;
       public            postgres    false    270                    2606    125284 6   ludorecherche_background ludorecherche_background_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_background_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ludorecherche_background DROP CONSTRAINT ludorecherche_background_pkey;
       public            postgres    false    270                    2606    125288 >   ludorecherche_background ludorecherche_background_theme_id_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_background_theme_id_key UNIQUE (theme_id);
 h   ALTER TABLE ONLY public.ludorecherche_background DROP CONSTRAINT ludorecherche_background_theme_id_key;
       public            postgres    false    270         ?           2606    22515 6   ludorecherche_designer ludorecherche_designer_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.ludorecherche_designer DROP CONSTRAINT ludorecherche_designer_name_key;
       public            postgres    false    222         ?           2606    22513 2   ludorecherche_designer ludorecherche_designer_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ludorecherche_designer DROP CONSTRAINT ludorecherche_designer_pkey;
       public            postgres    false    222         ?           2606    33542 :   ludorecherche_difficulty ludorecherche_difficulty_name_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_name_key UNIQUE (name);
 d   ALTER TABLE ONLY public.ludorecherche_difficulty DROP CONSTRAINT ludorecherche_difficulty_name_key;
       public            postgres    false    250         ?           2606    33540 6   ludorecherche_difficulty ludorecherche_difficulty_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ludorecherche_difficulty DROP CONSTRAINT ludorecherche_difficulty_pkey;
       public            postgres    false    250         ?           2606    22615 U   ludorecherche_game_artists ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq UNIQUE (game_id, artist_id);
    ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq;
       public            postgres    false    228    228         ?           2606    22554 :   ludorecherche_game_artists ludorecherche_game_artists_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_artists_pkey;
       public            postgres    false    228         ?           2606    22629 [   ludorecherche_game_designers ludorecherche_game_designers_game_id_designer_id_98196acb_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq UNIQUE (game_id, designer_id);
 ?   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq;
       public            postgres    false    230    230         ?           2606    22562 >   ludorecherche_game_designers ludorecherche_game_designers_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_designers_pkey;
       public            postgres    false    230         ?           2606    125389 6   ludorecherche_game ludorecherche_game_english_name_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_english_name_key UNIQUE (english_name);
 `   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_english_name_key;
       public            postgres    false    226                    2606    125434 \   ludorecherche_game_mechanism ludorecherche_game_mechanism_game_id_mechanism_id_bbaa49ca_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_mechanism_game_id_mechanism_id_bbaa49ca_uniq UNIQUE (game_id, mechanism_id);
 ?   ALTER TABLE ONLY public.ludorecherche_game_mechanism DROP CONSTRAINT ludorecherche_game_mechanism_game_id_mechanism_id_bbaa49ca_uniq;
       public            postgres    false    276    276         "           2606    125422 >   ludorecherche_game_mechanism ludorecherche_game_mechanism_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_mechanism_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.ludorecherche_game_mechanism DROP CONSTRAINT ludorecherche_game_mechanism_pkey;
       public            postgres    false    276         ?           2606    22538 .   ludorecherche_game ludorecherche_game_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_name_key UNIQUE (name);
 X   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_name_key;
       public            postgres    false    226         ?           2606    22536 *   ludorecherche_game ludorecherche_game_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_pkey;
       public            postgres    false    226         ?           2606    33220 ]   ludorecherche_game_playing_mode ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq UNIQUE (game_id, playingmode_id);
 ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq;
       public            postgres    false    246    246         ?           2606    33204 D   ludorecherche_game_playing_mode ludorecherche_game_playing_mode_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playing_mode_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_playing_mode_pkey;
       public            postgres    false    246         ?           2606    22643 Y   ludorecherche_game_publishers ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq UNIQUE (game_id, publisher_id);
 ?   ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq;
       public            postgres    false    232    232         ?           2606    22570 @   ludorecherche_game_publishers ludorecherche_game_publishers_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publishers_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_publishers_pkey;
       public            postgres    false    232         ?           2606    33598 J   ludorecherche_game_tag ludorecherche_game_tag_game_id_tag_id_79514770_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq UNIQUE (game_id, tag_id);
 t   ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq;
       public            postgres    false    254    254         ?           2606    33595 2   ludorecherche_game_tag ludorecherche_game_tag_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_tag_pkey;
       public            postgres    false    254         %           2606    125448 P   ludorecherche_game_topic ludorecherche_game_topic_game_id_topic_id_771c5865_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_topic_game_id_topic_id_771c5865_uniq UNIQUE (game_id, topic_id);
 z   ALTER TABLE ONLY public.ludorecherche_game_topic DROP CONSTRAINT ludorecherche_game_topic_game_id_topic_id_771c5865_uniq;
       public            postgres    false    278    278         '           2606    125430 6   ludorecherche_game_topic ludorecherche_game_topic_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_topic_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ludorecherche_game_topic DROP CONSTRAINT ludorecherche_game_topic_pkey;
       public            postgres    false    278         ?           2606    33056 6   ludorecherche_language ludorecherche_language_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_name_key UNIQUE (name);
 `   ALTER TABLE ONLY public.ludorecherche_language DROP CONSTRAINT ludorecherche_language_name_key;
       public            postgres    false    240         ?           2606    33054 2   ludorecherche_language ludorecherche_language_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.ludorecherche_language DROP CONSTRAINT ludorecherche_language_pkey;
       public            postgres    false    240                    2606    125404 8   ludorecherche_mechanism ludorecherche_mechanism_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.ludorecherche_mechanism
    ADD CONSTRAINT ludorecherche_mechanism_name_key UNIQUE (name);
 b   ALTER TABLE ONLY public.ludorecherche_mechanism DROP CONSTRAINT ludorecherche_mechanism_name_key;
       public            postgres    false    272                    2606    125402 4   ludorecherche_mechanism ludorecherche_mechanism_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ludorecherche_mechanism
    ADD CONSTRAINT ludorecherche_mechanism_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ludorecherche_mechanism DROP CONSTRAINT ludorecherche_mechanism_pkey;
       public            postgres    false    272         ?           2606    86188 `   ludorecherche_multiaddon_artists ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq UNIQUE (multiaddon_id, artist_id);
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq;
       public            postgres    false    258    258         ?           2606    86202 b   ludorecherche_multiaddon_designers ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq UNIQUE (multiaddon_id, designer_id);
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq;
       public            postgres    false    260    260         ?           2606    86216 ]   ludorecherche_multiaddon_games ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq UNIQUE (multiaddon_id, game_id);
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq;
       public            postgres    false    262    262         ?           2606    86230 e   ludorecherche_multiaddon_playing_mode ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq UNIQUE (multiaddon_id, playingmode_id);
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq;
       public            postgres    false    264    264                    2606    86244 c   ludorecherche_multiaddon_publishers ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq UNIQUE (multiaddon_id, publisher_id);
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers DROP CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq;
       public            postgres    false    266    266         ?           2606    86141 H   ludorecherche_multiaddon_artists ludorecherche_multi_add_on_artists_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi_add_on_artists_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists DROP CONSTRAINT ludorecherche_multi_add_on_artists_pkey;
       public            postgres    false    258         ?           2606    86149 L   ludorecherche_multiaddon_designers ludorecherche_multi_add_on_designers_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi_add_on_designers_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers DROP CONSTRAINT ludorecherche_multi_add_on_designers_pkey;
       public            postgres    false    260         ?           2606    86157 D   ludorecherche_multiaddon_games ludorecherche_multi_add_on_games_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi_add_on_games_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.ludorecherche_multiaddon_games DROP CONSTRAINT ludorecherche_multi_add_on_games_pkey;
       public            postgres    false    262         ?           2606    86133 <   ludorecherche_multiaddon ludorecherche_multi_add_on_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi_add_on_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.ludorecherche_multiaddon DROP CONSTRAINT ludorecherche_multi_add_on_name_key;
       public            postgres    false    256         ?           2606    86131 8   ludorecherche_multiaddon ludorecherche_multi_add_on_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi_add_on_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.ludorecherche_multiaddon DROP CONSTRAINT ludorecherche_multi_add_on_pkey;
       public            postgres    false    256         ?           2606    86165 R   ludorecherche_multiaddon_playing_mode ludorecherche_multi_add_on_playing_mode_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode DROP CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey;
       public            postgres    false    264                    2606    86173 N   ludorecherche_multiaddon_publishers ludorecherche_multi_add_on_publishers_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi_add_on_publishers_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers DROP CONSTRAINT ludorecherche_multi_add_on_publishers_pkey;
       public            postgres    false    266         ?           2606    125391 B   ludorecherche_multiaddon ludorecherche_multiaddon_english_name_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multiaddon_english_name_key UNIQUE (english_name);
 l   ALTER TABLE ONLY public.ludorecherche_multiaddon DROP CONSTRAINT ludorecherche_multiaddon_english_name_key;
       public            postgres    false    256         ?           2606    33066 <   ludorecherche_playingmode ludorecherche_playingmode_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.ludorecherche_playingmode DROP CONSTRAINT ludorecherche_playingmode_name_key;
       public            postgres    false    242         ?           2606    33064 8   ludorecherche_playingmode ludorecherche_playingmode_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.ludorecherche_playingmode DROP CONSTRAINT ludorecherche_playingmode_pkey;
       public            postgres    false    242         ?           2606    22525 8   ludorecherche_publisher ludorecherche_publisher_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_name_key UNIQUE (name);
 b   ALTER TABLE ONLY public.ludorecherche_publisher DROP CONSTRAINT ludorecherche_publisher_name_key;
       public            postgres    false    224         ?           2606    22523 4   ludorecherche_publisher ludorecherche_publisher_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ludorecherche_publisher DROP CONSTRAINT ludorecherche_publisher_pkey;
       public            postgres    false    224         ?           2606    33587 ,   ludorecherche_tag ludorecherche_tag_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.ludorecherche_tag DROP CONSTRAINT ludorecherche_tag_name_key;
       public            postgres    false    252         ?           2606    33585 (   ludorecherche_tag ludorecherche_tag_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.ludorecherche_tag DROP CONSTRAINT ludorecherche_tag_pkey;
       public            postgres    false    252         	           2606    125297 0   ludorecherche_theme ludorecherche_theme_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.ludorecherche_theme
    ADD CONSTRAINT ludorecherche_theme_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.ludorecherche_theme DROP CONSTRAINT ludorecherche_theme_name_key;
       public            postgres    false    268                    2606    125276 ,   ludorecherche_theme ludorecherche_theme_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ludorecherche_theme
    ADD CONSTRAINT ludorecherche_theme_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.ludorecherche_theme DROP CONSTRAINT ludorecherche_theme_pkey;
       public            postgres    false    268                    2606    125414 0   ludorecherche_topic ludorecherche_topic_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.ludorecherche_topic
    ADD CONSTRAINT ludorecherche_topic_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.ludorecherche_topic DROP CONSTRAINT ludorecherche_topic_name_key;
       public            postgres    false    274                    2606    125412 ,   ludorecherche_topic ludorecherche_topic_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.ludorecherche_topic
    ADD CONSTRAINT ludorecherche_topic_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.ludorecherche_topic DROP CONSTRAINT ludorecherche_topic_pkey;
       public            postgres    false    274         K           1259    22472    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    205         P           1259    22409 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    207         S           1259    22410 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    207         F           1259    22395 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    203         [           1259    22425 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    211         ^           1259    22424 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    211         a           1259    22439 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    213         d           1259    22438 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    213         X           1259    22466     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    209         g           1259    22462 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    215         j           1259    22463 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    215         k           1259    22482 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    216         n           1259    22481 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    216         +           1259    126059 $   ludoaccueil_news_title_12b85c2c_like    INDEX     v   CREATE INDEX ludoaccueil_news_title_12b85c2c_like ON public.ludoaccueil_news USING btree (title varchar_pattern_ops);
 8   DROP INDEX public.ludoaccueil_news_title_12b85c2c_like;
       public            postgres    false    280         ?           1259    22668 /   ludorecherche_add_on_artists_add_on_id_06c1b675    INDEX     {   CREATE INDEX ludorecherche_add_on_artists_add_on_id_06c1b675 ON public.ludorecherche_addon_artists USING btree (addon_id);
 C   DROP INDEX public.ludorecherche_add_on_artists_add_on_id_06c1b675;
       public            postgres    false    234         ?           1259    22669 /   ludorecherche_add_on_artists_artist_id_947142f9    INDEX     |   CREATE INDEX ludorecherche_add_on_artists_artist_id_947142f9 ON public.ludorecherche_addon_artists USING btree (artist_id);
 C   DROP INDEX public.ludorecherche_add_on_artists_artist_id_947142f9;
       public            postgres    false    234         ?           1259    22682 1   ludorecherche_add_on_designers_add_on_id_91c9524f    INDEX        CREATE INDEX ludorecherche_add_on_designers_add_on_id_91c9524f ON public.ludorecherche_addon_designers USING btree (addon_id);
 E   DROP INDEX public.ludorecherche_add_on_designers_add_on_id_91c9524f;
       public            postgres    false    236         ?           1259    22683 3   ludorecherche_add_on_designers_designer_id_c16eab7d    INDEX     ?   CREATE INDEX ludorecherche_add_on_designers_designer_id_c16eab7d ON public.ludorecherche_addon_designers USING btree (designer_id);
 G   DROP INDEX public.ludorecherche_add_on_designers_designer_id_c16eab7d;
       public            postgres    false    236         o           1259    33554 +   ludorecherche_add_on_difficulty_id_36e9a090    INDEX     t   CREATE INDEX ludorecherche_add_on_difficulty_id_36e9a090 ON public.ludorecherche_addon USING btree (difficulty_id);
 ?   DROP INDEX public.ludorecherche_add_on_difficulty_id_36e9a090;
       public            postgres    false    218         p           1259    29877 %   ludorecherche_add_on_game_id_fc9844ac    INDEX     h   CREATE INDEX ludorecherche_add_on_game_id_fc9844ac ON public.ludorecherche_addon USING btree (game_id);
 9   DROP INDEX public.ludorecherche_add_on_game_id_fc9844ac;
       public            postgres    false    218         q           1259    33188 )   ludorecherche_add_on_language_id_5573aafd    INDEX     p   CREATE INDEX ludorecherche_add_on_language_id_5573aafd ON public.ludorecherche_addon USING btree (language_id);
 =   DROP INDEX public.ludorecherche_add_on_language_id_5573aafd;
       public            postgres    false    218         r           1259    22595 '   ludorecherche_add_on_name_d5b13084_like    INDEX     {   CREATE INDEX ludorecherche_add_on_name_d5b13084_like ON public.ludorecherche_addon USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.ludorecherche_add_on_name_d5b13084_like;
       public            postgres    false    218         ?           1259    33217 4   ludorecherche_add_on_playing_mode_add_on_id_ef1f0186    INDEX     ?   CREATE INDEX ludorecherche_add_on_playing_mode_add_on_id_ef1f0186 ON public.ludorecherche_addon_playing_mode USING btree (addon_id);
 H   DROP INDEX public.ludorecherche_add_on_playing_mode_add_on_id_ef1f0186;
       public            postgres    false    244         ?           1259    33218 9   ludorecherche_add_on_playing_mode_playingmode_id_12919a41    INDEX     ?   CREATE INDEX ludorecherche_add_on_playing_mode_playingmode_id_12919a41 ON public.ludorecherche_addon_playing_mode USING btree (playingmode_id);
 M   DROP INDEX public.ludorecherche_add_on_playing_mode_playingmode_id_12919a41;
       public            postgres    false    244         ?           1259    22696 2   ludorecherche_add_on_publishers_add_on_id_9ca3fd40    INDEX     ?   CREATE INDEX ludorecherche_add_on_publishers_add_on_id_9ca3fd40 ON public.ludorecherche_addon_publishers USING btree (addon_id);
 F   DROP INDEX public.ludorecherche_add_on_publishers_add_on_id_9ca3fd40;
       public            postgres    false    238         ?           1259    22697 5   ludorecherche_add_on_publishers_publisher_id_14abff3e    INDEX     ?   CREATE INDEX ludorecherche_add_on_publishers_publisher_id_14abff3e ON public.ludorecherche_addon_publishers USING btree (publisher_id);
 I   DROP INDEX public.ludorecherche_add_on_publishers_publisher_id_14abff3e;
       public            postgres    false    238         w           1259    125392 .   ludorecherche_addon_english_name_e62012de_like    INDEX     ?   CREATE INDEX ludorecherche_addon_english_name_e62012de_like ON public.ludorecherche_addon USING btree (english_name varchar_pattern_ops);
 B   DROP INDEX public.ludorecherche_addon_english_name_e62012de_like;
       public            postgres    false    218         z           1259    22596 '   ludorecherche_artist_name_7c60ea7e_like    INDEX     |   CREATE INDEX ludorecherche_artist_name_7c60ea7e_like ON public.ludorecherche_artist USING btree (name varchar_pattern_ops);
 ;   DROP INDEX public.ludorecherche_artist_name_7c60ea7e_like;
       public            postgres    false    220                    1259    125294 +   ludorecherche_background_name_790e7c2a_like    INDEX     ?   CREATE INDEX ludorecherche_background_name_790e7c2a_like ON public.ludorecherche_background USING btree (name varchar_pattern_ops);
 ?   DROP INDEX public.ludorecherche_background_name_790e7c2a_like;
       public            postgres    false    270                    1259    22597 )   ludorecherche_designer_name_36cdcde4_like    INDEX     ?   CREATE INDEX ludorecherche_designer_name_36cdcde4_like ON public.ludorecherche_designer USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.ludorecherche_designer_name_36cdcde4_like;
       public            postgres    false    222         ?           1259    33576 +   ludorecherche_difficulty_name_e59ec408_like    INDEX     ?   CREATE INDEX ludorecherche_difficulty_name_e59ec408_like ON public.ludorecherche_difficulty USING btree (name varchar_pattern_ops);
 ?   DROP INDEX public.ludorecherche_difficulty_name_e59ec408_like;
       public            postgres    false    250         ?           1259    22627 -   ludorecherche_game_artists_artist_id_3e5506bf    INDEX     y   CREATE INDEX ludorecherche_game_artists_artist_id_3e5506bf ON public.ludorecherche_game_artists USING btree (artist_id);
 A   DROP INDEX public.ludorecherche_game_artists_artist_id_3e5506bf;
       public            postgres    false    228         ?           1259    22626 +   ludorecherche_game_artists_game_id_2ba0fcde    INDEX     u   CREATE INDEX ludorecherche_game_artists_game_id_2ba0fcde ON public.ludorecherche_game_artists USING btree (game_id);
 ?   DROP INDEX public.ludorecherche_game_artists_game_id_2ba0fcde;
       public            postgres    false    228         ?           1259    22641 1   ludorecherche_game_designers_designer_id_8b4d087f    INDEX     ?   CREATE INDEX ludorecherche_game_designers_designer_id_8b4d087f ON public.ludorecherche_game_designers USING btree (designer_id);
 E   DROP INDEX public.ludorecherche_game_designers_designer_id_8b4d087f;
       public            postgres    false    230         ?           1259    22640 -   ludorecherche_game_designers_game_id_6d1526cc    INDEX     y   CREATE INDEX ludorecherche_game_designers_game_id_6d1526cc ON public.ludorecherche_game_designers USING btree (game_id);
 A   DROP INDEX public.ludorecherche_game_designers_game_id_6d1526cc;
       public            postgres    false    230         ?           1259    33570 )   ludorecherche_game_difficulty_id_c4f6b87a    INDEX     q   CREATE INDEX ludorecherche_game_difficulty_id_c4f6b87a ON public.ludorecherche_game USING btree (difficulty_id);
 =   DROP INDEX public.ludorecherche_game_difficulty_id_c4f6b87a;
       public            postgres    false    226         ?           1259    125393 -   ludorecherche_game_english_name_0e9e6d79_like    INDEX     ?   CREATE INDEX ludorecherche_game_english_name_0e9e6d79_like ON public.ludorecherche_game USING btree (english_name varchar_pattern_ops);
 A   DROP INDEX public.ludorecherche_game_english_name_0e9e6d79_like;
       public            postgres    false    226         ?           1259    33095 '   ludorecherche_game_language_id_38e7eecd    INDEX     m   CREATE INDEX ludorecherche_game_language_id_38e7eecd ON public.ludorecherche_game USING btree (language_id);
 ;   DROP INDEX public.ludorecherche_game_language_id_38e7eecd;
       public            postgres    false    226                    1259    125445 -   ludorecherche_game_mechanism_game_id_bc22c85a    INDEX     y   CREATE INDEX ludorecherche_game_mechanism_game_id_bc22c85a ON public.ludorecherche_game_mechanism USING btree (game_id);
 A   DROP INDEX public.ludorecherche_game_mechanism_game_id_bc22c85a;
       public            postgres    false    276                     1259    125446 2   ludorecherche_game_mechanism_mechanism_id_2d137790    INDEX     ?   CREATE INDEX ludorecherche_game_mechanism_mechanism_id_2d137790 ON public.ludorecherche_game_mechanism USING btree (mechanism_id);
 F   DROP INDEX public.ludorecherche_game_mechanism_mechanism_id_2d137790;
       public            postgres    false    276         ?           1259    22599 %   ludorecherche_game_name_82b8126a_like    INDEX     x   CREATE INDEX ludorecherche_game_name_82b8126a_like ON public.ludorecherche_game USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.ludorecherche_game_name_82b8126a_like;
       public            postgres    false    226         ?           1259    33231 0   ludorecherche_game_playing_mode_game_id_62bd95b2    INDEX        CREATE INDEX ludorecherche_game_playing_mode_game_id_62bd95b2 ON public.ludorecherche_game_playing_mode USING btree (game_id);
 D   DROP INDEX public.ludorecherche_game_playing_mode_game_id_62bd95b2;
       public            postgres    false    246         ?           1259    33232 7   ludorecherche_game_playing_mode_playingmode_id_fa02659e    INDEX     ?   CREATE INDEX ludorecherche_game_playing_mode_playingmode_id_fa02659e ON public.ludorecherche_game_playing_mode USING btree (playingmode_id);
 K   DROP INDEX public.ludorecherche_game_playing_mode_playingmode_id_fa02659e;
       public            postgres    false    246         ?           1259    22654 .   ludorecherche_game_publishers_game_id_a425abf8    INDEX     {   CREATE INDEX ludorecherche_game_publishers_game_id_a425abf8 ON public.ludorecherche_game_publishers USING btree (game_id);
 B   DROP INDEX public.ludorecherche_game_publishers_game_id_a425abf8;
       public            postgres    false    232         ?           1259    22655 3   ludorecherche_game_publishers_publisher_id_5176fa38    INDEX     ?   CREATE INDEX ludorecherche_game_publishers_publisher_id_5176fa38 ON public.ludorecherche_game_publishers USING btree (publisher_id);
 G   DROP INDEX public.ludorecherche_game_publishers_publisher_id_5176fa38;
       public            postgres    false    232         ?           1259    33609 '   ludorecherche_game_tag_game_id_065ca217    INDEX     m   CREATE INDEX ludorecherche_game_tag_game_id_065ca217 ON public.ludorecherche_game_tag USING btree (game_id);
 ;   DROP INDEX public.ludorecherche_game_tag_game_id_065ca217;
       public            postgres    false    254         ?           1259    33610 &   ludorecherche_game_tag_tag_id_d515082c    INDEX     k   CREATE INDEX ludorecherche_game_tag_tag_id_d515082c ON public.ludorecherche_game_tag USING btree (tag_id);
 :   DROP INDEX public.ludorecherche_game_tag_tag_id_d515082c;
       public            postgres    false    254         #           1259    125459 )   ludorecherche_game_topic_game_id_d0f61157    INDEX     q   CREATE INDEX ludorecherche_game_topic_game_id_d0f61157 ON public.ludorecherche_game_topic USING btree (game_id);
 =   DROP INDEX public.ludorecherche_game_topic_game_id_d0f61157;
       public            postgres    false    278         (           1259    125460 *   ludorecherche_game_topic_topic_id_e97daab5    INDEX     s   CREATE INDEX ludorecherche_game_topic_topic_id_e97daab5 ON public.ludorecherche_game_topic USING btree (topic_id);
 >   DROP INDEX public.ludorecherche_game_topic_topic_id_e97daab5;
       public            postgres    false    278         ?           1259    33093 )   ludorecherche_language_name_24fe12a7_like    INDEX     ?   CREATE INDEX ludorecherche_language_name_24fe12a7_like ON public.ludorecherche_language USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.ludorecherche_language_name_24fe12a7_like;
       public            postgres    false    240                    1259    125431 *   ludorecherche_mechanism_name_6bb33027_like    INDEX     ?   CREATE INDEX ludorecherche_mechanism_name_6bb33027_like ON public.ludorecherche_mechanism USING btree (name varchar_pattern_ops);
 >   DROP INDEX public.ludorecherche_mechanism_name_6bb33027_like;
       public            postgres    false    272         ?           1259    86200 5   ludorecherche_multi_add_on_artists_artist_id_b04b65bc    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_artists_artist_id_b04b65bc ON public.ludorecherche_multiaddon_artists USING btree (artist_id);
 I   DROP INDEX public.ludorecherche_multi_add_on_artists_artist_id_b04b65bc;
       public            postgres    false    258         ?           1259    86199 ;   ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7 ON public.ludorecherche_multiaddon_artists USING btree (multiaddon_id);
 O   DROP INDEX public.ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7;
       public            postgres    false    258         ?           1259    86214 9   ludorecherche_multi_add_on_designers_designer_id_63ada047    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_designers_designer_id_63ada047 ON public.ludorecherche_multiaddon_designers USING btree (designer_id);
 M   DROP INDEX public.ludorecherche_multi_add_on_designers_designer_id_63ada047;
       public            postgres    false    260         ?           1259    86213 =   ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc ON public.ludorecherche_multiaddon_designers USING btree (multiaddon_id);
 Q   DROP INDEX public.ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc;
       public            postgres    false    260         ?           1259    86185 1   ludorecherche_multi_add_on_difficulty_id_5c7d95a0    INDEX        CREATE INDEX ludorecherche_multi_add_on_difficulty_id_5c7d95a0 ON public.ludorecherche_multiaddon USING btree (difficulty_id);
 E   DROP INDEX public.ludorecherche_multi_add_on_difficulty_id_5c7d95a0;
       public            postgres    false    256         ?           1259    86228 1   ludorecherche_multi_add_on_games_game_id_790ba75d    INDEX        CREATE INDEX ludorecherche_multi_add_on_games_game_id_790ba75d ON public.ludorecherche_multiaddon_games USING btree (game_id);
 E   DROP INDEX public.ludorecherche_multi_add_on_games_game_id_790ba75d;
       public            postgres    false    262         ?           1259    86227 9   ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9 ON public.ludorecherche_multiaddon_games USING btree (multiaddon_id);
 M   DROP INDEX public.ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9;
       public            postgres    false    262         ?           1259    86186 /   ludorecherche_multi_add_on_language_id_5be310e3    INDEX     {   CREATE INDEX ludorecherche_multi_add_on_language_id_5be310e3 ON public.ludorecherche_multiaddon USING btree (language_id);
 C   DROP INDEX public.ludorecherche_multi_add_on_language_id_5be310e3;
       public            postgres    false    256         ?           1259    86241 3   ludorecherche_multi_add_on_multi_add_on_id_25357591    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_multi_add_on_id_25357591 ON public.ludorecherche_multiaddon_playing_mode USING btree (multiaddon_id);
 G   DROP INDEX public.ludorecherche_multi_add_on_multi_add_on_id_25357591;
       public            postgres    false    264         ?           1259    86184 -   ludorecherche_multi_add_on_name_7a883fb9_like    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_name_7a883fb9_like ON public.ludorecherche_multiaddon USING btree (name varchar_pattern_ops);
 A   DROP INDEX public.ludorecherche_multi_add_on_name_7a883fb9_like;
       public            postgres    false    256                     1259    86242 ?   ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256 ON public.ludorecherche_multiaddon_playing_mode USING btree (playingmode_id);
 S   DROP INDEX public.ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256;
       public            postgres    false    264                    1259    86255 >   ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669 ON public.ludorecherche_multiaddon_publishers USING btree (multiaddon_id);
 R   DROP INDEX public.ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669;
       public            postgres    false    266                    1259    86256 ;   ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c    INDEX     ?   CREATE INDEX ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c ON public.ludorecherche_multiaddon_publishers USING btree (publisher_id);
 O   DROP INDEX public.ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c;
       public            postgres    false    266         ?           1259    125394 3   ludorecherche_multiaddon_english_name_11396b6e_like    INDEX     ?   CREATE INDEX ludorecherche_multiaddon_english_name_11396b6e_like ON public.ludorecherche_multiaddon USING btree (english_name varchar_pattern_ops);
 G   DROP INDEX public.ludorecherche_multiaddon_english_name_11396b6e_like;
       public            postgres    false    256         ?           1259    33094 ,   ludorecherche_playingmode_name_b9bc9f89_like    INDEX     ?   CREATE INDEX ludorecherche_playingmode_name_b9bc9f89_like ON public.ludorecherche_playingmode USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.ludorecherche_playingmode_name_b9bc9f89_like;
       public            postgres    false    242         ?           1259    22598 *   ludorecherche_publisher_name_865b1ff3_like    INDEX     ?   CREATE INDEX ludorecherche_publisher_name_865b1ff3_like ON public.ludorecherche_publisher USING btree (name varchar_pattern_ops);
 >   DROP INDEX public.ludorecherche_publisher_name_865b1ff3_like;
       public            postgres    false    224         ?           1259    33596 $   ludorecherche_tag_name_de380dee_like    INDEX     v   CREATE INDEX ludorecherche_tag_name_de380dee_like ON public.ludorecherche_tag USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.ludorecherche_tag_name_de380dee_like;
       public            postgres    false    252                    1259    125298 &   ludorecherche_theme_name_4578dd31_like    INDEX     z   CREATE INDEX ludorecherche_theme_name_4578dd31_like ON public.ludorecherche_theme USING btree (name varchar_pattern_ops);
 :   DROP INDEX public.ludorecherche_theme_name_4578dd31_like;
       public            postgres    false    268                    1259    125432 &   ludorecherche_topic_name_7993cc51_like    INDEX     z   CREATE INDEX ludorecherche_topic_name_7993cc51_like ON public.ludorecherche_topic USING btree (name varchar_pattern_ops);
 :   DROP INDEX public.ludorecherche_topic_name_7993cc51_like;
       public            postgres    false    274         0           2606    22404 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    203    3146         /           2606    22399 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3151    207    205         .           2606    22390 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    203    3141    201         2           2606    22419 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    211    3151    205         1           2606    22414 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    209    211    3159         4           2606    22433 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    203    213    3146         3           2606    22428 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3159    213    209         5           2606    22452 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    215    201    3141         6           2606    22457 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3159    215    209         9           2606    33127 R   ludorecherche_addon ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.ludorecherche_addon DROP CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id;
       public          postgres    false    3218    226    218         G           2606    124193 R   ludorecherche_addon_publishers ludorecherche_addon__addon_id_336553d8_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_addon__addon_id_336553d8_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.ludorecherche_addon_publishers DROP CONSTRAINT ludorecherche_addon__addon_id_336553d8_fk_ludoreche;
       public          postgres    false    238    218    3190         I           2606    124183 T   ludorecherche_addon_playing_mode ludorecherche_addon__addon_id_448e903f_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_addon__addon_id_448e903f_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode DROP CONSTRAINT ludorecherche_addon__addon_id_448e903f_fk_ludoreche;
       public          postgres    false    218    3190    244         C           2606    124153 O   ludorecherche_addon_artists ludorecherche_addon__addon_id_dcf26241_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_addon__addon_id_dcf26241_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_addon_artists DROP CONSTRAINT ludorecherche_addon__addon_id_dcf26241_fk_ludoreche;
       public          postgres    false    234    218    3190         E           2606    124163 Q   ludorecherche_addon_designers ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ludorecherche_addon_designers DROP CONSTRAINT ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche;
       public          postgres    false    3190    218    236         B           2606    124148 P   ludorecherche_addon_artists ludorecherche_addon__artist_id_aa1adffe_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_addon__artist_id_aa1adffe_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.ludorecherche_addon_artists DROP CONSTRAINT ludorecherche_addon__artist_id_aa1adffe_fk_ludoreche;
       public          postgres    false    234    220    3198         D           2606    124158 T   ludorecherche_addon_designers ludorecherche_addon__designer_id_de893579_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_addon__designer_id_de893579_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.ludorecherche_addon_designers DROP CONSTRAINT ludorecherche_addon__designer_id_de893579_fk_ludoreche;
       public          postgres    false    236    222    3203         H           2606    124178 Z   ludorecherche_addon_playing_mode ludorecherche_addon__playingmode_id_92be5978_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_addon__playingmode_id_92be5978_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_addon_playing_mode DROP CONSTRAINT ludorecherche_addon__playingmode_id_92be5978_fk_ludoreche;
       public          postgres    false    242    244    3264         F           2606    124188 V   ludorecherche_addon_publishers ludorecherche_addon__publisher_id_a27cddc9_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_addon__publisher_id_a27cddc9_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_addon_publishers DROP CONSTRAINT ludorecherche_addon__publisher_id_a27cddc9_fk_ludoreche;
       public          postgres    false    224    238    3208         7           2606    124168 K   ludorecherche_addon ludorecherche_addon_difficulty_id_e5a1666a_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_addon_difficulty_id_e5a1666a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.ludorecherche_addon DROP CONSTRAINT ludorecherche_addon_difficulty_id_e5a1666a_fk_ludoreche;
       public          postgres    false    218    3283    250         8           2606    124173 I   ludorecherche_addon ludorecherche_addon_language_id_d156b1dd_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_addon_language_id_d156b1dd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ludorecherche_addon DROP CONSTRAINT ludorecherche_addon_language_id_d156b1dd_fk_ludoreche;
       public          postgres    false    3259    240    218         Z           2606    125289 L   ludorecherche_background ludorecherche_backgr_theme_id_d2f0d041_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_backgr_theme_id_d2f0d041_fk_ludoreche FOREIGN KEY (theme_id) REFERENCES public.ludorecherche_theme(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.ludorecherche_background DROP CONSTRAINT ludorecherche_backgr_theme_id_d2f0d041_fk_ludoreche;
       public          postgres    false    270    268    3339         <           2606    124098 O   ludorecherche_game_artists ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche;
       public          postgres    false    228    3198    220         =           2606    124103 M   ludorecherche_game_artists ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.ludorecherche_game_artists DROP CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche;
       public          postgres    false    3218    226    228         >           2606    124108 S   ludorecherche_game_designers ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche;
       public          postgres    false    230    3203    222         ?           2606    124113 O   ludorecherche_game_designers ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_game_designers DROP CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche;
       public          postgres    false    3218    226    230         :           2606    124118 I   ludorecherche_game ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche;
       public          postgres    false    226    3283    250         ;           2606    124123 G   ludorecherche_game ludorecherche_game_language_id_38e7eecd_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.ludorecherche_game DROP CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche;
       public          postgres    false    240    226    3259         [           2606    125435 O   ludorecherche_game_mechanism ludorecherche_game_m_game_id_bc22c85a_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_m_game_id_bc22c85a_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_game_mechanism DROP CONSTRAINT ludorecherche_game_m_game_id_bc22c85a_fk_ludoreche;
       public          postgres    false    226    3218    276         \           2606    125440 T   ludorecherche_game_mechanism ludorecherche_game_m_mechanism_id_2d137790_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_m_mechanism_id_2d137790_fk_ludoreche FOREIGN KEY (mechanism_id) REFERENCES public.ludorecherche_mechanism(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.ludorecherche_game_mechanism DROP CONSTRAINT ludorecherche_game_m_mechanism_id_2d137790_fk_ludoreche;
       public          postgres    false    276    272    3351         K           2606    124133 R   ludorecherche_game_playing_mode ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche;
       public          postgres    false    226    3218    246         A           2606    124143 P   ludorecherche_game_publishers ludorecherche_game_p_game_id_a425abf8_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche;
       public          postgres    false    232    226    3218         J           2606    124128 Y   ludorecherche_game_playing_mode ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_game_playing_mode DROP CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche;
       public          postgres    false    242    246    3264         @           2606    124138 U   ludorecherche_game_publishers ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ludorecherche_game_publishers DROP CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche;
       public          postgres    false    3208    232    224         L           2606    33599 I   ludorecherche_game_tag ludorecherche_game_t_game_id_065ca217_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche;
       public          postgres    false    254    226    3218         ]           2606    125449 K   ludorecherche_game_topic ludorecherche_game_t_game_id_d0f61157_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_t_game_id_d0f61157_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.ludorecherche_game_topic DROP CONSTRAINT ludorecherche_game_t_game_id_d0f61157_fk_ludoreche;
       public          postgres    false    226    3218    278         ^           2606    125454 L   ludorecherche_game_topic ludorecherche_game_t_topic_id_e97daab5_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_t_topic_id_e97daab5_fk_ludoreche FOREIGN KEY (topic_id) REFERENCES public.ludorecherche_topic(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.ludorecherche_game_topic DROP CONSTRAINT ludorecherche_game_t_topic_id_e97daab5_fk_ludoreche;
       public          postgres    false    274    3356    278         M           2606    33604 U   ludorecherche_game_tag ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id FOREIGN KEY (tag_id) REFERENCES public.ludorecherche_tag(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ludorecherche_game_tag DROP CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id;
       public          postgres    false    3288    254    252         T           2606    86222 Q   ludorecherche_multiaddon_games ludorecherche_multi__game_id_790ba75d_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ludorecherche_multiaddon_games DROP CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche;
       public          postgres    false    262    3218    226         P           2606    124198 U   ludorecherche_multiaddon_artists ludorecherche_multia_artist_id_74a26ff8_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multia_artist_id_74a26ff8_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.ludorecherche_multiaddon_artists DROP CONSTRAINT ludorecherche_multia_artist_id_74a26ff8_fk_ludoreche;
       public          postgres    false    258    220    3198         R           2606    124208 Y   ludorecherche_multiaddon_designers ludorecherche_multia_designer_id_b83f2be4_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multia_designer_id_b83f2be4_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers DROP CONSTRAINT ludorecherche_multia_designer_id_b83f2be4_fk_ludoreche;
       public          postgres    false    260    222    3203         N           2606    124218 Q   ludorecherche_multiaddon ludorecherche_multia_difficulty_id_2c08dd2a_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multia_difficulty_id_2c08dd2a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.ludorecherche_multiaddon DROP CONSTRAINT ludorecherche_multia_difficulty_id_2c08dd2a_fk_ludoreche;
       public          postgres    false    256    250    3283         O           2606    124223 O   ludorecherche_multiaddon ludorecherche_multia_language_id_0cdb5fef_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multia_language_id_0cdb5fef_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.ludorecherche_multiaddon DROP CONSTRAINT ludorecherche_multia_language_id_0cdb5fef_fk_ludoreche;
       public          postgres    false    256    240    3259         W           2606    124233 ^   ludorecherche_multiaddon_playing_mode ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode DROP CONSTRAINT ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche;
       public          postgres    false    264    256    3301         Y           2606    124243 \   ludorecherche_multiaddon_publishers ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers DROP CONSTRAINT ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche;
       public          postgres    false    266    256    3301         U           2606    116308 W   ludorecherche_multiaddon_games ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_games DROP CONSTRAINT ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche;
       public          postgres    false    3301    262    256         Q           2606    124203 Y   ludorecherche_multiaddon_artists ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_artists DROP CONSTRAINT ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche;
       public          postgres    false    258    256    3301         S           2606    124213 [   ludorecherche_multiaddon_designers ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_designers DROP CONSTRAINT ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche;
       public          postgres    false    3301    256    260         V           2606    124228 _   ludorecherche_multiaddon_playing_mode ludorecherche_multia_playingmode_id_a5a47f2d_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multia_playingmode_id_a5a47f2d_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode DROP CONSTRAINT ludorecherche_multia_playingmode_id_a5a47f2d_fk_ludoreche;
       public          postgres    false    264    242    3264         X           2606    124238 [   ludorecherche_multiaddon_publishers ludorecherche_multia_publisher_id_526f999a_fk_ludoreche    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multia_publisher_id_526f999a_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers DROP CONSTRAINT ludorecherche_multia_publisher_id_526f999a_fk_ludoreche;
       public          postgres    false    266    224    3208                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3558.dat                                                                                            0000600 0004000 0002000 00000000005 14047007276 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3560.dat                                                                                            0000600 0004000 0002000 00000000005 14047007276 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3556.dat                                                                                            0000600 0004000 0002000 00000007052 14047007276 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add auteur	1	add_designer
2	Can change auteur	1	change_designer
3	Can delete auteur	1	delete_designer
4	Can view auteur	1	view_designer
5	Can add illustrateur	2	add_artist
6	Can change illustrateur	2	change_artist
7	Can delete illustrateur	2	delete_artist
8	Can view illustrateur	2	view_artist
9	Can add éditeur	3	add_publisher
10	Can change éditeur	3	change_publisher
11	Can delete éditeur	3	delete_publisher
12	Can view éditeur	3	view_publisher
13	Can add langue	4	add_language
14	Can change langue	4	change_language
15	Can delete langue	4	delete_language
16	Can view langue	4	view_language
17	Can add type	5	add_playingmode
18	Can change type	5	change_playingmode
19	Can delete type	5	delete_playingmode
20	Can view type	5	view_playingmode
21	Can add jeu	6	add_game
22	Can change jeu	6	change_game
23	Can delete jeu	6	delete_game
24	Can view jeu	6	view_game
25	Can add extension	7	add_add_on
26	Can change extension	7	change_add_on
27	Can delete extension	7	delete_add_on
28	Can view extension	7	view_add_on
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	9	add_permission
34	Can change permission	9	change_permission
35	Can delete permission	9	delete_permission
36	Can view permission	9	view_permission
37	Can add group	10	add_group
38	Can change group	10	change_group
39	Can delete group	10	delete_group
40	Can view group	10	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
57	Can add difficulté	15	add_difficulty
58	Can change difficulté	15	change_difficulty
59	Can delete difficulté	15	delete_difficulty
60	Can view difficulté	15	view_difficulty
61	Can add étiquettes	16	add_tag
62	Can change étiquettes	16	change_tag
63	Can delete étiquettes	16	delete_tag
64	Can view étiquettes	16	view_tag
65	Can add extension	17	add_multi_add_on
66	Can change extension	17	change_multi_add_on
67	Can delete extension	17	delete_multi_add_on
68	Can view extension	17	view_multi_add_on
69	Can add extension	7	add_addon
70	Can change extension	7	change_addon
71	Can delete extension	7	delete_addon
72	Can view extension	7	view_addon
73	Can add extension partagée	17	add_multiaddon
74	Can change extension partagée	17	change_multiaddon
75	Can delete extension partagée	17	delete_multiaddon
76	Can view extension partagée	17	view_multiaddon
77	Can add theme	18	add_theme
78	Can change theme	18	change_theme
79	Can delete theme	18	delete_theme
80	Can view theme	18	view_theme
81	Can add background	19	add_background
82	Can change background	19	change_background
83	Can delete background	19	delete_background
84	Can view background	19	view_background
85	Can add Thème associé	20	add_topic
86	Can change Thème associé	20	change_topic
87	Can delete Thème associé	20	delete_topic
88	Can view Thème associé	20	view_topic
89	Can add mécanique associé	21	add_mechanism
90	Can change mécanique associé	21	change_mechanism
91	Can delete mécanique associé	21	delete_mechanism
92	Can view mécanique associé	21	view_mechanism
93	Can add news	22	add_news
94	Can change news	22	change_news
95	Can delete news	22	delete_news
96	Can view news	22	view_news
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3562.dat                                                                                            0000600 0004000 0002000 00000000266 14047007276 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pbkdf2_sha256$216000$agGTW3d8yuVR$ZPd+KkhCuIE1oYBlY7hVHDleO09BbZPzAtNHI5Wk+Ik=	2021-05-12 17:55:37.558585+02	t	wolgan			wolgan_4@hotmail.com	t	t	2021-04-05 11:31:15.543428+02
\.


                                                                                                                                                                                                                                                                                                                                          3564.dat                                                                                            0000600 0004000 0002000 00000000005 14047007276 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3566.dat                                                                                            0000600 0004000 0002000 00000000005 14047007276 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3568.dat                                                                                            0000600 0004000 0002000 00000166155 14047007276 0014304 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2021-04-05 14:47:09.392458+02	1	Reiner Knizia	1	[{"added": {}}]	7	1
2	2021-04-05 14:47:28.982261+02	2	Darwin Kastle	1	[{"added": {}}]	7	1
3	2021-04-05 14:47:38.97279+02	3	Robert Dougherty	1	[{"added": {}}]	7	1
4	2021-04-05 14:48:05.122523+02	4	Holger Bösch	1	[{"added": {}}]	7	1
5	2021-04-05 14:48:15.399619+02	5	Nicolas Smeers	1	[{"added": {}}]	7	1
6	2021-04-05 14:54:31.264638+02	1	Bernard Skopnik	1	[{"added": {}}]	8	1
7	2021-04-05 14:55:30.649104+02	2	Randy Delven	1	[{"added": {}}]	8	1
8	2021-04-05 14:55:42.818103+02	3	Vito Guesualdi	1	[{"added": {}}]	8	1
9	2021-04-05 14:56:18.302689+02	4	Antonis Papantoniou	1	[{"added": {}}]	8	1
10	2021-04-05 14:56:53.567694+02	5	Francois Bruel	1	[{"added": {}}]	8	1
11	2021-04-05 14:57:28.492276+02	6	Guillaume Ducos	1	[{"added": {}}]	8	1
12	2021-04-05 14:57:46.424805+02	7	Giuseppe Severino	1	[{"added": {}}]	8	1
13	2021-04-05 14:58:07.087351+02	8	Arthur Bozonnet	1	[{"added": {}}]	8	1
14	2021-04-05 14:58:19.710217+02	9	Bertrand Daine	1	[{"added": {}}]	8	1
15	2021-04-05 14:59:07.719434+02	10	Arthur Loyen	1	[{"added": {}}]	8	1
16	2021-04-05 14:59:21.370057+02	11	Vianney Carvalho	1	[{"added": {}}]	8	1
17	2021-04-05 14:59:34.440786+02	12	Amandine Bastin	1	[{"added": {}}]	8	1
18	2021-04-05 15:00:26.088567+02	1	Asmodée	1	[{"added": {}}]	11	1
19	2021-04-05 15:01:35.229374+02	2	iello	1	[{"added": {}}]	11	1
20	2021-04-05 15:02:00.158212+02	3	Azao Games	1	[{"added": {}}]	11	1
21	2021-04-05 15:05:50.231995+02	4	White Wizard Games	1	[{"added": {}}]	11	1
22	2021-04-05 15:10:26.433345+02	1	Black Stories 2	1	[{"added": {}}]	10	1
23	2021-04-05 15:11:23.008133+02	1	Black Stories 2	2	[]	10	1
24	2021-04-05 15:15:24.523435+02	2	Ultrium Sphere : sub'primal sphere	1	[{"added": {}}]	10	1
25	2021-04-05 15:17:25.572867+02	3	Ultrium Sphere : tëra nëva sphere	1	[{"added": {}}]	10	1
26	2021-04-05 15:20:48.433783+02	4	Hero Realms	1	[{"added": {}}]	10	1
27	2021-04-05 15:24:23.870134+02	5	Camelot	1	[{"added": {}}]	10	1
28	2021-04-05 15:39:44.436496+02	6	Masao Suganuma	1	[{"added": {}}]	7	1
29	2021-04-05 15:40:05.825719+02	13	Noboru Hotta	1	[{"added": {}}]	8	1
30	2021-04-05 15:40:25.066285+02	5	MGA	1	[{"added": {}}]	11	1
31	2021-04-05 15:40:48.76601+02	6	Minivilles	1	[{"added": {}}]	10	1
32	2021-04-05 15:42:56.064869+02	1	Minivilles: 5-6 extensions	1	[{"added": {}}]	9	1
33	2021-04-05 16:01:37.863497+02	6	Minivilles	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
34	2021-04-05 16:02:04.316088+02	5	Camelot	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
35	2021-04-05 16:02:14.637509+02	4	Hero Realms	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
36	2021-04-05 16:02:27.059336+02	3	Ultrium Sphere : tëra nëva sphere	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
37	2021-04-05 16:02:40.395211+02	2	Ultrium Sphere : sub'primal sphere	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
38	2021-04-05 16:02:45.661218+02	1	Black Stories 2	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
39	2021-04-05 16:10:32.73248+02	4	Hero Realms	2	[{"changed": {"fields": ["URL de l'image"]}}]	10	1
40	2021-04-06 10:51:42.939381+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["URL de l'image"]}}]	9	1
41	2021-04-06 11:43:16.178855+02	6	Minivilles	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
42	2021-04-06 11:43:24.192439+02	5	Camelot	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
43	2021-04-06 11:43:32.381572+02	4	Hero Realms	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
44	2021-04-06 11:43:46.521327+02	3	Ultrium Sphere : tëra nëva sphere	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
45	2021-04-06 11:43:57.251592+02	2	Ultrium Sphere : sub'primal sphere	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
46	2021-04-06 11:44:20.803623+02	1	Black Stories 2	2	[{"changed": {"fields": ["Maximum time"]}}]	10	1
47	2021-04-06 16:50:59.374848+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["URL de l'image"]}}]	9	1
48	2021-04-06 16:55:49.592604+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["URL de l'image"]}}]	9	1
49	2021-04-07 09:51:38.172315+02	1	Français	1	[{"added": {}}]	12	1
50	2021-04-07 09:51:42.779161+02	2	Anglais	1	[{"added": {}}]	12	1
51	2021-04-07 09:55:24.172958+02	1	Individuel	1	[{"added": {}}]	13	1
52	2021-04-07 09:55:29.739197+02	2	Associatif	1	[{"added": {}}]	13	1
53	2021-04-07 09:55:35.624234+02	3	Coopératif	1	[{"added": {}}]	13	1
54	2021-04-07 09:55:41.845547+02	4	Compétitif	1	[{"added": {}}]	13	1
55	2021-04-07 10:08:53.123692+02	6	Minivilles	2	[{"changed": {"fields": ["Language", "Playing mode", "\\u00c2ge"]}}]	10	1
56	2021-04-07 10:27:09.690443+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Type"]}}]	9	1
57	2021-04-07 10:45:52.722122+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Langue"]}}]	9	1
58	2021-04-07 10:56:15.214864+02	6	Minivilles	2	[{"changed": {"fields": ["Type"]}}]	10	1
59	2021-04-07 10:58:31.701978+02	5	Camelot	2	[{"changed": {"fields": ["Type"]}}]	10	1
60	2021-04-07 10:58:37.958699+02	5	Camelot	2	[]	10	1
61	2021-04-07 10:58:43.232991+02	5	Camelot	2	[{"changed": {"fields": ["Langue"]}}]	10	1
62	2021-04-07 10:59:00.75842+02	4	Hero Realms	2	[{"changed": {"fields": ["Langue"]}}]	10	1
63	2021-04-07 11:01:49.047815+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Type"]}}]	9	1
64	2021-04-07 11:13:58.561676+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Langue"]}}]	9	1
65	2021-04-07 11:14:28.612212+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Langue"]}}]	9	1
66	2021-04-07 11:21:45.597298+02	1	Minivilles: 5-6 extensions	2	[]	9	1
67	2021-04-07 11:24:07.52864+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Nombre de joueur maximum"]}}]	9	1
68	2021-04-07 11:28:34.40077+02	1	Minivilles: 5-6 extensions	2	[{"changed": {"fields": ["Nombre de joueur maximum"]}}]	9	1
69	2021-04-07 11:36:35.80821+02	6	Minivilles	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
70	2021-04-07 11:36:43.198622+02	5	Camelot	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
71	2021-04-07 11:36:49.089105+02	4	Hero Realms	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
72	2021-04-07 11:37:01.618938+02	3	Ultrium Sphere : tëra nëva sphere	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
73	2021-04-07 11:37:10.741248+02	2	Ultrium Sphere : sub'primal sphere	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	10	1
74	2021-04-07 11:37:24.038868+02	1	Black Stories 2	2	[]	10	1
75	2021-04-07 15:43:03.017996+02	1	Famille	1	[{"added": {}}]	15	1
76	2021-04-07 15:45:19.521515+02	7	Minivilles	1	[{"added": {}}]	6	1
77	2021-04-07 15:47:14.975335+02	2	Minivilles: 5-6 Extension	1	[{"added": {}}]	7	1
78	2021-04-07 16:10:27.564838+02	2	vétéran	1	[{"added": {}}]	15	1
79	2021-04-07 16:11:51.602636+02	7	Minivilles	2	[{"changed": {"fields": ["\\u00c9tiquette"]}}]	6	1
80	2021-04-07 16:24:31.664331+02	1	Construction	1	[{"added": {}}]	16	1
81	2021-04-07 16:24:41.454318+02	2	Gestion de ressource	1	[{"added": {}}]	16	1
82	2021-04-07 19:34:14.774011+02	7	Minivilles	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
83	2021-04-08 10:43:15.831313+02	7	Minivilles	2	[{"changed": {"fields": ["Nombre de joueurs maximum"]}}]	6	1
84	2021-04-08 10:44:42.853519+02	8	test	1	[{"added": {}}]	6	1
85	2021-04-08 10:45:31.042001+02	8	test	3		6	1
86	2021-04-08 10:59:42.717871+02	9	test	1	[{"added": {}}]	6	1
87	2021-04-08 11:10:48.572291+02	9	test	3		6	1
88	2021-04-08 13:32:03.77167+02	3	Médieval fantastique	1	[{"added": {}}]	16	1
89	2021-04-08 13:32:16.277092+02	4	Exploration de donjon	1	[{"added": {}}]	16	1
90	2021-04-08 13:33:47.00541+02	5	Jeu à campagne	1	[{"added": {}}]	16	1
91	2021-04-08 13:33:53.39473+02	6	Pathfinder	1	[{"added": {}}]	16	1
92	2021-04-08 13:34:19.737308+02	7	Jeu de rôle	1	[{"added": {}}]	16	1
93	2021-04-08 13:40:55.710085+02	7	Mike Selinker	1	[{"added": {}}]	1	1
94	2021-04-08 13:41:19.380257+02	14	Daryl Mandryk	1	[{"added": {}}]	2	1
95	2021-04-08 13:41:27.748455+02	6	Paizo	1	[{"added": {}}]	3	1
96	2021-04-08 13:41:39.139258+02	7	Black Book	1	[{"added": {}}]	3	1
97	2021-04-08 13:42:18.337668+02	10	Pathfinder le jeu de cartes: skull and shackles	1	[{"added": {}}]	6	1
98	2021-04-08 13:49:43.914954+02	10	Pathfinder le jeu de cartes: skull and shackles	2	[]	6	1
99	2021-04-08 13:57:28.556885+02	15	Wayne Reynolds	1	[{"added": {}}]	2	1
100	2021-04-08 13:58:14.710035+02	3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	1	[{"added": {}}]	7	1
101	2021-04-08 14:01:29.87553+02	3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	2	[]	7	1
102	2021-04-08 14:06:28.678487+02	8	Deck-building	1	[{"added": {}}]	16	1
103	2021-04-08 14:08:37.142105+02	16	Noah Bradley	1	[{"added": {}}]	2	1
104	2021-04-08 14:08:54.479821+02	17	Vincent Dutrait	1	[{"added": {}}]	2	1
105	2021-04-08 14:10:42.274448+02	11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	1	[{"added": {}}]	6	1
106	2021-04-08 14:15:19.240051+02	4	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes boite d'extension	1	[{"added": {}}]	7	1
107	2021-04-08 14:46:24.279589+02	1	Pathfinder le jeu de cartes:boites des decks de classe	1	[{"added": {}}]	17	1
108	2021-04-08 16:21:23.518925+02	1	Pathfinder le jeu de cartes:boites des decks de classe	1	[{"added": {}}]	17	1
109	2021-04-08 16:23:31.788357+02	1	Pathfinder le jeu de cartes:boites des decks de classe	2	[]	17	1
110	2021-04-08 17:12:01.663911+02	1	Pathfinder le jeu de cartes:boites des decks de classe	2	[]	17	1
111	2021-04-09 12:09:57.03675+02	12	test	1	[{"added": {}}]	6	1
112	2021-04-09 12:10:36.110646+02	12	test	3		6	1
113	2021-04-09 17:43:36.019318+02	18	Tyler Jacobson	1	[{"added": {}}]	2	1
114	2021-04-09 17:44:36.552094+02	13	Pathfinder adventure card game: mummy's mask	1	[{"added": {}}]	6	1
115	2021-04-09 17:47:26.433924+02	5	Pathfinder adventure card game: mummy's mask extension set	1	[{"added": {}}]	7	1
116	2021-04-09 17:51:41.623255+02	8	Chad Brown	1	[{"added": {}}]	1	1
117	2021-04-09 17:51:55.242701+02	9	Keith Richmond	1	[{"added": {}}]	1	1
118	2021-04-09 17:52:10.99325+02	10	Aviva Schecterson	1	[{"added": {}}]	1	1
119	2021-04-09 17:52:26.335677+02	11	Liz Spain	1	[{"added": {}}]	1	1
120	2021-04-09 17:52:48.379039+02	19	Setiawan Lie	1	[{"added": {}}]	2	1
121	2021-04-09 17:53:08.591384+02	14	Pathfinder adventure card game: core set	1	[{"added": {}}]	6	1
122	2021-04-09 17:56:32.708258+02	6	Pathfinder adventure card game: curse of the crimson throne	1	[{"added": {}}]	7	1
123	2021-04-09 18:00:14.806421+02	12	Paul Peterson	1	[{"added": {}}]	1	1
124	2021-04-09 18:00:32.19147+02	13	Tanis O'Conor	1	[{"added": {}}]	1	1
125	2021-04-09 18:01:06.203422+02	2	Pathfinder adventure card game: class deck - witch	1	[{"added": {}}]	17	1
126	2021-04-09 18:02:10.663799+02	1	Pathfinder le jeu de cartes:boites des decks de classe	2	[{"changed": {"fields": ["Jeux associ\\u00e9s"]}}]	17	1
127	2021-04-10 15:24:58.304155+02	9	Tower-defense	1	[{"added": {}}]	16	1
128	2021-04-10 15:27:36.797477+02	14	Jean-François Gauthier	1	[{"added": {}}]	1	1
129	2021-04-10 15:27:42.695657+02	20	Jean-François Gauthier	1	[{"added": {}}]	2	1
130	2021-04-10 15:28:32.368659+02	8	Goblivion Games	1	[{"added": {}}]	3	1
131	2021-04-10 15:28:55.497985+02	9	Paille Editions	1	[{"added": {}}]	3	1
132	2021-04-10 15:29:07.879942+02	10	Ôz Edition	1	[{"added": {}}]	3	1
133	2021-04-10 15:29:36.798119+02	15	Goblivion	1	[{"added": {}}]	6	1
134	2021-04-10 15:32:07.176491+02	10	Marvel Universe	1	[{"added": {}}]	16	1
135	2021-04-10 15:32:14.565748+02	11	super-héros	1	[{"added": {}}]	16	1
136	2021-04-10 15:35:27.167675+02	12	Joueur Asynchrone	1	[{"added": {}}]	16	1
137	2021-04-10 15:36:56.543014+02	15	Michael Boggs	1	[{"added": {}}]	1	1
138	2021-04-10 15:37:07.235021+02	16	Nate French	1	[{"added": {}}]	1	1
139	2021-04-10 15:37:15.319519+02	17	Caleb Grace	1	[{"added": {}}]	1	1
140	2021-04-10 15:37:58.997274+02	21	Chris Beck	1	[{"added": {}}]	2	1
141	2021-04-10 15:38:17.265457+02	22	Evan Simonet	1	[{"added": {}}]	2	1
142	2021-04-10 15:39:24.303842+02	11	Fantasy Flight Game	1	[{"added": {}}]	3	1
143	2021-04-10 15:40:32.01896+02	12	Edge	1	[{"added": {}}]	3	1
144	2021-04-10 15:40:56.510662+02	13	Living Card Game	1	[{"added": {}}]	3	1
145	2021-04-10 15:41:50.678765+02	16	Marvel Champions Le jeu de cartes	1	[{"added": {}}]	6	1
146	2021-04-10 15:45:30.622205+02	18	Devin Low	1	[{"added": {}}]	1	1
147	2021-04-10 15:46:39.460036+02	23	Krista Timberlake	1	[{"added": {}}]	2	1
148	2021-04-10 15:46:58.182953+02	24	Brian Bateman	1	[{"added": {}}]	2	1
149	2021-04-10 15:47:34.848996+02	14	Upper Deck	1	[{"added": {}}]	3	1
150	2021-04-10 15:47:38.610804+02	17	Legendary	1	[{"added": {}}]	6	1
151	2021-04-10 15:47:51.777626+02	14	Pathfinder adventure card game: core set	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
152	2021-04-10 15:47:59.363734+02	13	Pathfinder adventure card game: mummy's mask	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
153	2021-04-10 15:48:07.272192+02	11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
154	2021-04-10 15:48:13.580808+02	10	Pathfinder le jeu de cartes: skull and shackles	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
155	2021-04-10 15:49:27.047968+02	17	Legendary: a Marvel Deck Building Game	2	[{"changed": {"fields": ["Nom"]}}]	6	1
156	2021-04-10 15:51:39.121484+02	7	Legendary: a Marvel Deck Building Game - Civil War	1	[{"added": {}}]	7	1
157	2021-04-10 15:51:50.815126+02	17	Legendary: a Marvel Deck Building Game	2	[]	6	1
158	2021-04-10 15:52:27.401678+02	14	Upper Deck Entertainment	2	[{"changed": {"fields": ["Nom"]}}]	3	1
159	2021-04-10 15:56:10.728462+02	19	Christopher Badell	1	[{"added": {}}]	1	1
160	2021-04-10 15:56:25.464564+02	20	Paul Bender	1	[{"added": {}}]	1	1
161	2021-04-10 15:56:43.070791+02	21	Adam Rebottaro	1	[{"added": {}}]	1	1
162	2021-04-10 15:56:52.288715+02	25	Adam Rebottaro	1	[{"added": {}}]	2	1
163	2021-04-10 15:57:17.77265+02	15	Greater Than Games	1	[{"added": {}}]	3	1
164	2021-04-10 15:57:28.470745+02	18	Sentinels Of The Multiverse	1	[{"added": {}}]	6	1
165	2021-04-10 15:59:54.574609+02	8	Sentinels Of The Multiverse: OblivAeon	1	[{"added": {}}]	7	1
166	2021-04-10 16:00:23.623317+02	16	Marvel Champions Le jeu de cartes	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
167	2021-04-10 16:01:34.346002+02	16	Marvel Champions Le jeu de cartes	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
168	2021-04-10 18:02:34.841356+02	9	Sentinels Of The Multiverse: Vengeance	1	[{"added": {}}]	7	1
169	2021-04-10 18:05:10.33911+02	22	Alex Franklin	1	[{"added": {}}]	1	1
170	2021-04-10 18:05:24.785932+02	23	Bryan Graham	1	[{"added": {}}]	1	1
171	2021-04-10 18:05:28.031985+02	10	Sentinels Of The Multiverse: Shattered Timelines	1	[{"added": {}}]	7	1
172	2021-04-10 18:07:46.006896+02	11	Sentinels Of The Multiverse: Rook City	1	[{"added": {}}]	7	1
173	2021-04-10 18:09:41.931004+02	12	Sentinels Of The Multiverse: Wrath of the Cosmos	1	[{"added": {}}]	7	1
174	2021-04-10 18:11:30.176412+02	24	Richard Launius	1	[{"added": {}}]	1	1
175	2021-04-10 18:11:52.613001+02	13	Sentinels Of The Multiverse:infernal relics	1	[{"added": {}}]	7	1
176	2021-04-10 18:13:55.637389+02	14	Sentinels Of The Multiverse:Villain of the Multiverse	1	[{"added": {}}]	7	1
177	2021-04-10 18:22:13.826618+02	3	complexe	1	[{"added": {}}]	15	1
178	2021-04-10 18:22:32.274741+02	13	Warhammer 40000	1	[{"added": {}}]	16	1
179	2021-04-10 18:22:44.449267+02	14	Science Fiction	1	[{"added": {}}]	16	1
180	2021-04-10 18:23:06.30461+02	15	Guerre	1	[{"added": {}}]	16	1
181	2021-04-10 18:24:52.691333+02	25	John Goodenough	1	[{"added": {}}]	1	1
182	2021-04-10 18:25:05.259416+02	26	Jeff Tidball	1	[{"added": {}}]	1	1
183	2021-04-10 18:25:29.675453+02	26	Daarken	1	[{"added": {}}]	2	1
184	2021-04-10 18:26:00.344877+02	27	Tim AmeyO'Neil	1	[{"added": {}}]	2	1
185	2021-04-10 18:26:29.729341+02	19	Warhammer 40000: L'Hérésie d'Horus	1	[{"added": {}}]	6	1
186	2021-04-10 18:27:05.610636+02	19	Warhammer 40000: L'Hérésie d'Horus	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
187	2021-04-10 18:28:57.538689+02	16	Diesel Punk	1	[{"added": {}}]	16	1
188	2021-04-10 18:29:05.988358+02	17	Mech Warfare	1	[{"added": {}}]	16	1
189	2021-04-10 18:30:13.083083+02	27	Jamey Stegmaier	1	[{"added": {}}]	1	1
190	2021-04-10 18:30:22.393119+02	28	Jakub Rozalski	1	[{"added": {}}]	2	1
191	2021-04-10 18:30:58.960954+02	16	Stonemaier Games	1	[{"added": {}}]	3	1
192	2021-04-10 18:31:04.824816+02	17	Matagot	1	[{"added": {}}]	3	1
193	2021-04-10 18:31:15.87377+02	20	Scythe	1	[{"added": {}}]	6	1
194	2021-04-10 18:33:21.318038+02	18	Dune	1	[{"added": {}}]	16	1
195	2021-04-10 18:35:28.544008+02	28	Future Pastimes	1	[{"added": {}}]	1	1
196	2021-04-10 18:35:50.696438+02	29	Mick Uhl	1	[{"added": {}}]	2	1
197	2021-04-10 18:35:59.983544+02	30	Jean Baher	1	[{"added": {}}]	2	1
198	2021-04-10 18:36:28.433863+02	18	Descartes Éditeur	1	[{"added": {}}]	3	1
199	2021-04-10 18:36:39.494692+02	21	Dune	1	[{"added": {}}]	6	1
200	2021-04-10 18:38:43.177548+02	19	Commerce	1	[{"added": {}}]	16	1
201	2021-04-10 18:38:48.719257+02	20	Histoire	1	[{"added": {}}]	16	1
202	2021-04-10 18:40:05.670031+02	29	Dominique Ehrhard	1	[{"added": {}}]	1	1
203	2021-04-10 18:41:59.182031+02	31	Dominique Ehrhard	1	[{"added": {}}]	2	1
204	2021-04-10 18:42:23.142715+02	22	Méditerranée	1	[{"added": {}}]	6	1
205	2021-04-10 18:45:08.78505+02	30	Colby Dauch	1	[{"added": {}}]	1	1
206	2021-04-10 18:45:26.272331+02	31	J.Arthur Ellis	1	[{"added": {}}]	1	1
207	2021-04-10 18:45:40.185187+02	32	Andrea Mezzotero	1	[{"added": {}}]	1	1
208	2021-04-10 18:45:51.433491+02	32	Martin Abel	1	[{"added": {}}]	2	1
209	2021-04-10 18:46:06.487182+02	19	Plaid Hat Games	1	[{"added": {}}]	3	1
210	2021-04-10 18:46:24.66705+02	23	Crystal Clans	1	[{"added": {}}]	6	1
211	2021-04-10 18:48:13.670098+02	33	Corey Konieczka	1	[{"added": {}}]	1	1
212	2021-04-10 18:49:13.463369+02	33	Jesper Eising	1	[{"added": {}}]	2	1
213	2021-04-10 18:49:32.552171+02	34	Mio Del Rosario	1	[{"added": {}}]	2	1
214	2021-04-10 18:49:49.242471+02	35	Moi Shin Hung	1	[{"added": {}}]	2	1
215	2021-04-10 18:50:45.688033+02	24	Runewars	1	[{"added": {}}]	6	1
216	2021-04-10 18:54:25.72214+02	34	Greg Stafford	1	[{"added": {}}]	1	1
217	2021-04-10 18:54:59.301109+02	36	Steve Swenston	1	[{"added": {}}]	2	1
218	2021-04-10 18:55:06.907092+02	20	Oriflam	1	[{"added": {}}]	3	1
219	2021-04-10 18:55:14.372012+02	25	La guerre des héros	1	[{"added": {}}]	6	1
220	2021-04-10 18:58:35.991604+02	35	Isaac Childres	1	[{"added": {}}]	1	1
221	2021-04-10 18:58:51.201333+02	37	Alexandr Elichev	1	[{"added": {}}]	2	1
222	2021-04-10 18:58:59.41775+02	38	Alvaro Nebot	1	[{"added": {}}]	2	1
223	2021-04-10 18:59:12.715362+02	39	Josh T. McDowell	1	[{"added": {}}]	2	1
224	2021-04-10 18:59:46.132138+02	26	Gloomhaven	1	[{"added": {}}]	6	1
225	2021-04-10 19:01:25.512036+02	21	Andor	1	[{"added": {}}]	16	1
226	2021-04-10 19:03:10.065599+02	36	Gerhard Hecht	1	[{"added": {}}]	1	1
227	2021-04-10 19:03:20.111043+02	40	Michael Menzel	1	[{"added": {}}]	2	1
228	2021-04-10 19:03:38.438413+02	21	kosmos	1	[{"added": {}}]	3	1
229	2021-04-10 19:04:09.03769+02	27	Andor: Chada et Thorn	1	[{"added": {}}]	6	1
230	2021-04-10 19:05:43.936987+02	26	Gloomhaven	2	[]	6	1
231	2021-04-10 19:07:19.432267+02	22	warhammer fantasy	1	[{"added": {}}]	16	1
232	2021-04-10 19:08:29.406924+02	37	Justin Kemppainen	1	[{"added": {}}]	1	1
233	2021-04-10 19:08:41.948309+02	38	Adam Sadler	1	[{"added": {}}]	1	1
234	2021-04-10 19:08:55.154255+02	39	Brady Sadler	1	[{"added": {}}]	1	1
235	2021-04-10 19:09:48.526822+02	41	Diego Gisbert Llorens	1	[{"added": {}}]	2	1
236	2021-04-10 19:10:10.927795+02	28	warhammer quest: le jeu d'aventure	1	[{"added": {}}]	6	1
237	2021-04-10 19:11:19.457829+02	23	Donjons et Dragons	1	[{"added": {}}]	16	1
238	2021-04-10 19:12:56.374978+02	40	Bill Slavicsek	1	[{"added": {}}]	1	1
239	2021-04-10 19:13:08.711431+02	41	Mike Mearls	1	[{"added": {}}]	1	1
240	2021-04-10 19:13:18.966564+02	42	Peter Lee	1	[{"added": {}}]	1	1
241	2021-04-10 19:14:09.183072+02	42	Jesper Ejsing,	1	[{"added": {}}]	2	1
242	2021-04-10 19:14:30.51197+02	22	Wizard Of The Coast	1	[{"added": {}}]	3	1
243	2021-04-10 19:14:55.422251+02	29	Dungeons & Dragons: Castle Ravenloft Board Game	1	[{"added": {}}]	6	1
244	2021-04-10 19:17:13.382002+02	30	Dungeons & Dragons: Wrath of Ashardalon Board Game	1	[{"added": {}}]	6	1
245	2021-04-10 19:17:22.978144+02	22	Wizards Of The Coast	2	[{"changed": {"fields": ["Nom"]}}]	3	1
246	2021-04-10 21:55:24.022839+02	10	Sentinels Of The Multiverse: Shattered Timelines	2	[{"changed": {"fields": ["URL de l'image"]}}]	7	1
247	2021-04-11 11:23:09.573188+02	43	Kevin G. Nunn	1	[{"added": {}}]	1	1
248	2021-04-11 11:23:18.990124+02	44	Luther Bell Hendricks V	1	[{"added": {}}]	1	1
249	2021-04-11 11:24:49.813943+02	31	Sentinel Tactics: The Flame Of Freedom	1	[{"added": {}}]	6	1
250	2021-04-11 11:26:54.807146+02	15	Sentinel Tactics: Uprising	1	[{"added": {}}]	7	1
251	2021-04-11 11:27:28.723415+02	15	Sentinel Tactics: Uprising	2	[{"changed": {"fields": ["URL de l'image"]}}]	7	1
252	2021-04-11 11:29:28.384228+02	45	Frédérick Condette	1	[{"added": {}}]	1	1
253	2021-04-11 11:29:33.017959+02	43	Hub	1	[{"added": {}}]	2	1
254	2021-04-11 11:29:44.541889+02	23	The Red Joker	1	[{"added": {}}]	3	1
255	2021-04-11 11:30:53.071216+02	32	Okko Chronicles: Cycle of Water – Quest into Darkness	1	[{"added": {}}]	6	1
256	2021-04-11 11:33:48.694881+02	46	Kevin Wilson	1	[{"added": {}}]	1	1
257	2021-04-11 11:34:55.959835+02	44	John Goodenough	1	[{"added": {}}]	2	1
258	2021-04-11 11:35:10.43848+02	45	Frank Walls	1	[{"added": {}}]	2	1
259	2021-04-11 11:36:21.756191+02	5	Semi-coopératif	1	[{"added": {}}]	5	1
260	2021-04-11 11:36:28.180945+02	33	Descent: Voyage dans les ténèbres	1	[{"added": {}}]	6	1
261	2021-04-11 11:37:23.143015+02	24	runebound	1	[{"added": {}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (104)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (105)"}}]	16	1
262	2021-04-11 11:37:39.644541+02	32	Okko Chronicles: Cycle of Water – Quest into Darkness	2	[{"changed": {"fields": ["Type"]}}]	6	1
263	2021-04-11 11:37:44.738083+02	31	Sentinel Tactics: The Flame Of Freedom	2	[{"changed": {"fields": ["Type"]}}]	6	1
264	2021-04-11 11:40:09.407607+02	46	Rafał Hrynkiewicz	1	[{"added": {}}]	2	1
265	2021-04-11 11:40:51.63576+02	16	Descent: l'autel du désespoir	1	[{"added": {}}]	7	1
266	2021-04-11 11:42:40.457075+02	47	Robert A. Kouba	1	[{"added": {}}]	1	1
267	2021-04-11 11:43:35.267821+02	17	Descent: héros de légende	1	[{"added": {}}]	7	1
268	2021-04-11 11:44:59.048832+02	42	Jesper Ejsing	2	[{"changed": {"fields": ["Nom"]}}]	2	1
269	2021-04-11 11:46:24.773401+02	17	Descent: héros de légende	2	[{"changed": {"fields": ["Illustrateur"]}}]	7	1
270	2021-04-11 11:48:20.167596+02	24	Runewars	2	[{"changed": {"fields": ["Illustrateur"]}}]	6	1
271	2021-04-11 11:48:39.69271+02	35	Moy Shin Hung	2	[{"changed": {"fields": ["Nom"]}}]	2	1
272	2021-04-11 11:58:24.561445+02	33	Jesper Eising	3		2	1
273	2021-04-11 12:02:37.243774+02	25	Post Apocalyptic	1	[{"added": {}}]	16	1
274	2021-04-11 12:03:01.413197+02	48	Michał Oracz	1	[{"added": {}}]	1	1
275	2021-04-11 12:03:19.04494+02	47	Piotr Foksowicz	1	[{"added": {}}]	2	1
276	2021-04-11 12:03:32.055189+02	48	Mateusz Bielski	1	[{"added": {}}]	2	1
277	2021-04-11 12:04:05.646053+02	49	Piotr Cieśliński	1	[{"added": {}}]	2	1
278	2021-04-11 12:04:36.420002+02	34	Neuroshima Hex!	1	[{"added": {}}]	6	1
279	2021-04-11 12:06:44.269697+02	49	Martin Wallace	1	[{"added": {}}]	1	1
280	2021-04-11 12:06:54.035469+02	50	Darrell Hardy	1	[{"added": {}}]	1	1
281	2021-04-11 12:07:17.394643+02	50	Andy Brase	1	[{"added": {}}]	2	1
282	2021-04-11 12:07:48.974503+02	35	Runebound	1	[{"added": {}}]	6	1
283	2021-04-11 12:09:36.626024+02	51	Robert Harris	1	[{"added": {}}]	1	1
284	2021-04-11 12:09:51.288966+02	51	Massimiliano Bertolini	1	[{"added": {}}]	2	1
285	2021-04-11 12:10:08.901413+02	52	Marjorie Davis	1	[{"added": {}}]	2	1
286	2021-04-11 12:10:20.834975+02	53	Ralph Horsley	1	[{"added": {}}]	2	1
287	2021-04-11 12:11:16.701241+02	36	Talisman	1	[{"added": {}}]	6	1
288	2021-04-11 12:12:58.773788+02	52	Bruno Cathala	1	[{"added": {}}]	1	1
289	2021-04-11 12:13:08.163628+02	53	Antoine Bauza	1	[{"added": {}}]	1	1
290	2021-04-11 12:13:17.118455+02	54	Miguel Coimbra	1	[{"added": {}}]	2	1
291	2021-04-11 12:13:30.098601+02	24	Repos Production	1	[{"added": {}}]	3	1
292	2021-04-11 12:13:51.773009+02	37	7 wonders duel	1	[{"added": {}}]	6	1
293	2021-04-11 12:15:26.3855+02	26	Mafia	1	[{"added": {}}]	16	1
294	2021-04-11 12:15:54.829414+02	54	Eric M. Lang	1	[{"added": {}}]	1	1
295	2021-04-11 12:16:08.187769+02	55	Richard Wright	1	[{"added": {}}]	2	1
296	2021-04-11 12:16:20.515358+02	56	Nicolas Fructus	1	[{"added": {}}]	2	1
297	2021-04-11 12:16:30.940629+02	57	Karl Kopinski	1	[{"added": {}}]	2	1
298	2021-04-11 12:16:52.879193+02	25	CMON Limited	1	[{"added": {}}]	3	1
299	2021-04-11 12:17:06.995705+02	38	Le Parrain: L'empire De Corleone	1	[{"added": {}}]	6	1
300	2021-04-11 12:18:29.02492+02	27	Disney	1	[{"added": {}}]	16	1
301	2021-04-11 12:18:56.333734+02	55	Prospero Hall	1	[{"added": {}}]	1	1
302	2021-04-11 12:19:55.146789+02	26	Ravensburger	1	[{"added": {}}]	3	1
303	2021-04-11 12:20:13.290226+02	39	Disney Villainous	1	[{"added": {}}]	6	1
304	2021-04-11 12:21:50.772013+02	56	Claude Lucchini	1	[{"added": {}}]	1	1
305	2021-04-11 12:22:01.733377+02	58	Paul Mafayon	1	[{"added": {}}]	2	1
306	2021-04-11 12:22:39.744136+02	27	Libellud	1	[{"added": {}}]	3	1
307	2021-04-11 12:22:47.174673+02	28	Pearl Games	1	[{"added": {}}]	3	1
308	2021-04-11 12:23:00.105275+02	40	Otys	1	[{"added": {}}]	6	1
309	2021-04-11 12:23:40.026643+02	57	Jesse Li	1	[{"added": {}}]	1	1
310	2021-04-11 12:24:02.528909+02	28	Finance	1	[{"added": {}}]	16	1
311	2021-04-11 12:24:45.251753+02	59	Chih-Fan Chen	1	[{"added": {}}]	2	1
312	2021-04-11 12:24:57.300501+02	29	2Tomatoes Games	1	[{"added": {}}]	3	1
313	2021-04-11 12:25:08.514817+02	41	Ponzi Scheme	1	[{"added": {}}]	6	1
314	2021-04-11 12:26:21.340603+02	29	Harry Potter	1	[{"added": {}}]	16	1
315	2021-04-11 12:26:43.575608+02	30	Sorcier	1	[{"added": {}}]	16	1
316	2021-04-11 12:27:11.981854+02	58	Mark Latham	1	[{"added": {}}]	1	1
317	2021-04-11 12:27:22.673846+02	59	Gustavo Adolfo Cuadrado	1	[{"added": {}}]	1	1
318	2021-04-11 12:27:38.342886+02	30	Knight Models	1	[{"added": {}}]	3	1
319	2021-04-11 12:27:52.006594+02	42	Harry Potter Miniatures Adventure Game	1	[{"added": {}}]	6	1
320	2021-04-11 15:34:37.618769+02	60	Paul J. Gruen	1	[{"added": {}}]	1	1
321	2021-04-11 15:34:52.656703+02	31	Parker	1	[{"added": {}}]	3	1
322	2021-04-11 15:35:12.639274+02	43	La bonne Paye	1	[{"added": {}}]	6	1
323	2021-04-11 15:37:57.415891+02	44	Monopoly: Star Wars Limited Collector's Edition	1	[{"added": {}}]	6	1
324	2021-04-11 15:40:14.590689+02	31	Préhistoire	1	[{"added": {}}]	16	1
325	2021-04-11 15:40:40.056075+02	61	Bruno Faidutti	1	[{"added": {}}]	1	1
326	2021-04-11 15:40:51.303124+02	60	Gérard Mathieu	1	[{"added": {}}]	2	1
327	2021-04-11 15:41:18.242757+02	45	La vallée des mammouths	1	[{"added": {}}]	6	1
328	2021-04-11 15:43:58.975468+02	32	Époque Napoléonienne	1	[{"added": {}}]	16	1
329	2021-04-11 15:44:21.041943+02	62	Albert Lamorisse	1	[{"added": {}}]	1	1
330	2021-04-11 15:44:28.320945+02	63	Michael I. Levin	1	[{"added": {}}]	1	1
331	2021-04-11 15:44:56.79956+02	46	Risk: La conquête du monde	1	[{"added": {}}]	6	1
332	2021-04-11 15:47:04.008515+02	64	Bill Markham	1	[{"added": {}}]	1	1
333	2021-04-11 15:47:15.071207+02	65	Reuben Klamer	1	[{"added": {}}]	1	1
334	2021-04-11 15:47:26.835168+02	32	MB	1	[{"added": {}}]	3	1
335	2021-04-11 15:47:39.784332+02	47	Destins	1	[{"added": {}}]	6	1
336	2021-04-11 15:48:33.596938+02	33	Escape Games	1	[{"added": {}}]	16	1
337	2021-04-11 15:50:33.841442+02	66	Nicolas Bonnefoy	1	[{"added": {}}]	1	1
338	2021-04-11 15:50:52.641335+02	61	Delphine Ribeyre	1	[{"added": {}}]	2	1
339	2021-04-11 15:51:02.130609+02	33	Hachette	1	[{"added": {}}]	3	1
340	2021-04-11 15:51:26.1214+02	48	L'ascenceur Infernal	1	[{"added": {}}]	6	1
341	2021-04-11 15:53:43.304309+02	67	Arnaud Ladagnous	1	[{"added": {}}]	1	1
342	2021-04-11 15:53:53.408538+02	68	Fabrice Mazza	1	[{"added": {}}]	1	1
343	2021-04-11 15:54:08.073418+02	69	Sébastien Pauchon	1	[{"added": {}}]	1	1
344	2021-04-11 15:54:17.208672+02	70	Billy Stevenson	1	[{"added": {}}]	1	1
345	2021-04-11 15:54:27.810268+02	62	Sergo	1	[{"added": {}}]	2	1
346	2021-04-11 15:54:38.971455+02	63	Pierre Santamaria	1	[{"added": {}}]	2	1
347	2021-04-11 15:54:49.093822+02	64	Florian de Gesincourt	1	[{"added": {}}]	2	1
348	2021-04-11 15:55:05.586223+02	34	Space Cowboys	1	[{"added": {}}]	3	1
349	2021-04-11 15:55:21.988242+02	49	Unlock!:mystery Adventures	1	[{"added": {}}]	6	1
350	2021-04-11 15:57:09.473519+02	71	Thomas Cauët	1	[{"added": {}}]	1	1
351	2021-04-11 15:57:18.093126+02	72	Arch Stanton	1	[{"added": {}}]	1	1
352	2021-04-11 15:57:28.482257+02	73	Lewis Cheshire	1	[{"added": {}}]	1	1
353	2021-04-11 15:57:37.54597+02	65	Mahulda Jelly	1	[{"added": {}}]	2	1
354	2021-04-11 15:57:48.520003+02	66	Arnaud Demaegd	1	[{"added": {}}]	2	1
355	2021-04-11 15:57:57.624874+02	67	Legruth	1	[{"added": {}}]	2	1
356	2021-04-11 15:58:12.821806+02	50	Unlock!:secret Adventures	1	[{"added": {}}]	6	1
357	2021-04-11 15:59:05.609867+02	74	Cyril Demaegd	1	[{"added": {}}]	1	1
358	2021-04-11 15:59:17.638789+02	68	Martin Mottet	1	[{"added": {}}]	2	1
359	2021-04-11 15:59:46.182451+02	69	Amélie Guinet	1	[{"added": {}}]	2	1
360	2021-04-11 16:00:55.964373+02	51	Unlock!:exotic Adventures	1	[{"added": {}}]	6	1
361	2021-04-11 16:02:44.761996+02	35	Mattel	1	[{"added": {}}]	3	1
362	2021-04-11 16:02:58.338037+02	75	Jeff Bazarko	1	[{"added": {}}]	1	1
363	2021-04-11 16:03:23.519142+02	34	Jeu de lettres	1	[{"added": {}}]	16	1
364	2021-04-11 16:04:05.366904+02	52	SCRABBLE ZigZag	1	[{"added": {}}]	6	1
365	2021-04-11 16:05:16.092751+02	35	Classique	1	[{"added": {}}]	16	1
366	2021-04-11 16:06:04.602425+02	53	Échecs	1	[{"added": {}}]	6	1
367	2021-04-11 16:07:24.561895+02	76	Mordecai Meirowitz	1	[{"added": {}}]	1	1
368	2021-04-11 16:07:38.634325+02	54	Master Mind	1	[{"added": {}}]	6	1
369	2021-04-11 16:08:28.225791+02	35	Classique	2	[{"added": {"name": "Relation game-tag", "object": "Game_tag object (143)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (144)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (145)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (146)"}}, {"added": {"name": "Relation game-tag", "object": "Game_tag object (147)"}}]	16	1
370	2021-04-11 16:09:46.279165+02	55	Backgammon	1	[{"added": {}}]	6	1
371	2021-04-11 16:11:09.105681+02	56	Dames Chinoises	1	[{"added": {}}]	6	1
372	2021-04-11 16:12:57.394304+02	36	Quizz	1	[{"added": {}}]	16	1
373	2021-04-11 16:14:03.955964+02	57	Trivial pursuit: Passeport pour le monde	1	[{"added": {}}]	6	1
374	2021-04-11 16:16:52.950678+02	77	Scott Abbot	1	[{"added": {}}]	1	1
375	2021-04-11 16:17:06.214109+02	78	Chris Haney	1	[{"added": {}}]	1	1
376	2021-04-11 16:17:26.937984+02	36	Hasbro	1	[{"added": {}}]	3	1
377	2021-04-11 16:17:43.581977+02	58	Trivial pursuit: Histoire de France	1	[{"added": {}}]	6	1
378	2021-04-11 16:19:59.68785+02	59	Trivial pursuit: Édition Famille	1	[{"added": {}}]	6	1
379	2021-04-11 16:21:38.09639+02	37	Espion	1	[{"added": {}}]	16	1
380	2021-04-11 16:21:48.378194+02	38	Indice	1	[{"added": {}}]	16	1
381	2021-04-11 16:22:25.591435+02	79	Vlaada Chvátil	1	[{"added": {}}]	1	1
382	2021-04-11 16:22:38.610814+02	70	Tomas Kucerovsky	1	[{"added": {}}]	2	1
383	2021-04-11 16:23:01.508327+02	71	Stéphane Gantiez	1	[{"added": {}}]	2	1
384	2021-04-11 16:23:35.390633+02	60	Code Names XXL	1	[{"added": {}}]	6	1
385	2021-04-11 16:25:27.784881+02	39	Star Wars	1	[{"added": {}}]	16	1
386	2021-04-11 16:25:57.662516+02	80	Klaus-Jürgen Wrede	1	[{"added": {}}]	1	1
387	2021-04-11 16:26:05.944677+02	37	filosofia	1	[{"added": {}}]	3	1
388	2021-04-11 16:26:24.262458+02	61	Carcassonne Star Wars	1	[{"added": {}}]	6	1
389	2021-04-11 16:27:24.269393+02	40	Restaurant	1	[{"added": {}}]	16	1
390	2021-04-11 16:27:54.389529+02	81	Julien Prothière	1	[{"added": {}}]	1	1
391	2021-04-11 16:28:04.464701+02	82	Florent Toscano	1	[{"added": {}}]	1	1
392	2021-04-11 16:28:14.416345+02	72	Stéphane Escapa	1	[{"added": {}}]	2	1
393	2021-04-11 16:28:24.960689+02	38	Jeux Opla	1	[{"added": {}}]	3	1
394	2021-04-11 16:28:41.530116+02	62	[kosmopoli:t]	1	[{"added": {}}]	6	1
395	2021-04-11 16:30:18.574416+02	83	Frédéric Vuagnat	1	[{"added": {}}]	1	1
396	2021-04-11 16:30:27.803531+02	73	Charlène Le Scanff	1	[{"added": {}}]	2	1
397	2021-04-11 16:30:32.51271+02	39	Superlude	1	[{"added": {}}]	3	1
398	2021-04-11 16:30:49.862788+02	63	maître renard	1	[{"added": {}}]	6	1
399	2021-04-11 16:31:11.792731+02	63	Maître Renard	2	[{"changed": {"fields": ["Nom"]}}]	6	1
400	2021-04-11 16:33:05.214371+02	84	Matt Leacock	1	[{"added": {}}]	1	1
401	2021-04-11 16:33:14.892219+02	74	Tyler Edlin	1	[{"added": {}}]	2	1
402	2021-04-11 16:33:25.02955+02	75	C. B. Canga	1	[{"added": {}}]	2	1
403	2021-04-11 16:33:48.545579+02	40	Cocktail Games	1	[{"added": {}}]	3	1
404	2021-04-11 16:34:00.190121+02	64	Le Désert Interdit	1	[{"added": {}}]	6	1
405	2021-04-13 15:21:37.049259+02	41	Frénétique	1	[{"added": {}}]	16	1
406	2021-04-13 15:22:49.633012+02	85	Dávid Turczi	1	[{"added": {}}]	1	1
407	2021-04-13 15:23:02.378256+02	86	Vangelis Bagiartakis	1	[{"added": {}}]	1	1
408	2021-04-13 15:23:11.931674+02	76	Natalia Kordowska	1	[{"added": {}}]	2	1
409	2021-04-13 15:23:21.632059+02	77	Bartłomiej Kordowski	1	[{"added": {}}]	2	1
410	2021-04-13 15:23:33.614535+02	41	Artipia Games	1	[{"added": {}}]	3	1
411	2021-04-13 15:23:48.197415+02	65	Kitchen Rush	1	[{"added": {}}]	6	1
412	2021-04-13 15:24:36.968333+02	42	Dessin	1	[{"added": {}}]	16	1
413	2021-04-13 15:25:14.331002+02	87	David Franck	1	[{"added": {}}]	1	1
414	2021-04-13 15:25:29.88931+02	88	Laurent Escoffier	1	[{"added": {}}]	1	1
415	2021-04-13 15:25:53.320074+02	66	Pix	1	[{"added": {}}]	6	1
416	2021-04-13 15:26:51.805226+02	43	Pose de tuile	1	[{"added": {}}]	16	1
417	2021-04-13 15:28:14.745054+02	78	Cyril Bouquet	1	[{"added": {}}]	2	1
418	2021-04-13 15:28:25.098336+02	42	Blue Orange	1	[{"added": {}}]	3	1
419	2021-04-13 15:28:38.469816+02	67	Kingdomino	1	[{"added": {}}]	6	1
420	2021-04-13 15:29:21.328939+02	65	Kitchen Rush	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
421	2021-04-13 15:30:29.846596+02	44	Casino	1	[{"added": {}}]	16	1
422	2021-04-13 15:30:58.209618+02	89	Rüdiger Dorn	1	[{"added": {}}]	1	1
423	2021-04-13 15:31:10.345661+02	79	Harald Lieske	1	[{"added": {}}]	2	1
424	2021-04-13 15:31:20.35543+02	80	Mia Steingräber	1	[{"added": {}}]	2	1
425	2021-04-13 15:31:37.70558+02	81	Markus Schmuck	1	[{"added": {}}]	2	1
426	2021-04-13 15:33:11.756401+02	43	Oya	1	[{"added": {}}]	3	1
427	2021-04-13 15:33:33.085909+02	68	Las Vegas	1	[{"added": {}}]	6	1
428	2021-04-13 15:40:39.245754+02	61	Carcassonne Star Wars	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
429	2021-04-13 15:44:22.549262+02	44	ThinkGeek.com	1	[{"added": {}}]	3	1
430	2021-04-13 15:44:38.107322+02	69	Hover Kraft	1	[{"added": {}}]	6	1
431	2021-04-13 15:45:58.915223+02	90	Daryl Andrews	1	[{"added": {}}]	1	1
432	2021-04-13 15:46:08.002571+02	91	Adrian Adamescu	1	[{"added": {}}]	1	1
433	2021-04-13 15:46:17.455357+02	82	Peter Wocken	1	[{"added": {}}]	2	1
434	2021-04-13 15:46:55.726172+02	45	Flood Gate Games	1	[{"added": {}}]	3	1
435	2021-04-13 15:47:20.94288+02	70	Sagrada	1	[{"added": {}}]	6	1
436	2021-04-13 15:49:22.818849+02	92	Francis Pacherie	1	[{"added": {}}]	1	1
437	2021-04-13 15:49:30.764121+02	83	Emmanuel Roudier	1	[{"added": {}}]	2	1
438	2021-04-13 15:49:41.711798+02	46	Clash of Arms Games	1	[{"added": {}}]	3	1
439	2021-04-13 15:49:54.236701+02	71	Ivanhoë	1	[{"added": {}}]	6	1
440	2021-04-13 15:51:20.356831+02	93	Richard Garfield	1	[{"added": {}}]	1	1
441	2021-04-13 15:51:33.04182+02	84	Gabriel Butik	1	[{"added": {}}]	2	1
442	2021-04-13 15:51:44.914954+02	85	Romain Gaschet	1	[{"added": {}}]	2	1
443	2021-04-13 15:51:59.739677+02	86	Jonathan Silvestre	1	[{"added": {}}]	2	1
444	2021-04-13 15:52:31.235769+02	72	King Of Tokyo	1	[{"added": {}}]	6	1
445	2021-04-13 15:55:44.089509+02	87	Mathieu Leyssenne	1	[{"added": {}}]	2	1
446	2021-04-13 15:56:10.066631+02	73	Loony Quest	1	[{"added": {}}]	6	1
447	2021-04-13 15:58:45.156005+02	18	Loony Quest: The Lost City	1	[{"added": {}}]	7	1
448	2021-04-13 16:00:24.577378+02	94	Ken Gruhl	1	[{"added": {}}]	1	1
449	2021-04-13 16:00:39.314005+02	88	Ronan Le Maître	1	[{"added": {}}]	2	1
450	2021-04-13 16:00:48.633456+02	89	Irina Pechenkina	1	[{"added": {}}]	2	1
451	2021-04-13 16:01:02.876464+02	47	Gamewright	1	[{"added": {}}]	3	1
452	2021-04-13 16:01:16.277077+02	74	Cahoots	1	[{"added": {}}]	6	1
453	2021-04-13 16:04:15.904133+02	95	Jonathan Algaze	1	[{"added": {}}]	1	1
454	2021-04-13 16:04:26.163743+02	48	Topi Games	1	[{"added": {}}]	3	1
455	2021-04-13 16:04:42.777737+02	75	HARRY Potter Une année à Poudlard	1	[{"added": {}}]	6	1
456	2021-04-13 16:04:57.606433+02	75	HARRY Potter Une année à Poudlard	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
457	2021-04-13 16:06:22.694724+02	96	Nick Hayes	1	[{"added": {}}]	1	1
458	2021-04-13 16:06:30.883176+02	90	Jean-Baptiste Reynaud	1	[{"added": {}}]	2	1
459	2021-04-13 16:07:06.113095+02	76	Wizards Wanted	1	[{"added": {}}]	6	1
460	2021-04-13 16:08:10.629252+02	45	japon	1	[{"added": {}}]	16	1
461	2021-04-13 16:08:14.25718+02	46	voyage	1	[{"added": {}}]	16	1
462	2021-04-13 16:09:57.154612+02	91	Xavier Gueniffey Durin	1	[{"added": {}}]	2	1
463	2021-04-13 16:10:08.986697+02	49	Funforge	1	[{"added": {}}]	3	1
464	2021-04-13 16:10:23.066796+02	77	Tokaido	1	[{"added": {}}]	6	1
465	2021-04-13 16:11:14.531834+02	47	Pirate	1	[{"added": {}}]	16	1
466	2021-04-13 16:11:23.157373+02	48	Course	1	[{"added": {}}]	16	1
467	2021-04-13 16:12:36.899278+02	97	Malcolm Braff	1	[{"added": {}}]	1	1
468	2021-04-13 16:13:26.020315+02	50	Game Works SARL	1	[{"added": {}}]	3	1
469	2021-04-13 16:13:39.269774+02	78	Jamaica	1	[{"added": {}}]	6	1
470	2021-04-13 16:16:02.535221+02	49	Pose d'Ouvrier	1	[{"added": {}}]	16	1
471	2021-04-13 16:16:33.425891+02	98	Kami Mandell	1	[{"added": {}}]	1	1
472	2021-04-13 16:16:40.498999+02	99	Nate Heiss	1	[{"added": {}}]	1	1
473	2021-04-13 16:16:48.112669+02	92	Delaney Mamer	1	[{"added": {}}]	2	1
474	2021-04-13 16:16:55.950664+02	51	The Op	1	[{"added": {}}]	3	1
475	2021-04-13 16:17:13.38385+02	79	Harry Potter: House Cup Competition	1	[{"added": {}}]	6	1
476	2021-04-13 16:18:05.728828+02	38	Le Parrain: L'empire De Corleone	2	[{"changed": {"fields": ["\\u00c9tiquettes"]}}]	6	1
477	2021-04-13 16:19:43.257711+02	100	Andrew Wolf	1	[{"added": {}}]	1	1
478	2021-04-13 16:19:53.437525+02	101	Patrick Marino	1	[{"added": {}}]	1	1
479	2021-04-13 16:20:14.992441+02	80	Harry Potter: Death Eater Rising	1	[{"added": {}}]	6	1
480	2021-04-13 16:22:49.338515+02	81	Fantastic Beasts: Perilous pursuit	1	[{"added": {}}]	6	1
481	2021-04-16 19:33:17.448846+02	1	Background object (1)	1	[{"added": {}}]	19	1
482	2021-04-16 19:37:58.733279+02	1	Pathfinder	1	[{"added": {}}]	18	1
483	2021-04-16 19:38:08.012039+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
484	2021-04-16 19:58:04.595372+02	2	Marvel	1	[{"added": {}}]	18	1
485	2021-04-16 19:58:15.235855+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
486	2021-04-17 11:52:03.804704+02	1	Pathfinder	2	[{"changed": {"fields": ["Image de page non trouv\\u00e9", "Titre page non trouv\\u00e9 ", "Texte page non trouv\\u00e9 ", "Image de page erreur serveur", "Titre page erreur serveur ", "Texte page erreur serveur ", "Titre liste globale ", "Titre accueil", "Texte Accueil ", "Titre page de recherche avanc\\u00e9e", "Texte du bouton recherche avanc\\u00e9e", "Couleur principale", "Couleur secondaire", "Couleur tertiaire", "Couleur quaternaire"]}}]	18	1
487	2021-04-17 11:57:48.881498+02	1	Pathfinder	2	[{"changed": {"fields": ["Nom de la police", "Lien de la police"]}}]	18	1
488	2021-04-17 12:01:57.001452+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
489	2021-04-17 12:04:30.467932+02	1	Pathfinder	2	[{"changed": {"fields": ["Lien de la police"]}}]	18	1
490	2021-04-17 12:12:12.613694+02	1	Pathfinder	2	[]	18	1
491	2021-04-17 12:15:24.706635+02	1	Pathfinder	2	[{"changed": {"fields": ["Lien de la police"]}}]	18	1
492	2021-04-17 12:19:49.784363+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
493	2021-04-17 12:20:14.051514+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
494	2021-04-17 12:25:21.903915+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
495	2021-04-17 12:26:51.953608+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
496	2021-04-17 12:43:10.232396+02	1	Pathfinder	2	[]	18	1
497	2021-04-17 12:55:01.964061+02	2	Marvel	2	[{"changed": {"fields": ["Nom de la police", "Lien de la police", "Image de page non trouv\\u00e9", "Titre page non trouv\\u00e9 ", "Texte page non trouv\\u00e9 ", "Image de page erreur serveur", "Titre page erreur serveur ", "Texte page erreur serveur ", "Titre liste globale ", "Titre accueil", "Texte Accueil ", "Titre page de recherche avanc\\u00e9e", "Texte du bouton recherche avanc\\u00e9e", "Couleur principale", "Couleur secondaire", "Couleur tertiaire", "Couleur quaternaire"]}}]	18	1
498	2021-04-17 12:55:09.752331+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
499	2021-04-17 15:21:16.464692+02	1	Pathfinder	2	[{"changed": {"fields": ["Nom de la requ\\u00eate", "Texte requ\\u00eate vide ", "Image requ\\u00eate vide"]}}]	18	1
500	2021-04-17 15:27:23.244306+02	1	Pathfinder	2	[{"changed": {"fields": ["Nom de la requ\\u00eate"]}}]	18	1
501	2021-04-17 15:27:46.913331+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
502	2021-04-17 15:29:47.996482+02	1	Pathfinder	2	[{"changed": {"fields": ["Image requ\\u00eate vide"]}}]	18	1
503	2021-04-17 15:31:33.9329+02	2	Marvel	2	[{"changed": {"fields": ["Nom de la requ\\u00eate", "Texte requ\\u00eate vide ", "Image requ\\u00eate vide"]}}]	18	1
504	2021-04-17 15:31:45.304282+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
505	2021-04-17 15:32:31.428225+02	2	Marvel	2	[{"changed": {"fields": ["Titre page de recherche avanc\\u00e9e"]}}]	18	1
506	2021-04-17 16:20:33.267075+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
507	2021-04-17 19:14:47.134861+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
508	2021-04-17 19:16:34.058235+02	50	Sleeved	1	[{"added": {}}]	16	1
509	2021-04-17 19:17:06.873081+02	50	Sleeved	3		16	1
510	2021-04-18 16:39:05.903846+02	37	7 wonders duel	2	[{"changed": {"fields": ["Nom anglais"]}}]	6	1
511	2021-04-18 16:44:39.225597+02	1	Andor	1	[{"added": {}}]	20	1
512	2021-04-18 16:47:42.794037+02	1	Andor	2	[{"added": {"name": "Relation game-topic", "object": "Game_topic object (1)"}}]	20	1
513	2021-04-18 16:47:58.526215+02	21	Andor	3		16	1
514	2021-04-18 16:48:16.513645+02	2	Casino	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (2)"}}]	20	1
515	2021-04-18 16:48:22.408789+02	44	Casino	3		16	1
516	2021-04-18 17:05:29.581825+02	3	Diesel Punk	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (3)"}}]	20	1
517	2021-04-18 17:05:34.039908+02	16	Diesel Punk	3		16	1
518	2021-04-18 17:05:59.132781+02	4	Disney	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (4)"}}]	20	1
519	2021-04-18 17:06:03.378288+02	27	Disney	3		16	1
520	2021-04-18 17:06:35.542058+02	5	Donjons et Dragons	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (5)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (6)"}}]	20	1
521	2021-04-18 17:06:40.026339+02	23	Donjons et Dragons	3		16	1
522	2021-04-18 17:06:54.413452+02	6	Dune	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (7)"}}]	20	1
523	2021-04-18 17:06:58.776568+02	18	Dune	3		16	1
524	2021-04-18 17:07:25.66355+02	7	Époque Napoléonienne	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (8)"}}]	20	1
525	2021-04-18 17:07:29.551275+02	32	Époque Napoléonienne	3		16	1
526	2021-04-18 17:08:05.655143+02	8	Finance	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (9)"}}]	20	1
527	2021-04-18 17:08:13.262234+02	28	Finance	3		16	1
528	2021-04-18 17:09:48.814936+02	9	Guerre	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (10)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (11)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (12)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (13)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (14)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (15)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (16)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (17)"}}]	20	1
529	2021-04-18 17:09:56.21912+02	15	Guerre	3		16	1
530	2021-04-18 17:10:47.789564+02	10	Espion	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (18)"}}]	20	1
531	2021-04-18 17:10:51.197193+02	37	Espion	3		16	1
532	2021-04-18 17:11:44.02484+02	11	Harry Potter	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (19)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (20)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (21)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (22)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (23)"}}]	20	1
533	2021-04-18 17:11:55.16481+02	29	Harry Potter	3		16	1
534	2021-04-18 17:12:56.205877+02	12	Historique	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (24)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (25)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (26)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (27)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (28)"}}]	20	1
535	2021-04-18 17:13:00.610472+02	20	Histoire	3		16	1
536	2021-04-18 17:13:19.737433+02	13	Japon	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (29)"}}]	20	1
537	2021-04-18 17:13:23.890389+02	45	japon	3		16	1
538	2021-04-18 17:13:45.755359+02	14	Mafia	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (30)"}}]	20	1
539	2021-04-18 17:13:48.91592+02	26	Mafia	3		16	1
540	2021-04-18 17:14:21.715591+02	15	Marvel	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (31)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (32)"}}]	20	1
541	2021-04-18 17:14:24.739224+02	10	Marvel Universe	3		16	1
542	2021-04-18 17:14:58.677845+02	47	Pirate	2	[{"added": {"name": "Relation game-tag", "object": "Game_tag object (192)"}}]	16	1
543	2021-04-18 17:15:18.700172+02	16	Warhammer fantasy	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (33)"}}]	20	1
544	2021-04-18 17:15:21.739459+02	22	warhammer fantasy	3		16	1
545	2021-04-18 17:15:36.656506+02	17	Warhammer 40000	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (34)"}}]	20	1
546	2021-04-18 17:15:39.853586+02	13	Warhammer 40000	3		16	1
547	2021-04-18 17:15:55.919722+02	18	Voyage	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (35)"}}]	20	1
548	2021-04-18 17:15:59.42047+02	46	voyage	3		16	1
549	2021-04-18 17:16:48.786961+02	19	Super Héros	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (36)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (37)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (38)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (39)"}}]	20	1
550	2021-04-18 17:16:54.514103+02	11	super-héros	3		16	1
551	2021-04-18 17:17:10.255169+02	20	Star Wars	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (40)"}}]	20	1
552	2021-04-18 17:17:13.017596+02	39	Star Wars	3		16	1
553	2021-04-18 17:18:03.786089+02	21	Sorcier	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (41)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (42)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (43)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (44)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (45)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (46)"}}]	20	1
554	2021-04-18 17:18:07.06917+02	30	Sorcier	3		16	1
555	2021-04-18 17:18:37.801255+02	22	Runebound	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (47)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (48)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (49)"}}]	20	1
556	2021-04-18 17:18:41.54945+02	24	runebound	3		16	1
557	2021-04-18 17:19:10.710816+02	23	Science Fiction	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (50)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (51)"}}]	20	1
558	2021-04-18 17:19:16.812191+02	14	Science Fiction	3		16	1
559	2021-04-18 17:19:41.292487+02	24	Restaurant	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (52)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (53)"}}]	20	1
560	2021-04-18 17:19:44.357762+02	40	Restaurant	3		16	1
561	2021-04-18 17:20:06.127014+02	25	Prehistoire	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (54)"}}]	20	1
562	2021-04-18 17:20:10.041683+02	31	Préhistoire	3		16	1
563	2021-04-18 17:20:32.372942+02	26	Post Apocalyptic	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (55)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (56)"}}]	20	1
564	2021-04-18 17:20:42.739173+02	25	Post Apocalyptic	3		16	1
565	2021-04-18 17:21:09.170203+02	47	Pirate	3		16	1
566	2021-04-18 17:21:23.075211+02	27	Pirate	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (57)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (58)"}}]	20	1
567	2021-04-18 17:21:53.564436+02	28	Pathfinder	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (59)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (60)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (61)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (62)"}}]	20	1
568	2021-04-18 17:21:58.556889+02	6	Pathfinder	3		16	1
569	2021-04-18 17:23:20.602823+02	29	Médieval fantastique	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (63)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (64)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (65)"}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (66)"}}]	20	1
570	2021-04-18 17:24:23.400211+02	29	Médieval fantastique	3		20	1
571	2021-04-18 17:24:44.876041+02	30	Mech Warfare	1	[{"added": {}}, {"added": {"name": "Relation game-topic", "object": "Game_topic object (67)"}}]	20	1
572	2021-04-18 17:24:48.291563+02	17	Mech Warfare	3		16	1
573	2021-04-18 17:27:16.964954+02	3	mf	2	[{"changed": {"fields": ["Nom"]}}]	16	1
574	2021-04-18 17:35:27.468988+02	3	mf	3		16	1
575	2021-04-18 17:38:51.169226+02	12	Classique	3		21	1
576	2021-04-18 17:39:58.969772+02	9	Commerce	3		21	1
577	2021-04-18 17:39:58.971738+02	1	Construction	3		21	1
578	2021-04-18 17:39:58.973739+02	18	Course	3		21	1
579	2021-04-18 17:39:58.974742+02	6	Deck-building	3		21	1
580	2021-04-18 17:39:58.97674+02	16	Dessin	3		21	1
581	2021-04-18 17:39:58.977741+02	10	Escape Games	3		21	1
582	2021-04-18 17:39:58.97974+02	3	Exploration de donjon	3		21	1
583	2021-04-18 17:39:58.98074+02	15	Frénétique	3		21	1
584	2021-04-18 17:39:58.982739+02	2	Gestion de ressource	3		21	1
585	2021-04-18 17:39:58.98374+02	14	Indice	3		21	1
586	2021-04-18 17:39:58.98474+02	4	Jeu à campagne	3		21	1
587	2021-04-18 17:39:58.98674+02	11	Jeu de lettres	3		21	1
588	2021-04-18 17:39:58.98774+02	5	Jeu de rôle	3		21	1
589	2021-04-18 17:39:58.988738+02	8	Joueur Asynchrone	3		21	1
590	2021-04-18 17:39:58.989753+02	19	Pose d'Ouvrier	3		21	1
591	2021-04-18 17:39:58.99174+02	17	Pose de tuile	3		21	1
592	2021-04-18 17:39:58.992738+02	13	Quizz	3		21	1
593	2021-04-18 17:39:58.993769+02	7	Tower-defense	3		21	1
594	2021-04-18 17:44:55.74344+02	20	Construction	3		21	1
595	2021-04-18 17:46:34.680628+02	19	Commerce	3		16	1
596	2021-04-18 17:46:34.683628+02	1	Construction	3		16	1
597	2021-04-18 17:46:34.684641+02	48	Course	3		16	1
598	2021-04-18 17:46:34.685639+02	8	Deck-building	3		16	1
599	2021-04-18 17:46:34.686639+02	42	Dessin	3		16	1
600	2021-04-18 17:46:34.68764+02	33	Escape Games	3		16	1
601	2021-04-18 17:46:34.688627+02	4	Exploration de donjon	3		16	1
602	2021-04-18 17:46:34.689628+02	41	Frénétique	3		16	1
603	2021-04-18 17:46:34.690632+02	2	Gestion de ressource	3		16	1
604	2021-04-18 17:46:34.691641+02	38	Indice	3		16	1
605	2021-04-18 17:46:34.692611+02	5	Jeu à campagne	3		16	1
606	2021-04-18 17:46:34.693597+02	34	Jeu de lettres	3		16	1
607	2021-04-18 17:46:34.694596+02	7	Jeu de rôle	3		16	1
608	2021-04-18 17:46:34.696597+02	12	Joueur Asynchrone	3		16	1
609	2021-04-18 17:46:34.697599+02	49	Pose d'Ouvrier	3		16	1
610	2021-04-18 17:46:34.698597+02	43	Pose de tuile	3		16	1
611	2021-04-18 17:46:34.699597+02	36	Quizz	3		16	1
612	2021-04-18 17:46:34.700596+02	9	Tower-defense	3		16	1
613	2021-04-18 17:57:25.046534+02	37	7 wonders duel	2	[{"changed": {"fields": ["Nom anglais"]}}]	6	1
614	2021-04-18 18:04:38.559005+02	75	HARRY Potter Une année à Poudlard	2	[{"changed": {"fields": ["Nom anglais"]}}]	6	1
615	2021-04-18 18:07:09.166509+02	80	Harry Potter: Death Eaters Rising	2	[{"changed": {"fields": ["Nom", "Nom anglais"]}}]	6	1
616	2021-04-18 18:08:20.014763+02	64	Le Désert Interdit	2	[{"changed": {"fields": ["Nom anglais"]}}]	6	1
617	2021-05-10 09:45:59.087823+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
618	2021-05-10 14:08:41.484964+02	1	Pathfinder	2	[{"changed": {"fields": ["Nom de la police", "Color main", "Color 2nd", "Color 3rd", "Color 4th"]}}]	18	1
619	2021-05-10 14:10:00.205578+02	2	Marvel	2	[{"changed": {"fields": ["Nom de la police", "Color main", "Color 2nd", "Color 3rd", "Color 4th"]}}]	18	1
620	2021-05-10 14:10:06.779356+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
621	2021-05-10 14:35:30.958159+02	1	Pathfinder	2	[{"changed": {"fields": ["Color back"]}}]	18	1
622	2021-05-10 14:35:55.169457+02	2	Marvel	2	[{"changed": {"fields": ["Color back"]}}]	18	1
623	2021-05-10 14:39:45.865256+02	93	Joe Van Wetering	1	[{"added": {}}]	2	1
624	2021-05-10 14:41:03.154095+02	82	Harry Potter: Hogwarts Battle	1	[{"added": {}}]	6	1
625	2021-05-10 14:42:47.32067+02	94	Kami	1	[{"added": {}}]	2	1
626	2021-05-10 14:43:21.296231+02	19	Harry Potter: Hogwarts Battle – The Monster Box of Monsters Expansion	1	[{"added": {}}]	7	1
627	2021-05-10 14:43:40.447439+02	94	Kami Mandell	2	[{"changed": {"fields": ["Nom"]}}]	2	1
628	2021-05-10 14:46:27.005578+02	20	Harry Potter: Hogwarts Battle – The Charms and Potions Expansion	1	[{"added": {}}]	7	1
629	2021-05-10 14:48:17.588409+02	102	Tim Pinder	1	[{"added": {}}]	1	1
630	2021-05-10 14:48:44.095072+02	95	Zak Eidsvoog	1	[{"added": {}}]	2	1
631	2021-05-10 14:48:58.936459+02	96	Diana Franco Campos	1	[{"added": {}}]	2	1
632	2021-05-10 14:49:25.159431+02	52	Inside the Box Board Games LLP (ITB)	1	[{"added": {}}]	3	1
633	2021-05-10 14:50:34.532367+02	33	Spéléologie	1	[{"added": {}}]	20	1
634	2021-05-10 14:50:39.008574+02	83	Sub Terra	1	[{"added": {}}]	6	1
635	2021-05-10 14:53:24.442418+02	103	Chuck D. Yager	1	[{"added": {}}]	1	1
636	2021-05-10 14:53:52.196057+02	97	Chris Quilliams	1	[{"added": {}}]	2	1
637	2021-05-10 14:54:18.972412+02	98	Paul Kluka	1	[{"added": {}}]	2	1
638	2021-05-10 14:54:48.289341+02	99	Atha Kanaani	1	[{"added": {}}]	2	1
639	2021-05-10 14:55:03.562048+02	100	Fred Jordan	1	[{"added": {}}]	2	1
640	2021-05-10 14:55:23.052383+02	101	Philippe Guérin	1	[{"added": {}}]	2	1
641	2021-05-10 14:55:46.403841+02	53	Z-Man Games	1	[{"added": {}}]	3	1
642	2021-05-10 14:57:04.652956+02	34	Cthulhu	1	[{"added": {}}]	20	1
643	2021-05-10 14:57:09.152776+02	84	Le règne de CTHULHU	1	[{"added": {}}]	6	1
644	2021-05-10 14:58:37.545004+02	104	Oleksandr Nevskiy	1	[{"added": {}}]	1	1
645	2021-05-10 14:58:48.914746+02	105	Oleg Sidorenko	1	[{"added": {}}]	1	1
646	2021-05-10 14:59:16.314151+02	102	Igor Burlakov	1	[{"added": {}}]	2	1
647	2021-05-10 14:59:35.878589+02	103	Xavier Collette	1	[{"added": {}}]	2	1
648	2021-05-10 15:00:03.118602+02	104	Oleksandr Nevskiy	1	[{"added": {}}]	2	1
649	2021-05-10 15:00:13.137784+02	105	Oleg Sidorenko	1	[{"added": {}}]	2	1
650	2021-05-10 15:01:12.024437+02	35	fantôme	1	[{"added": {}}]	20	1
651	2021-05-10 15:01:31.314054+02	35	Fantôme	2	[{"changed": {"fields": ["Nom"]}}]	20	1
652	2021-05-10 15:03:48.968267+02	85	Mysterium	1	[{"added": {}}]	6	1
653	2021-05-10 15:05:40.722933+02	106	Manuel Rozoy	1	[{"added": {}}]	1	1
654	2021-05-10 15:05:49.890973+02	107	Peggy Chassenet	1	[{"added": {}}]	1	1
655	2021-05-10 15:06:04.737146+02	106	Pascal Quidault	1	[{"added": {}}]	2	1
656	2021-05-10 15:06:12.158801+02	107	David Lecossu	1	[{"added": {}}]	2	1
657	2021-05-10 15:06:21.480961+02	108	Ben Carre	1	[{"added": {}}]	2	1
658	2021-05-10 15:07:10.984383+02	36	Police Temporelle	1	[{"added": {}}]	20	1
659	2021-05-10 15:07:14.320667+02	86	T.I.M.E Stories	1	[{"added": {}}]	6	1
660	2021-05-10 15:09:17.669369+02	108	Przemysław Rymer	1	[{"added": {}}]	1	1
661	2021-05-10 15:09:27.52129+02	109	Jakub Łapot	1	[{"added": {}}]	1	1
662	2021-05-10 15:09:42.864373+02	110	Ignacy Trzewiczek	1	[{"added": {}}]	1	1
663	2021-05-10 15:10:13.683856+02	109	Rafał Szyma	1	[{"added": {}}]	2	1
664	2021-05-10 15:10:27.667386+02	110	Ewa Kostorz	1	[{"added": {}}]	2	1
665	2021-05-10 15:10:39.97328+02	111	Aga Jakimiec	1	[{"added": {}}]	2	1
666	2021-05-10 15:10:57.764609+02	54	Portal Games	1	[{"added": {}}]	3	1
667	2021-05-10 15:11:47.250693+02	37	Enquête	1	[{"added": {}}]	20	1
668	2021-05-10 15:11:49.540879+02	87	Détective: Un Jeu D'enquête Moderne	1	[{"added": {}}]	6	1
669	2021-05-10 15:13:22.837089+02	111	Jérôme Ropert	1	[{"added": {}}]	1	1
670	2021-05-10 15:13:30.553024+02	112	Gary Grady	1	[{"added": {}}]	2	1
671	2021-05-10 15:13:42.015726+02	112	Gary Grady	1	[{"added": {}}]	1	1
672	2021-05-10 15:13:51.219987+02	113	Suzanne Goldberg	1	[{"added": {}}]	1	1
673	2021-05-10 15:14:02.598275+02	113	Bernard Bittler	1	[{"added": {}}]	2	1
674	2021-05-10 15:14:55.792496+02	114	Neriac	1	[{"added": {}}]	2	1
675	2021-05-10 15:15:34.850914+02	88	Sherlock Holmes Consulting Detective: Jack the Ripper & West End Adventures	1	[{"added": {}}]	6	1
676	2021-05-10 15:16:40.399365+02	85	Mysterium	2	[{"changed": {"fields": ["URL de l'image"]}}]	6	1
677	2021-05-10 16:38:18.194124+02	1	Interface	2	[{"changed": {"fields": ["Personnaliser l'interface"]}}]	19	1
678	2021-05-11 12:34:24.705146+02	90	Catan	3		6	1
679	2021-05-11 14:20:45.054888+02	21	Catan: Cities & Knights	3		7	1
680	2021-05-11 22:37:25.994755+02	1	News object (1)	1	[{"added": {}}]	22	1
681	2021-05-11 22:56:31.28893+02	1	News object (1)	2	[{"changed": {"fields": ["Titre", "Url de vid\\u00e9o externe"]}}]	22	1
682	2021-05-11 23:02:59.617628+02	1	News object (1)	2	[{"changed": {"fields": ["Url de vid\\u00e9o externe"]}}]	22	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                   3554.dat                                                                                            0000600 0004000 0002000 00000000743 14047007276 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ludorecherche	designer
2	ludorecherche	artist
3	ludorecherche	publisher
4	ludorecherche	language
5	ludorecherche	playingmode
6	ludorecherche	game
8	admin	logentry
9	auth	permission
10	auth	group
11	auth	user
12	contenttypes	contenttype
13	sessions	session
15	ludorecherche	difficulty
16	ludorecherche	tag
7	ludorecherche	addon
17	ludorecherche	multiaddon
18	ludorecherche	theme
19	ludorecherche	background
20	ludorecherche	topic
21	ludorecherche	mechanism
22	ludoaccueil	news
\.


                             3601.dat                                                                                            0000600 0004000 0002000 00000011266 14047007276 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2021-04-03 15:51:10.08459+02
2	auth	0001_initial	2021-04-03 15:51:10.148596+02
3	admin	0001_initial	2021-04-03 15:51:10.221586+02
4	admin	0002_logentry_remove_auto_add	2021-04-03 15:51:10.239587+02
5	admin	0003_logentry_add_action_flag_choices	2021-04-03 15:51:10.246587+02
6	contenttypes	0002_remove_content_type_name	2021-04-03 15:51:10.262589+02
7	auth	0002_alter_permission_name_max_length	2021-04-03 15:51:10.27159+02
8	auth	0003_alter_user_email_max_length	2021-04-03 15:51:10.292626+02
9	auth	0004_alter_user_username_opts	2021-04-03 15:51:10.304586+02
10	auth	0005_alter_user_last_login_null	2021-04-03 15:51:10.311585+02
11	auth	0006_require_contenttypes_0002	2021-04-03 15:51:10.314588+02
12	auth	0007_alter_validators_add_error_messages	2021-04-03 15:51:10.321586+02
13	auth	0008_alter_user_username_max_length	2021-04-03 15:51:10.34453+02
14	auth	0009_alter_user_last_name_max_length	2021-04-03 15:51:10.353487+02
15	auth	0010_alter_group_name_max_length	2021-04-03 15:51:10.362489+02
16	auth	0011_update_proxy_permissions	2021-04-03 15:51:10.369689+02
17	auth	0012_alter_user_first_name_max_length	2021-04-03 15:51:10.378699+02
18	sessions	0001_initial	2021-04-03 15:51:10.390551+02
19	ludorecherche	0001_initial	2021-04-05 11:17:26.684304+02
20	ludorecherche	0002_auto_20210405_1453	2021-04-05 14:53:53.770021+02
21	ludorecherche	0003_auto_20210405_1530	2021-04-05 15:30:39.878963+02
22	ludorecherche	0004_auto_20210406_1142	2021-04-06 11:42:25.681135+02
23	ludorecherche	0005_auto_20210407_0947	2021-04-07 09:48:46.996146+02
24	ludorecherche	0006_auto_20210407_0948	2021-04-07 09:48:47.028255+02
25	ludorecherche	0007_auto_20210407_1026	2021-04-07 10:26:36.35283+02
26	ludorecherche	0008_add_on_language	2021-04-07 10:45:38.826597+02
27	ludorecherche	0009_auto_20210407_1055	2021-04-07 10:55:37.354852+02
28	ludorecherche	0010_auto_20210407_1057	2021-04-07 10:58:14.715381+02
29	ludorecherche	0011_auto_20210407_1057	2021-04-07 10:58:14.73738+02
30	ludorecherche	0012_auto_20210407_1123	2021-04-07 11:23:45.47275+02
31	ludorecherche	0013_auto_20210407_1123	2021-04-07 11:23:45.545747+02
32	ludorecherche	0014_delete_search_form	2021-04-07 13:57:04.326856+02
33	ludorecherche	0015_auto_20210407_1532	2021-04-07 15:32:39.6145+02
34	ludorecherche	0016_auto_20210407_1535	2021-04-07 15:35:38.838503+02
35	ludorecherche	0017_auto_20210407_1614	2021-04-07 16:14:33.673486+02
36	ludorecherche	0018_auto_20210408_1434	2021-04-08 14:35:06.355259+02
37	ludorecherche	0018_multi_add_on	2021-04-08 16:02:58.575728+02
38	ludorecherche	0019_auto_20210408_1559	2021-04-08 16:02:58.654764+02
39	ludorecherche	0020_auto_20210409_0952	2021-04-09 09:53:09.342044+02
40	ludorecherche	0021_auto_20210409_1030	2021-04-09 10:30:41.730034+02
41	ludorecherche	0022_auto_20210410_2152	2021-04-10 21:52:36.590088+02
42	ludorecherche	0023_auto_20210411_1113	2021-04-11 11:13:30.26936+02
43	ludorecherche	0024_auto_20210416_1549	2021-04-16 15:57:42.343067+02
44	ludorecherche	0025_auto_20210416_1555	2021-04-16 15:57:42.561965+02
45	ludorecherche	0026_auto_20210416_1557	2021-04-16 15:57:42.902964+02
46	ludorecherche	0027_background_theme	2021-04-16 19:26:27.66108+02
47	ludorecherche	0028_theme_name	2021-04-16 19:31:00.556724+02
48	ludorecherche	0029_auto_20210416_1934	2021-04-16 19:34:45.358107+02
49	ludorecherche	0030_auto_20210417_1133	2021-04-17 11:33:58.080427+02
50	ludorecherche	0031_auto_20210417_1139	2021-04-17 11:39:33.72723+02
51	ludorecherche	0032_auto_20210417_1142	2021-04-17 11:42:06.763342+02
52	ludorecherche	0033_auto_20210417_1155	2021-04-17 11:55:18.786505+02
53	ludorecherche	0034_auto_20210417_1156	2021-04-17 11:56:18.786592+02
54	ludorecherche	0035_auto_20210417_1516	2021-04-17 15:16:32.136693+02
55	ludorecherche	0036_theme_empty_query_image	2021-04-17 15:18:38.835834+02
56	ludorecherche	0037_auto_20210417_1618	2021-04-17 16:18:18.927713+02
57	ludorecherche	0038_auto_20210418_1215	2021-04-18 12:15:16.113439+02
58	ludorecherche	0039_auto_20210418_1218	2021-04-18 12:18:58.62225+02
59	ludorecherche	0040_auto_20210418_1226	2021-04-18 12:26:40.992387+02
60	ludorecherche	0041_auto_20210418_1637	2021-04-18 16:37:51.035578+02
61	ludorecherche	0042_theme_color_back	2021-05-10 14:32:29.835449+02
62	ludorecherche	0043_auto_20210511_1205	2021-05-11 12:06:06.997979+02
63	ludorecherche	0044_auto_20210511_1216	2021-05-11 12:16:27.139327+02
64	ludorecherche	0045_auto_20210511_1414	2021-05-11 14:14:42.605972+02
65	ludoaccueil	0001_initial	2021-05-11 21:17:48.956244+02
66	ludoaccueil	0002_auto_20210511_2214	2021-05-11 22:14:32.630061+02
67	ludoaccueil	0003_news_created_at	2021-05-11 22:31:01.125943+02
68	ludoaccueil	0004_auto_20210511_2251	2021-05-11 22:51:09.791434+02
69	ludoaccueil	0005_auto_20210511_2255	2021-05-11 22:55:45.287661+02
\.


                                                                                                                                                                                                                                                                                                                                          3569.dat                                                                                            0000600 0004000 0002000 00000002653 14047007276 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        bgtxe95byiyw342hva1hdqotpri6qyuq	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lTLaH:XVD922rRWZz0dBj-3yeMQV5989sKSsj2sCYl-OVhhOA	2021-04-19 11:31:49.645542+02
aj17pwr5re3bl3xlb5r1haxds7c0akd1	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lU3Jf:9J3Yq_FZmHaTs4fTbbbXOXZpgcqJ6D-6OzFqtmXcu8A	2021-04-21 10:13:35.36379+02
6wzbimeiaeyqz9qvcz2hccw72ya2kzwx	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lg0bs:CUIg6K5Fvda-9PJTtLX41yhpl4t2v8V9Y25aVwNrCaM	2021-05-24 09:45:48.370111+02
8tidt2gx9ad8fdia66xo381m6wuonb59	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lgoDB:ZKN7l30lcf-rgsLr3FXSVGBI-T7p4O0duenAuKco1L8	2021-05-26 14:43:37.704+02
vjbeok3d0tbgygz14sn8stmupc5wj50c	.eJxVjE0OgyAYBe_CuiGAKNBl956BfH9U20YT0VXTuzckLtrtm5n3VhmOfcpHlS3PrK7KqsvvhkBPWRrgByz3VdO67NuMuin6pFWPK8vrdrp_BxPUqdV-gGgKU1cgiUER65GSMDh2A1lje0_BsHMxoQ8BkQxTiIUoJNd36vMFETI4uA:1lgrCz:6vUBqkflBUSuc-2ZJb83AByyutyf4UG-qUAWqomveaQ	2021-05-26 17:55:37.560615+02
\.


                                                                                     3633.dat                                                                                            0000600 0004000 0002000 00000002366 14047007276 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	\N	\N	\N	https://www.youtube.com/embed/b5KK0pB8vy0	TORTUGA 2199, DES PIRATES OUI, MAIS DANS L’ESPACE\r\nLes deck-buildings, c’est un peu mon péché mignon. Clairement, c’est l’une de mes mécaniques préférées. Il faut dire qu’en plus de leur intérêt ludique propre, ils proposent souvent des thèmes forts et ça, ça me plaît bien. Mais parmi eux, ceux qui me plaisent le plus sont ceux où l’on va avoir un plateau avec lequel interagir, comme Trains ou Tyrants of the Underdark (qui arrive en septembre en VF !) par exemple. Ils se font néanmoins assez rares. Autant dire que si j’en vois passer un, paf je ne rate pas l’occasion ! Et pas de chances pour vous, quand je joue, j’écris.\r\n\r\nOn va donc parler aujourd’hui de Tortuga 2199 (de Michael Loyko et Denis Plastinin, illustré par Andrew Mironov). Il s’agit d’un jeu dans lequel vous incarnez des pirates, mais de l’espace, où il faudra devenir le roi des pirates. Bon, en termes de thème, on a peut-être vu plus original, mais si celui-ci est bien exploité, pourquoi pas. Je vous avais fait un retour à chaud sur ce jeu lors du Cannes Canapé, et j’ai depuis fait une partie de plus. Développons un peu tout ça.	\N	2021-05-11 22:37:25.991751+02	Test	\N	\N
\.


                                                                                                                                                                                                                                                                          3571.dat                                                                                            0000600 0004000 0002000 00000012232 14047007276 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        11	Sentinels Of The Multiverse: Rook City	2	5	30 min	2	2021-04-10 18:07:45.994893+02	somrc.jpg	https://boardgamegeek.com/boardgame/110242/sentinels-multiverse-rook-city	18	2	13	Sentinels Of The Multiverse: Rook City	\N	1			\N
12	Sentinels Of The Multiverse: Wrath of the Cosmos	2	5	60 min	2	2021-04-10 18:09:41.921004+02	somwotc.jpg	https://boardgamegeek.com/boardgame/154828/sentinels-multiverse-wrath-cosmos	18	2	13	Sentinels Of The Multiverse: Wrath of the Cosmos	\N	1			\N
13	Sentinels Of The Multiverse:infernal relics	2	5	30 min	2	2021-04-10 18:11:52.602503+02	somir.jpg	https://boardgamegeek.com/boardgame/123726/sentinels-multiverse-infernal-relics	18	2	13	Sentinels Of The Multiverse:infernal relics	\N	1			\N
10	Sentinels Of The Multiverse: Shattered Timelines	2	5	60 min	2	2021-04-10 18:05:28.008977+02	somst.jpg	https://boardgamegeek.com/boardgame/132959/sentinels-multiverse-shattered-timelines	18	2	13	Sentinels Of The Multiverse: Shattered Timelines	\N	1			\N
15	Sentinel Tactics: Uprising	2	8	30 à 60 min	2	2021-04-11 11:26:54.790118+02	stu.png	https://boardgamegeek.com/boardgame/158326/sentinel-tactics-uprising	31	2	13	Sentinel Tactics: Uprising	\N	1			\N
16	Descent: l'autel du désespoir	2	5	120 à 240 min	2	2021-04-11 11:40:51.623757+02	pic198780.jpg	https://boardgamegeek.com/boardgame/24976/descent-altar-despair	33	1	12	Descent: l'autel du désespoir	\N	1			\N
17	Descent: héros de légende	2	5	120 à 240 min	2	2021-04-11 11:43:35.256855+02	pic316503.jpg	https://boardgamegeek.com/boardgame/29298/descent-road-legend	33	1	12	Descent: héros de légende	\N	1			\N
18	Loony Quest: The Lost City	2	5	20 min	1	2021-04-13 15:58:45.13385+02	pic3564166.jpg	https://boardgamegeek.com/boardgame/191302/loony-quest-lost-city	73	1	8	Loony Quest: The Lost City	\N	1			\N
14	Sentinels Of The Multiverse:Villain of the Multiverse	2	5	60 min	2	2021-04-10 18:13:55.626422+02	somvom.jpg	https://boardgamegeek.com/boardgame/171965/sentinels-multiverse-villains-multiverse	18	2	13	Sentinels Of The Multiverse:Villain of the Multiverse	\N	1			\N
2	Minivilles: 5-6 Extension	2	6	30 min	1	2021-04-07 15:47:14.960336+02	minivillesext56.jpg	https://boardgamegeek.com/boardgame/185279/minivilles-5-6-extension	7	1	\N	Minivilles: 5-6 Extension	\N	1			\N
3	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	1	6	90 min	2	2021-04-08 13:58:14.69509+02	pf_ljc_sands_be.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-skull-shackles-boite-d-extensions	10	1	\N	Pathfinder le jeu de cartes: skull and shackles boite d'extensions	\N	1			\N
4	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes boite d'extension	1	6	90 min	2	2021-04-08 14:15:19.227054+02	pf_ljdc_edsdr_be.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-jeu-de-cartes-l-eveil-des-seigneurs-des-runes-jeu-de-base-1	11	1	\N	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes boite d'extension	\N	1			\N
5	Pathfinder adventure card game: mummy's mask extension set	1	6	90 min	2	2021-04-09 17:47:26.415016+02	pfacgmm.jpg	https://boardgamegeek.com/boardgame/187687/pathfinder-adventure-card-game-mummys-mask-base-se	13	2	14	Pathfinder adventure card game: mummy's mask extension set	\N	1			\N
6	Pathfinder adventure card game: curse of the crimson throne	1	6	90 min	2	2021-04-09 17:56:32.693793+02	pfacgcotct.jpg	https://boardgamegeek.com/boardgame/271061/pathfinder-adventure-card-game-curse-crimson-thron	14	2	13	Pathfinder adventure card game: curse of the crimson throne	\N	1			\N
7	Legendary: a Marvel Deck Building Game - Civil War	1	5	30 à 60 min	2	2021-04-10 15:51:39.098477+02	legendary_civil_war.jpg	https://boardgamegeek.com/boardgame/193513/legendary-marvel-deck-building-game-civil-war	17	2	14	Legendary: a Marvel Deck Building Game - Civil War	\N	1			\N
8	Sentinels Of The Multiverse: OblivAeon	2	5	30 à 60 min	2	2021-04-10 15:59:54.563609+02	somobli.jpg	https://boardgamegeek.com/boardgameexpansion/192926/sentinels-multiverse-oblivaeon	18	2	13	Sentinels Of The Multiverse: OblivAeon	\N	1			\N
9	Sentinels Of The Multiverse: Vengeance	2	5	45 min	2	2021-04-10 18:02:34.828359+02	somv.jpg	https://boardgamegeek.com/boardgame/134398/sentinels-multiverse-vengeance	18	2	13	Sentinels Of The Multiverse: Vengeance	\N	1			\N
19	Harry Potter: Hogwarts Battle – The Monster Box of Monsters Expansion	2	4	30 à 60 min	1	2021-05-10 14:43:21.275235+02	pic3626222.jpg	https://boardgamegeek.com/boardgame/223494/harry-potter-hogwarts-battle-monster-box-monsters	82	2	11	Harry Potter: Hogwarts Battle – The Monster Box of Monsters Expansion	\N	1			\N
20	Harry Potter: Hogwarts Battle – The Charms and Potions Expansion	2	5	30 à 60 min	1	2021-05-10 14:46:26.994573+02	pic5674009.jpg	https://boardgamegeek.com/boardgame/304297/harry-potter-hogwarts-battle-charms-and-potions-ex	82	2	11	Harry Potter: Hogwarts Battle – The Charms and Potions Expansion	\N	1			\N
22	Catan: Cities & Knights	3	4	\N	\N	2021-05-11 14:21:47.920574+02	\N	https://www.boardgameatlas.com/game/E5TYKwLTf0/catan-cities-and-knights-expansion	\N	\N	10	Catan: Cities & Knights	\N	1	https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257359245-51DYsPZcYyL.jpg	https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257359245-51DYsPZcYyL.jpg	90
\.


                                                                                                                                                                                                                                                                                                                                                                      3587.dat                                                                                            0000600 0004000 0002000 00000000464 14047007276 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	13
3	3	15
4	4	16
5	4	17
6	5	18
7	6	19
8	7	24
9	7	23
10	8	25
11	9	25
12	10	25
13	11	25
14	12	25
15	13	25
16	14	25
17	15	25
18	16	42
19	16	44
20	16	45
21	16	46
23	17	44
24	17	45
25	17	42
26	18	58
27	18	87
28	19	94
29	20	94
38	22	124
39	22	125
40	22	127
41	22	79
42	22	40
43	22	138
44	22	131
45	22	132
\.


                                                                                                                                                                                                            3589.dat                                                                                            0000600 0004000 0002000 00000000620 14047007276 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	6
3	3	7
4	4	7
5	5	7
6	6	7
7	6	8
8	6	9
9	6	10
10	6	11
11	7	18
12	8	19
13	8	20
14	8	21
15	9	19
16	9	20
17	9	21
18	10	19
19	10	20
20	10	21
21	10	22
22	10	23
23	11	19
24	11	20
25	11	21
26	12	19
27	12	20
28	12	21
29	13	24
30	13	19
31	13	20
32	13	21
33	14	19
34	14	20
35	14	21
36	15	43
37	15	19
38	15	44
39	16	46
40	17	46
41	17	47
42	18	88
43	18	87
44	19	98
45	19	100
46	20	98
47	20	100
49	22	116
\.


                                                                                                                3597.dat                                                                                            0000600 0004000 0002000 00000000270 14047007276 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	2	4
3	3	1
4	3	3
5	4	1
6	4	3
7	5	1
8	5	3
9	6	1
10	6	3
11	7	1
12	7	2
13	8	3
14	9	3
15	10	3
16	11	3
17	12	3
18	13	3
19	14	3
20	15	2
21	15	4
22	16	5
23	17	5
24	18	4
25	19	3
26	20	3
\.


                                                                                                                                                                                                                                                                                                                                        3591.dat                                                                                            0000600 0004000 0002000 00000000314 14047007276 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	2	1
4	2	5
5	3	6
6	3	7
7	4	6
8	4	7
9	5	6
10	6	6
11	7	14
12	8	15
13	9	15
14	10	15
15	11	15
16	12	15
17	13	15
18	14	15
19	15	15
20	16	11
21	16	12
22	17	11
23	17	12
24	18	27
25	19	51
26	20	51
28	22	57
\.


                                                                                                                                                                                                                                                                                                                    3573.dat                                                                                            0000600 0004000 0002000 00000004422 14047007276 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Bernard Skopnik
2	Randy Delven
3	Vito Guesualdi
4	Antonis Papantoniou
5	Francois Bruel
6	Guillaume Ducos
7	Giuseppe Severino
8	Arthur Bozonnet
9	Bertrand Daine
10	Arthur Loyen
11	Vianney Carvalho
12	Amandine Bastin
13	Noboru Hotta
14	Daryl Mandryk
15	Wayne Reynolds
16	Noah Bradley
17	Vincent Dutrait
18	Tyler Jacobson
19	Setiawan Lie
20	Jean-François Gauthier
21	Chris Beck
22	Evan Simonet
23	Krista Timberlake
24	Brian Bateman
25	Adam Rebottaro
26	Daarken
27	Tim AmeyO'Neil
28	Jakub Rozalski
29	Mick Uhl
30	Jean Baher
31	Dominique Ehrhard
32	Martin Abel
34	Mio Del Rosario
36	Steve Swenston
37	Alexandr Elichev
38	Alvaro Nebot
39	Josh T. McDowell
40	Michael Menzel
41	Diego Gisbert Llorens
43	Hub
44	John Goodenough
45	Frank Walls
46	Rafał Hrynkiewicz
42	Jesper Ejsing
35	Moy Shin Hung
47	Piotr Foksowicz
48	Mateusz Bielski
49	Piotr Cieśliński
50	Andy Brase
51	Massimiliano Bertolini
52	Marjorie Davis
53	Ralph Horsley
54	Miguel Coimbra
55	Richard Wright
56	Nicolas Fructus
57	Karl Kopinski
58	Paul Mafayon
59	Chih-Fan Chen
60	Gérard Mathieu
61	Delphine Ribeyre
62	Sergo
63	Pierre Santamaria
64	Florian de Gesincourt
65	Mahulda Jelly
66	Arnaud Demaegd
67	Legruth
68	Martin Mottet
69	Amélie Guinet
70	Tomas Kucerovsky
71	Stéphane Gantiez
72	Stéphane Escapa
73	Charlène Le Scanff
74	Tyler Edlin
75	C. B. Canga
76	Natalia Kordowska
77	Bartłomiej Kordowski
78	Cyril Bouquet
79	Harald Lieske
80	Mia Steingräber
81	Markus Schmuck
82	Peter Wocken
83	Emmanuel Roudier
84	Gabriel Butik
85	Romain Gaschet
86	Jonathan Silvestre
87	Mathieu Leyssenne
88	Ronan Le Maître
89	Irina Pechenkina
90	Jean-Baptiste Reynaud
91	Xavier Gueniffey Durin
92	Delaney Mamer
93	Joe Van Wetering
94	Kami Mandell
95	Zak Eidsvoog
96	Diana Franco Campos
97	Chris Quilliams
98	Paul Kluka
99	Atha Kanaani
100	Fred Jordan
101	Philippe Guérin
102	Igor Burlakov
103	Xavier Collette
104	Oleksandr Nevskiy
105	Oleg Sidorenko
106	Pascal Quidault
107	David Lecossu
108	Ben Carre
109	Rafał Szyma
110	Ewa Kostorz
111	Aga Jakimiec
112	Gary Grady
113	Bernard Bittler
114	Neriac
129	Marion Pott
130	Matt Schwabel
131	Franz Vohwinkel
132	Stephen Graham Walsh
124	Volkan Baga
125	Tanja Donner
126	Pete Fenlon
127	Jason Hawkins
128	Michaela Kienle
133	Timur Baskakov
134	Design Edge
135	Bill Herrin
136	Gatis Sluka
137	Studio Tapiro
138	Klaus Teuber
\.


                                                                                                                                                                                                                                              3623.dat                                                                                            0000600 0004000 0002000 00000000023 14047007276 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Interface	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3575.dat                                                                                            0000600 0004000 0002000 00000004025 14047007276 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Reiner Knizia
2	Darwin Kastle
3	Robert Dougherty
4	Holger Bösch
5	Nicolas Smeers
6	Masao Suganuma
7	Mike Selinker
8	Chad Brown
9	Keith Richmond
10	Aviva Schecterson
11	Liz Spain
12	Paul Peterson
13	Tanis O'Conor
14	Jean-François Gauthier
15	Michael Boggs
16	Nate French
17	Caleb Grace
18	Devin Low
19	Christopher Badell
20	Paul Bender
21	Adam Rebottaro
22	Alex Franklin
23	Bryan Graham
24	Richard Launius
25	John Goodenough
26	Jeff Tidball
27	Jamey Stegmaier
28	Future Pastimes
29	Dominique Ehrhard
30	Colby Dauch
31	J.Arthur Ellis
32	Andrea Mezzotero
33	Corey Konieczka
34	Greg Stafford
35	Isaac Childres
36	Gerhard Hecht
37	Justin Kemppainen
38	Adam Sadler
39	Brady Sadler
40	Bill Slavicsek
41	Mike Mearls
42	Peter Lee
43	Kevin G. Nunn
44	Luther Bell Hendricks V
45	Frédérick Condette
46	Kevin Wilson
47	Robert A. Kouba
48	Michał Oracz
49	Martin Wallace
50	Darrell Hardy
51	Robert Harris
52	Bruno Cathala
53	Antoine Bauza
54	Eric M. Lang
55	Prospero Hall
56	Claude Lucchini
57	Jesse Li
58	Mark Latham
59	Gustavo Adolfo Cuadrado
60	Paul J. Gruen
61	Bruno Faidutti
62	Albert Lamorisse
63	Michael I. Levin
64	Bill Markham
65	Reuben Klamer
66	Nicolas Bonnefoy
67	Arnaud Ladagnous
68	Fabrice Mazza
69	Sébastien Pauchon
70	Billy Stevenson
71	Thomas Cauët
72	Arch Stanton
73	Lewis Cheshire
74	Cyril Demaegd
75	Jeff Bazarko
76	Mordecai Meirowitz
77	Scott Abbot
78	Chris Haney
79	Vlaada Chvátil
80	Klaus-Jürgen Wrede
81	Julien Prothière
82	Florent Toscano
83	Frédéric Vuagnat
84	Matt Leacock
85	Dávid Turczi
86	Vangelis Bagiartakis
87	David Franck
88	Laurent Escoffier
89	Rüdiger Dorn
90	Daryl Andrews
91	Adrian Adamescu
92	Francis Pacherie
93	Richard Garfield
94	Ken Gruhl
95	Jonathan Algaze
96	Nick Hayes
97	Malcolm Braff
98	Kami Mandell
99	Nate Heiss
100	Andrew Wolf
101	Patrick Marino
102	Tim Pinder
103	Chuck D. Yager
104	Oleksandr Nevskiy
105	Oleg Sidorenko
106	Manuel Rozoy
107	Peggy Chassenet
108	Przemysław Rymer
109	Jakub Łapot
110	Ignacy Trzewiczek
111	Jérôme Ropert
112	Gary Grady
113	Suzanne Goldberg
116	Klaus Teuber
117	Wolfgang Kramer
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3603.dat                                                                                            0000600 0004000 0002000 00000000046 14047007276 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Famille
2	vétéran
3	complexe
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3579.dat                                                                                            0000600 0004000 0002000 00000036673 14047007276 0014307 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        82	Harry Potter: Hogwarts Battle	2	4	30 à 60 min	1	2021-05-10 14:41:03.10343+02	pic3518231.jpg	https://boardgamegeek.com/boardgame/199042/harry-potter-hogwarts-battle	f	60	11	2	Harry Potter: Hogwarts Battle	\N	1		
86	T.I.M.E Stories	2	4	90 min	1	2021-05-10 15:07:14.299666+02	pic2617634.png	https://boardgamegeek.com/boardgame/146508/time-stories/ratings	f	90	12	1	T.I.M.E Stories	\N	1		
92	Catan	3	4	\N	\N	2021-05-12 11:33:20.990387+02	\N	https://www.boardgameatlas.com/game/OIXt3DmJU0/catan	f	90	10	\N	Catan	\N	1	https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg	https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559258096678-51Eiofu9mqL.jpg
13	Pathfinder adventure card game: mummy's mask	1	4	90 min	2	2021-04-09 17:44:36.509927+02	pfacgmm.jpg	https://boardgamegeek.com/boardgame/187687/pathfinder-adventure-card-game-mummys-mask-base-se	f	90	14	2	Pathfinder adventure card game: mummy's mask	\N	1		
37	7 wonders duel	2	2	30 min	2	2021-04-11 12:13:51.757007+02	pic3376065.jpg	https://boardgamegeek.com/boardgame/173346/7-wonders-duel	f	30	10	1	7 wonders duel	\N	1		
83	Sub Terra	1	6	60 min	1	2021-05-10 14:50:38.983572+02	pic3904427.png	https://boardgamegeek.com/boardgame/204472/sub-terra/credits	f	60	10	1	Sub Terra	\N	1		
87	Détective: Un Jeu D'enquête Moderne	1	5	120 à 180 min	1	2021-05-10 15:11:49.520421+02	pic5756205.jpg	https://boardgamegeek.com/boardgame/223321/detective-modern-crime-board-game	f	180	16	1	Detective: A Modern Crime Board Game	\N	1		
55	Backgammon	2	2	30 min	2	2021-04-11 16:09:46.266198+02	pic1361122.jpg	https://boardgamegeek.com/boardgame/2397/backgammon	f	30	8	\N	Backgammon	\N	1		
56	Dames Chinoises	2	6	30 min	1	2021-04-11 16:11:09.092682+02	pic113974.jpg	https://boardgamegeek.com/boardgame/2386/chinese-checkers	f	30	7	\N	Dames Chinoises	\N	1		
38	Le Parrain: L'empire De Corleone	2	5	60 à 90 min	3	2021-04-11 12:17:06.981739+02	pic3364797.jpg	https://boardgamegeek.com/boardgame/195539/godfather-corleones-empire	f	90	14	1	Le Parrain: L'empire De Corleone	\N	1		
17	Legendary: a Marvel Deck Building Game	1	5	30 à 60 min	2	2021-04-10 15:47:38.596799+02	legendary.jpg	https://boardgamegeek.com/boardgame/129437/legendary-marvel-deck-building-game	f	60	14	2	Legendary: a Marvel Deck Building Game	\N	1		
14	Pathfinder adventure card game: core set	1	4	90 min	2	2021-04-09 17:53:08.569365+02	pfacgcs.jpg	https://boardgamegeek.com/boardgame/271060/pathfinder-adventure-card-game-core-set	f	90	13	2	Pathfinder adventure card game: core set	\N	1		
11	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	1	4	90 min	2	2021-04-08 14:10:42.256444+02	pf_ljdc_edsdr.jpg	https://boardgamegeek.com/boardgame/133038/pathfinder-adventure-card-game-rise-runelords-base	f	90	14	1	Pathfinder le jeu de cartes: l'éveil des seigneurs des runes	\N	1		
10	Pathfinder le jeu de cartes: skull and shackles	1	4	90 min	2	2021-04-08 13:42:18.320671+02	pf_ljc_sands.jpg	https://boardgamegeek.com/image/2268287/pathfinder-adventure-card-game-skull-shackles-base	f	90	14	1	Pathfinder le jeu de cartes: skull and shackles	\N	1		
18	Sentinels Of The Multiverse	2	5	30 à 60 min	2	2021-04-10 15:57:28.45478+02	som.jpg	https://boardgamegeek.com/boardgame/102652/sentinels-multiverse	f	60	13	2	Sentinels Of The Multiverse	\N	1		
50	Unlock!:secret Adventures	1	6	60 min	2	2021-04-11 15:58:12.803851+02	pic3945063.jpg	https://boardgamegeek.com/boardgame/239307/unlock-secret-adventures	f	60	10	1	Unlock!:secret Adventures	\N	1		
64	Le Désert Interdit	2	5	45 min	1	2021-04-11 16:34:00.177101+02	pic1528722.jpg	https://boardgamegeek.com/boardgame/136063/forbidden-desert	f	45	10	1	Forbidden Desert	\N	1		
84	Le règne de CTHULHU	2	4	40 min	1	2021-05-10 14:57:09.13077+02	pic2866737.png	https://boardgamegeek.com/boardgame/192153/pandemic-reign-cthulhu	f	40	14	1	Pandemic: Reign of Cthulhu	\N	1		
23	Crystal Clans	2	2	30 à 60 min	2	2021-04-10 18:46:24.653054+02	crystalclan.jpg	https://boardgamegeek.com/boardgame/228133/crystal-clans	f	60	14	1	Crystal Clans	\N	1		
40	Otys	2	4	60 min	3	2021-04-11 12:23:00.090275+02	pic3668630.jpg	https://boardgamegeek.com/boardgame/222542/otys	f	60	14	1	Otys	\N	1		
25	La guerre des héros	2	2	120 min	3	2021-04-10 18:55:14.358008+02	lgdh.jpg	https://www.trictrac.net/jeu-de-societe/la-guerre-des-heros	f	120	14	1	La guerre des héros	\N	1		
30	Dungeons & Dragons: Wrath of Ashardalon Board Game	1	5	60 min	2	2021-04-10 19:17:13.366016+02	ddwoa.jpg	https://boardgamegeek.com/boardgame/66356/dungeons-dragons-wrath-ashardalon-board-game	f	60	12	2	Dungeons & Dragons: Wrath of Ashardalon Board Game	\N	1		
33	Descent: Voyage dans les ténèbres	2	5	120 à 240 min	2	2021-04-11 11:36:28.164947+02	pic249300.jpg	https://boardgamegeek.com/boardgame/17226/descent-journeys-dark	f	240	13	1	Descent: Voyage dans les ténèbres	\N	1		
32	Okko Chronicles: Cycle of Water – Quest into Darkness	2	5	120 min	3	2021-04-11 11:30:53.057215+02	octcof.jpg	https://boardgamegeek.com/boardgame/228399/okko-chronicles-cycle-water-quest-darkness	f	120	14	1	Okko Chronicles: Cycle of Water – Quest into Darkness	\N	1		
36	Talisman	2	6	90 min	1	2021-04-11 12:11:16.68628+02	pic332870.jpg	https://boardgamegeek.com/boardgame/27627/talisman-revised-4th-edition	f	90	13	1	Talisman	\N	1		
15	Goblivion	1	2	30 min	1	2021-04-10 15:29:36.78011+02	goblivion.png	https://boardgamegeek.com/boardgame/243538/goblivion	f	\N	12	1	Goblivion	\N	1		
27	Andor: Chada et Thorn	2	2	45 min	2	2021-04-10 19:04:09.022687+02	andorct.png	https://www.trictrac.net/jeu-de-societe/andor-chada-thorn	f	45	14	1	Andor: Chada et Thorn	\N	1		
39	Disney Villainous	2	6	50 min	2	2021-04-11 12:20:13.276224+02	pic4216110.jpg	https://boardgamegeek.com/boardgame/256382/disney-villainous	f	50	10	1	Disney Villainous	\N	1		
16	Marvel Champions Le jeu de cartes	1	4	45 à 90 min	2	2021-04-10 15:41:50.663744+02	mctcc.jpg	https://boardgamegeek.com/boardgame/285774/marvel-champions-card-game	f	90	14	1	Marvel Champions Le jeu de cartes	\N	1		
42	Harry Potter Miniatures Adventure Game	2	6	30 à 90 min	2	2021-04-11 12:27:51.989594+02	pic4403592.jpg	https://boardgamegeek.com/boardgame/246744/harry-potter-miniatures-adventure-game	f	90	12	1	Harry Potter Miniatures Adventure Game	\N	1		
7	Minivilles	2	4	30 min	1	2021-04-07 15:45:19.506514+02	minivilles.png	https://boardgamegeek.com/boardgame/143884/machi-koro	f	30	7	1	Minivilles	\N	1		
48	L'ascenceur Infernal	2	6	60 min	2	2021-04-11 15:51:26.106432+02	escape-game-l-ascenseur-infernal.jpg		f	60	14	1	L'ascenceur Infernal	\N	1		
24	Runewars	2	4	180 à 240 min	3	2021-04-10 18:50:45.673069+02	runewars.jpg	https://boardgamegeek.com/boardgame/59294/runewars	f	240	14	1	Runewars	\N	1		
41	Ponzi Scheme	3	5	90 min	3	2021-04-11 12:25:08.500815+02	pic5100985.jpg	https://boardgamegeek.com/boardgame/180899/ponzi-scheme	f	90	12	1	Ponzi Scheme	\N	1		
44	Monopoly: Star Wars Limited Collector's Edition	2	8	60 min	1	2021-04-11 15:37:57.401919+02	pic12726.jpg	https://boardgamegeek.com/boardgame/26696/monopoly-star-wars-limited-collectors-edition	f	60	8	1	Monopoly: Star Wars Limited Collector's Edition	\N	1		
58	Trivial pursuit: Histoire de France	2	6	30 à 60 min	1	2021-04-11 16:17:43.568435+02	93aff744fcb9fb7a6e872948c6333dabc49f.jpeg	https://www.trictrac.net/jeu-de-societe/trivial-pursuit-histoire-de-france-0	f	90	15	1	Trivial pursuit: Histoire de France	\N	1		
46	Risk: La conquête du monde	2	6	120 min	1	2021-04-11 15:44:56.783594+02	pic5244709.jpg	https://boardgamegeek.com/boardgame/181/risk	f	120	10	1	Risk: La conquête du monde	\N	1		
29	Dungeons & Dragons: Castle Ravenloft Board Game	1	5	60 min	2	2021-04-10 19:14:55.407251+02	ddcr.jpg	https://boardgamegeek.com/boardgame/59946/dungeons-dragons-castle-ravenloft-board-game	f	60	12	2	Dungeons & Dragons: Castle Ravenloft Board Game	\N	1		
34	Neuroshima Hex!	1	4	30 min	2	2021-04-11 12:04:36.403965+02	pic263013.jpg	https://boardgamegeek.com/boardgame/21241/neuroshima-hex-30	f	30	10	1	Neuroshima Hex!	\N	1		
20	Scythe	1	5	90 à 115 min	3	2021-04-10 18:31:15.856768+02	scythe.jpg	https://boardgamegeek.com/boardgame/169786/scythe	f	115	14	1	Scythe	\N	1		
21	Dune	3	6	180 min	3	2021-04-10 18:36:39.479649+02	dune.jpg	https://www.trictrac.net/jeu-de-societe/dune	f	180	14	1	Dune	\N	1		
35	Runebound	2	6	120 à 240 min	2	2021-04-11 12:07:48.959813+02	pic178189.jpg	https://boardgamegeek.com/boardgame/21523/runebound-second-edition	f	240	12	1	Runebound	\N	1		
22	Méditerranée	2	4	120 min	2	2021-04-10 18:42:23.128493+02	med.jpg	https://www.trictrac.net/jeu-de-societe/mediterranee	f	120	12	1	Méditerranée	\N	1		
49	Unlock!:mystery Adventures	1	6	60 min	2	2021-04-11 15:55:21.973211+02	pic3588255.jpg	https://boardgamegeek.com/boardgame/228867/unlock-mystery-adventures	f	60	10	1	Unlock!:mystery Adventures	\N	1		
47	Destins	2	6	60 min	1	2021-04-11 15:47:39.770367+02	pic710742.jpg	https://boardgamegeek.com/boardgame/2921/game-of-life	f	60	8	1	Destins	\N	1		
43	La bonne Paye	2	6	30 min	1	2021-04-11 15:35:12.625281+02	0b342fbc7eda5033f5a99fa650e512d73548.jpg	https://www.trictrac.net/jeu-de-societe/la-bonne-paye-les-bons-voyages	f	30	8	1	La bonne Paye	\N	1		
59	Trivial pursuit: Édition Famille	2	6	30 à 60 min	1	2021-04-11 16:19:59.672838+02	3ed7e5772be7882798dc5aab3e2f66337ff4.jpeg	https://www.trictrac.net/jeu-de-societe/trivial-pursuit-edition-famille	f	60	10	1	Trivial pursuit: Édition Famille	\N	1		
60	Code Names XXL	2	8	15 min	1	2021-04-11 16:23:35.375668+02	6a43f48ceaa4d9fafb0dbe7abe228c526ad77af8bf389d7fe9d79456f482.jpeg	https://www.trictrac.net/jeu-de-societe/codenames-xxl	f	15	12	1	Code Names XXL	\N	1		
45	La vallée des mammouths	3	6	180 min	1	2021-04-11 15:41:18.226754+02	pic4032737.jpg	https://boardgamegeek.com/boardgame/2535/valley-mammoths	f	180	12	1	La vallée des mammouths	\N	1		
62	[kosmopoli:t]	4	8	6 min	1	2021-04-11 16:28:41.514166+02	bd8790fd9e266f4bd566499340d42987f40c6d0a2a54a2f7995d4065f69a.png	https://www.trictrac.net/jeu-de-societe/kosmopoli-t	f	6	10	1	[kosmopoli:t]	\N	1		
26	Gloomhaven	1	4	30 à 120 min	3	2021-04-10 18:59:46.118143+02	gloomhaven.jpg	https://boardgamegeek.com/boardgame/174430/gloomhaven	f	120	14	1	Gloomhaven	\N	1		
75	HARRY Potter Une année à Poudlard	1	8	20 à 45 min	1	2021-04-13 16:04:42.763774+02	pic5074351.jpg	https://boardgamegeek.com/boardgame/263189/harry-potter-year-hogwarts	f	45	7	1	Harry Potter: A Year at Hogwarts	\N	1		
80	Harry Potter: Death Eaters Rising	2	4	45 à 90 min	1	2021-04-13 16:20:14.978431+02	pic4812850.jpg	https://boardgamegeek.com/boardgame/283211/harry-potter-death-eaters-rising	f	80	11	1	Harry Potter: Death Eaters Rising	\N	1		
88	Sherlock Holmes Consulting Detective: Jack the Ripper & West End Adventures	1	8	60 à 120 min	1	2021-05-10 15:15:34.830593+02	pic3238299.jpg	https://boardgamegeek.com/boardgame/204305/sherlock-holmes-consulting-detective-jack-ripper-w	f	120	10	1	Sherlock Holmes Consulting Detective: Jack the Ripper & West End Adventures	\N	1		
85	Mysterium	2	7	42	1	2021-05-10 15:03:48.94707+02	pic2601683.jpg	https://boardgamegeek.com/boardgame/181304/mysterium	f	42	10	1	Mysterium	\N	1		
91	6 Nimmt!	2	10	\N	\N	2021-05-11 12:19:05.985883+02	\N	https://www.boardgameatlas.com/game/gudsN2axFj/mayfair-games-6-nimmt	f	45	8	\N	6 Nimmt!	\N	1	https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254847938-61Aw2BygsiZL.jpg	https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254847938-61Aw2BygsiZL.jpg
63	Maître Renard	2	4	20 min	1	2021-04-11 16:30:49.848823+02	e84bf5c68ad2925553a9987591d272bb4af8.jpeg	https://www.trictrac.net/jeu-de-societe/maitre-renard-0	f	20	7	1	Maître Renard	\N	1		
76	Wizards Wanted	2	4	60 min	1	2021-04-13 16:07:06.094113+02	pic3329975.jpg	https://boardgamegeek.com/boardgame/217531/wizards-wanted	f	60	10	2	Wizards Wanted	\N	1		
31	Sentinel Tactics: The Flame Of Freedom	2	8	30 à 60 min	2	2021-04-11 11:24:49.79594+02	sttfof.png	https://boardgamegeek.com/boardgame/146408/sentinel-tactics-flame-freedom	f	60	13	2	Sentinel Tactics: The Flame Of Freedom	\N	1		
67	Kingdomino	2	4	15 min	1	2021-04-13 15:28:38.454816+02	pic3132685.png	https://boardgamegeek.com/boardgame/204583/kingdomino	f	15	8	1	Kingdomino	\N	1		
61	Carcassonne Star Wars	2	5	35 min	1	2021-04-11 16:26:24.248494+02	03ec686e45886a7d9a993697848c558f678e.png	https://www.trictrac.net/jeu-de-societe/carcassonne-star-wars-edition-3	f	35	7	1	Carcassonne Star Wars	\N	1		
78	Jamaica	2	6	30 à 60 min	1	2021-04-13 16:13:39.253804+02	pic1502119.jpg	https://boardgamegeek.com/boardgame/28023/jamaica	f	60	8	1	Jamaica	\N	1		
28	warhammer quest: le jeu d'aventure	1	4	30 à 60 min	2	2021-04-10 19:10:10.91279+02	wclja.jpg	https://boardgamegeek.com/boardgame/181521/warhammer-quest-adventure-card-game	f	60	14	1	warhammer quest: le jeu d'aventure	\N	1		
19	Warhammer 40000: L'Hérésie d'Horus	2	2	135 min	3	2021-04-10 18:26:29.714322+02	w40khh.jpg	https://boardgamegeek.com/boardgame/63543/horus-heresy	f	135	14	1	Warhammer 40000: L'Hérésie d'Horus	\N	1		
57	Trivial pursuit: Passeport pour le monde	2	6	60 à 90 min	1	2021-04-11 16:14:03.942937+02	pic64066.jpg	https://boardgamegeek.com/boardgame/15431/trivial-pursuit-globetrotter	f	90	12	1	Trivial pursuit: Passeport pour le monde	\N	1		
68	Las Vegas	2	5	30 min	1	2021-04-13 15:33:33.06894+02	pic1261796.jpg	https://boardgamegeek.com/boardgame/117959/las-vegas	f	30	8	1	Las Vegas	\N	1		
70	Sagrada	1	4	30 à 45 min	1	2021-04-13 15:47:20.926915+02	pic3525224.jpg	https://boardgamegeek.com/boardgame/199561/sagrada	f	45	14	1	Sagrada	\N	1		
71	Ivanhoë	3	6	45 min	1	2021-04-13 15:49:54.221733+02	pic44101.jpg	https://boardgamegeek.com/boardgame/3389/castle-lords	f	45	7	1	Ivanhoë	\N	1		
72	King Of Tokyo	2	6	30 min	1	2021-04-13 15:52:31.220764+02	pic3043734.jpg	https://boardgamegeek.com/boardgame/70323/king-tokyo	f	30	8	1	King Of Tokyo	\N	1		
81	Fantastic Beasts: Perilous pursuit	2	4	45 à 60 min	1	2021-04-13 16:22:49.323512+02	pic4163373.jpg	https://boardgamegeek.com/boardgame/254193/fantastic-beasts-perilous-pursuit	f	60	8	2	Fantastic Beasts: Perilous pursuit	\N	1		
74	Cahoots	1	4	20 min	1	2021-04-13 16:01:16.261044+02	pic3989425.jpg	https://boardgamegeek.com/boardgame/246761/cahoots	f	20	10	2	Cahoots	\N	1		
79	Harry Potter: House Cup Competition	2	4	75	1	2021-04-13 16:17:13.365134+02	pic5254783.jpg	https://boardgamegeek.com/boardgame/303006/harry-potter-house-cup-competition	f	75	11	2	Harry Potter: House Cup Competition	\N	1		
69	Hover Kraft	1	8	5 min	1	2021-04-13 15:44:38.092319+02	pic2310434.jpg	https://boardgamegeek.com/boardgame/169256/hoverkraft	f	5	8	2	Hover Kraft	\N	1		
77	Tokaido	2	5	45 min	1	2021-04-13 16:10:23.052798+02	pic3747956.png	https://boardgamegeek.com/boardgame/123540/tokaido	f	45	8	1	Tokaido	\N	1		
51	Unlock!:exotic Adventures	1	6	60 min	2	2021-04-11 16:00:55.949386+02	pic4511284.png	https://boardgamegeek.com/boardgame/254226/unlock-exotic-adventures	f	60	10	1	Unlock!:exotic Adventures	\N	1		
53	Échecs	2	2	60 min	2	2021-04-11 16:06:04.588422+02	pic260745.jpg	https://boardgamegeek.com/boardgame/171/chess	f	60	6	\N	Échecs	\N	1		
54	Master Mind	2	2	20 min	2	2021-04-11 16:07:38.620323+02	pic4420154.png	https://boardgamegeek.com/boardgame/2392/mastermind	f	20	8	\N	Master Mind	\N	1		
52	SCRABBLE ZigZag	2	4	30 min	1	2021-04-11 16:04:05.35294+02	pic1861508.jpg	https://boardgamegeek.com/boardgame/151603/scrabble-twists-turns	f	30	10	1	SCRABBLE ZigZag	\N	1		
65	Kitchen Rush	1	4	30 à 45 min	1	2021-04-13 15:23:48.173448+02	pic3559531.jpg	https://boardgamegeek.com/boardgame/223953/kitchen-rush	f	45	12	1	Kitchen Rush	\N	1		
66	Pix	4	9	30 min	1	2021-04-13 15:25:53.306404+02	pic1558327.jpg	https://boardgamegeek.com/boardgame/67181/pix	f	30	8	1	Pix	\N	1		
73	Loony Quest	2	5	20 à 30 min	1	2021-04-13 15:56:10.05162+02	pic3043308.jpg	https://boardgamegeek.com/boardgame/136991/loony-quest	f	30	8	1	Loony Quest	\N	1		
\.


                                                                     3581.dat                                                                                            0000600 0004000 0002000 00000002314 14047007276 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        21	7	13
22	10	14
23	11	16
24	11	17
25	13	18
26	14	19
27	15	20
28	16	21
29	16	22
30	17	24
31	17	23
32	18	25
33	19	26
34	19	27
35	20	28
36	21	29
37	21	30
38	22	31
39	23	32
42	24	35
43	25	36
44	26	37
45	26	38
46	26	39
47	27	40
48	28	41
49	29	42
50	30	42
51	31	25
52	32	43
53	33	42
54	33	44
55	33	45
56	24	42
57	34	48
58	34	49
59	34	47
60	35	42
61	35	44
62	35	50
63	36	51
64	36	52
65	36	53
66	37	54
67	38	56
68	38	57
69	38	55
70	40	58
71	41	59
72	45	60
73	48	61
74	49	64
75	49	62
76	49	63
77	50	65
78	50	66
79	50	67
80	51	64
81	51	66
82	51	67
83	51	68
84	51	69
85	60	70
86	60	71
87	62	72
88	63	73
89	64	74
90	64	75
91	65	76
92	65	77
93	67	78
94	68	80
95	68	81
96	68	79
97	70	82
98	71	83
99	72	84
100	72	85
101	72	86
102	73	58
103	73	87
104	74	88
105	74	89
106	76	90
107	77	91
108	78	87
109	79	92
110	82	93
111	83	96
112	83	95
113	84	97
114	84	98
115	84	99
116	84	100
117	84	101
118	85	104
119	85	105
120	85	102
121	85	103
122	86	106
123	86	107
124	86	108
125	87	109
126	87	110
127	87	111
128	88	66
129	88	106
130	88	112
131	88	113
132	88	114
155	91	133
156	91	134
157	91	135
158	91	136
159	91	137
160	91	131
161	92	124
162	92	125
163	92	126
164	92	127
165	92	128
166	92	79
167	92	40
168	92	129
169	92	130
170	92	131
171	92	132
\.


                                                                                                                                                                                                                                                                                                                    3583.dat                                                                                            0000600 0004000 0002000 00000002202 14047007276 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	7	6
9	10	7
10	11	7
15	13	7
16	14	7
17	14	8
18	14	9
19	14	10
20	14	11
21	15	14
22	16	16
23	16	17
24	16	15
25	17	18
26	18	19
27	18	20
28	18	21
29	19	25
30	19	26
31	20	27
32	21	28
33	22	29
34	23	32
35	23	30
36	23	31
37	24	33
38	25	34
39	26	35
40	27	36
41	28	37
42	28	38
43	28	39
44	29	40
45	29	41
46	29	42
47	30	40
48	30	42
49	31	43
50	31	19
51	31	44
52	32	45
53	33	46
54	34	48
55	35	49
56	35	50
57	36	25
58	36	51
59	37	52
60	37	53
61	38	54
62	39	55
63	40	56
64	41	57
65	42	58
66	42	59
67	43	60
68	45	61
69	46	62
70	46	63
71	47	64
72	47	65
73	48	66
74	49	67
75	49	68
76	49	69
77	49	70
78	50	72
79	50	73
80	50	71
81	51	74
82	52	75
83	54	76
84	58	77
85	58	78
86	59	77
87	59	78
88	60	79
89	61	80
90	62	81
91	62	82
92	63	83
93	64	84
94	65	85
95	65	86
96	66	88
97	66	87
98	67	52
99	68	89
100	70	90
101	70	91
102	71	92
103	72	93
104	73	88
105	73	87
106	74	94
107	75	95
108	76	96
109	77	53
110	78	97
111	78	52
112	78	69
113	79	98
114	79	99
115	80	100
116	80	101
117	81	98
118	82	98
119	82	100
120	83	102
121	84	84
122	84	103
123	85	104
124	85	105
125	86	106
126	86	107
127	87	108
128	87	109
129	87	110
130	88	112
131	88	113
132	88	111
135	91	117
136	92	116
\.


                                                                                                                                                                                                                                                                                                                                                                                              3629.dat                                                                                            0000600 0004000 0002000 00000002107 14047007276 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	7	21
2	37	21
3	61	21
4	67	21
5	69	21
6	7	22
7	11	22
8	14	22
9	21	22
10	22	22
11	24	22
12	38	22
13	40	22
14	41	22
15	43	22
16	44	22
17	47	22
18	65	22
19	10	23
20	11	23
21	13	23
22	14	23
23	26	23
24	28	23
25	29	23
26	30	23
27	32	23
28	33	23
29	10	24
30	11	24
31	13	24
32	14	24
33	26	24
34	27	24
35	30	24
36	31	24
37	32	24
38	33	24
39	10	25
40	11	25
41	13	25
42	14	25
43	26	25
44	27	25
45	28	25
46	29	25
47	30	25
48	32	25
49	33	25
50	35	25
51	36	25
52	75	25
53	76	25
54	77	25
55	11	26
56	13	26
57	14	26
58	15	26
59	17	26
60	26	26
61	15	27
62	16	28
63	14	28
64	13	28
65	11	28
66	10	28
67	18	28
68	19	28
69	20	28
70	21	28
71	28	28
72	29	28
73	30	28
74	31	28
75	32	28
76	33	28
77	34	28
78	35	28
79	36	28
80	39	28
81	42	28
82	22	29
83	48	30
84	49	30
85	50	30
86	51	30
87	52	31
88	53	32
89	54	32
90	52	32
91	47	32
92	46	32
93	43	32
94	44	32
95	55	32
96	56	32
97	57	32
98	58	32
99	59	32
100	57	33
101	58	33
102	59	33
103	60	34
104	65	35
105	66	36
106	73	36
107	67	37
108	61	37
109	78	38
110	79	39
111	38	39
112	82	26
113	82	28
114	83	28
115	83	37
116	84	28
117	85	34
118	86	34
119	87	34
120	88	34
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3599.dat                                                                                            0000600 0004000 0002000 00000001325 14047007276 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	7	4
4	10	1
5	10	3
6	11	1
7	11	3
8	13	1
9	13	3
10	14	1
11	14	3
12	15	1
13	15	3
14	16	1
15	16	3
16	17	1
17	17	2
18	18	3
19	19	4
20	20	1
21	20	4
22	21	4
23	22	4
24	23	4
25	24	4
26	25	4
27	26	1
28	26	3
29	27	3
30	28	3
31	29	3
32	30	3
37	33	5
38	32	5
39	31	5
40	34	1
41	34	4
42	35	4
43	36	4
44	37	4
45	38	4
46	39	4
47	40	4
48	41	4
49	42	3
50	42	4
51	43	4
52	44	4
53	45	4
54	46	4
55	47	4
56	48	3
57	49	3
58	50	3
59	51	3
60	52	4
61	53	4
62	54	4
63	55	4
64	56	4
65	57	4
66	58	4
67	59	4
68	60	4
69	61	4
70	62	3
71	63	4
72	64	3
73	65	3
74	66	4
75	67	4
76	68	4
77	69	4
78	70	4
79	71	4
80	72	4
81	73	4
82	74	3
83	75	3
84	75	4
85	76	4
86	77	4
87	78	4
88	79	4
89	80	3
90	81	3
91	82	3
92	83	3
93	84	3
94	85	3
95	86	3
96	87	3
97	88	3
\.


                                                                                                                                                                                                                                                                                                           3585.dat                                                                                            0000600 0004000 0002000 00000001460 14047007276 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9	7	1
10	7	5
11	10	6
12	10	7
13	11	6
14	11	7
15	13	6
16	14	6
17	15	8
18	15	9
19	15	10
20	16	11
21	16	12
22	16	13
23	17	14
24	18	15
25	19	11
26	19	12
27	20	16
28	20	17
29	21	18
30	22	18
31	23	19
32	24	11
33	24	12
34	25	20
35	27	2
36	27	21
37	28	11
38	28	12
39	29	22
40	30	22
41	31	15
42	32	23
43	33	11
44	33	12
45	34	2
46	35	11
47	35	12
48	36	11
49	37	24
50	38	25
51	39	26
52	40	27
53	40	28
54	41	29
55	42	30
56	43	31
57	44	31
58	45	18
59	46	31
60	47	32
61	48	33
62	49	34
63	50	34
64	51	34
65	52	35
66	57	31
67	58	36
68	59	31
69	60	2
70	61	37
71	62	38
72	63	39
73	64	40
74	65	41
75	66	1
76	67	42
77	68	43
78	69	44
79	70	17
80	70	45
81	71	46
82	72	2
83	73	27
84	74	47
85	75	48
86	76	35
87	77	49
88	78	50
89	79	51
90	80	51
91	81	51
92	82	51
93	83	52
94	84	53
95	85	27
96	86	34
97	87	54
98	88	1
100	91	56
101	92	55
\.


                                                                                                                                                                                                                3607.dat                                                                                            0000600 0004000 0002000 00000000175 14047007276 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        141	53	35
142	54	35
143	52	35
144	47	35
145	46	35
146	43	35
147	44	35
148	55	35
149	56	35
150	57	35
152	58	35
155	59	35
\.


                                                                                                                                                                                                                                                                                                                                                                                                   3631.dat                                                                                            0000600 0004000 0002000 00000001414 14047007276 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	27	1
2	68	2
3	20	3
4	39	4
5	29	5
6	30	5
7	21	6
8	46	7
9	41	8
10	19	9
11	20	9
12	21	9
13	23	9
14	24	9
15	25	9
16	34	9
17	46	9
18	60	10
19	42	11
20	75	11
21	80	11
22	79	11
23	81	11
24	22	12
25	37	12
26	58	12
27	70	12
28	71	12
29	77	13
30	38	14
31	16	15
32	17	15
33	28	16
34	19	17
35	77	18
36	16	19
37	17	19
38	18	19
39	31	19
40	61	20
41	76	21
42	81	21
43	42	21
44	75	21
45	80	21
46	79	21
47	35	22
48	33	22
49	24	22
50	19	23
51	21	23
52	62	24
53	65	24
54	45	25
55	40	26
56	34	26
57	78	27
58	10	27
59	14	28
60	13	28
61	11	28
62	10	28
67	20	30
68	10	31
69	11	31
70	13	31
71	14	31
72	15	31
73	23	31
74	24	31
75	25	31
76	26	31
77	27	31
78	28	31
79	29	31
80	30	31
81	32	31
82	33	31
83	35	31
84	36	31
85	39	31
86	82	11
87	82	21
88	83	33
89	84	34
90	85	35
91	86	36
92	87	37
93	88	37
\.


                                                                                                                                                                                                                                                    3593.dat                                                                                            0000600 0004000 0002000 00000000033 14047007276 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Français
2	Anglais
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3625.dat                                                                                            0000600 0004000 0002000 00000000465 14047007276 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        21	Construction
22	Gestion de ressource
23	Exploration de donjon
24	Jeu à campagne
25	Jeu de rôle
26	Deck-building
27	Tower-defense
28	Joueur Asynchrone
29	Commerce
30	Escape Games
31	Jeu de lettres
32	Classique
33	Quizz
34	Indice
35	Frénétique
36	Dessin
37	Pose de tuile
38	Course
39	Pose d'Ouvrier
\.


                                                                                                                                                                                                           3609.dat                                                                                            0000600 0004000 0002000 00000001057 14047007276 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Pathfinder adventure card game: class deck - witch	1	4	90 min	2021-04-09 18:01:06.182455+02	pfacgcdw.jpg	https://boardgamegeek.com/boardgameexpansion/193385/pathfinder-adventure-card-game-class-deck-witch	2	2	14	Pathfinder adventure card game: class deck - witch	\N	1			\N
1	Pathfinder le jeu de cartes:boites des decks de classe	1	4	90 min	2021-04-08 16:21:23.494914+02	pf_ljdc_bdc.jpg	https://www.trictrac.net/jeu-de-societe/pathfinder-le-jeu-de-cartes-boite-de-decks-de-classe	2	1	\N	Pathfinder le jeu de cartes:boites des decks de classe	\N	1			\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3611.dat                                                                                            0000600 0004000 0002000 00000000014 14047007276 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	15
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3613.dat                                                                                            0000600 0004000 0002000 00000000071 14047007276 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	7
2	2	7
3	2	8
4	2	9
5	2	10
6	2	11
7	2	12
8	2	13
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3615.dat                                                                                            0000600 0004000 0002000 00000000075 14047007276 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	10
2	1	11
3	2	10
4	2	11
5	2	13
6	2	14
7	1	13
8	1	14
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3617.dat                                                                                            0000600 0004000 0002000 00000000035 14047007276 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
2	1	3
3	2	1
4	2	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3619.dat                                                                                            0000600 0004000 0002000 00000000027 14047007276 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	6
2	1	7
3	2	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3595.dat                                                                                            0000600 0004000 0002000 00000000116 14047007276 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Individuel
2	Associatif
3	Coopératif
4	Compétitif
5	Semi-coopératif
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3577.dat                                                                                            0000600 0004000 0002000 00000001572 14047007276 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Asmodée
2	iello
3	Azao Games
4	White Wizard Games
5	MGA
6	Paizo
7	Black Book
8	Goblivion Games
9	Paille Editions
10	Ôz Edition
11	Fantasy Flight Game
12	Edge
13	Living Card Game
14	Upper Deck Entertainment
15	Greater Than Games
16	Stonemaier Games
17	Matagot
18	Descartes Éditeur
19	Plaid Hat Games
20	Oriflam
21	kosmos
22	Wizards Of The Coast
23	The Red Joker
24	Repos Production
25	CMON Limited
26	Ravensburger
27	Libellud
28	Pearl Games
29	2Tomatoes Games
30	Knight Models
31	Parker
32	MB
33	Hachette
34	Space Cowboys
35	Mattel
36	Hasbro
37	filosofia
38	Jeux Opla
39	Superlude
40	Cocktail Games
41	Artipia Games
42	Blue Orange
43	Oya
44	ThinkGeek.com
45	Flood Gate Games
46	Clash of Arms Games
47	Gamewright
48	Topi Games
49	Funforge
50	Game Works SARL
51	The Op
52	Inside the Box Board Games LLP (ITB)
53	Z-Man Games
54	Portal Games
55	KOSMOS
56	Mayfair Games
57	Catan Studio
\.


                                                                                                                                      3605.dat                                                                                            0000600 0004000 0002000 00000000022 14047007276 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        35	Classique
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3621.dat                                                                                            0000600 0004000 0002000 00000002114 14047007276 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	back_pathfinder.jpg	Pathfinder	Lancer la divination	Notre boule de cristal est à votre service	#D8AC9C	#EAC8AF	#1B2021	#5F939A	pathfinder_404.jpg	pathfinder_500.jpg	Vos derniers trésors:	Bienvenue!	La salle des Trésors	Tentez une autre quête	Seule votre persévérance permettra l'accomplissement de votre tâche	Il n'y a rien ici	Un évènement mystérieux a interrompu le déroulement de votre quête	https://fonts.googleapis.com/css2?family=MedievalSharp&display=swap	MedievalSharp, cursive	Ce trésor est bien vide...	la quête	pathfinder_empty_request.jpg	#5F939A
2	marvel_background.jpg	Marvel	Utiliser vos super-sens	Le crime ne dort jamais, que recherchez vous?	#51C4D3	#126E82	#132C33	#D8E3E7	marvel_404.jpg	marvel_500.jpg	Voici nos dernières découvertes:	Welcome Avenger!	L'arsenal	Retourner chasser le crime ailleurs.	Attendez un moment pendant que nous le réparons.	Personne ici	Le cérébro à un problème	https://fonts.googleapis.com/css2?family=Karantina:wght@300&display=swap	Karantina,cursive	Cette ville est bien vide...	la patrouille	marvel_empty_street.jpg	#D8E3E7
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                    3627.dat                                                                                            0000600 0004000 0002000 00000000756 14047007276 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Andor
2	Casino
3	Diesel Punk
4	Disney
5	Donjons et Dragons
6	Dune
7	Époque Napoléonienne
8	Finance
9	Guerre
10	Espion
11	Harry Potter
12	Historique
13	Japon
14	Mafia
15	Marvel
16	Warhammer fantasy
17	Warhammer 40000
18	Voyage
19	Super Héros
20	Star Wars
21	Sorcier
22	Runebound
23	Science Fiction
24	Restaurant
25	Prehistoire
26	Post Apocalyptic
27	Pirate
28	Pathfinder
30	Mech Warfare
31	Médieval Fantastique
33	Spéléologie
34	Cthulhu
35	Fantôme
36	Police Temporelle
37	Enquête
\.


                  restore.sql                                                                                         0000600 0004000 0002000 00000360431 14047007276 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

DROP DATABASE fil_rouge;
--
-- Name: fil_rouge; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE fil_rouge WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';


ALTER DATABASE fil_rouge OWNER TO postgres;

\connect fil_rouge

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
-- Name: ludoaccueil_news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludoaccueil_news (
    id integer NOT NULL,
    internal_img_url character varying(200),
    external_img_url character varying(200),
    internal_video_url character varying(200),
    external_video_url text,
    content text,
    internal_video_codec character varying(10),
    created_at timestamp with time zone NOT NULL,
    title character varying(200),
    audio_codec character varying(200),
    audio_url character varying(200)
);


ALTER TABLE public.ludoaccueil_news OWNER TO postgres;

--
-- Name: ludoaccueil_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludoaccueil_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludoaccueil_news_id_seq OWNER TO postgres;

--
-- Name: ludoaccueil_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludoaccueil_news_id_seq OWNED BY public.ludoaccueil_news.id;


--
-- Name: ludorecherche_addon_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_artists (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_artists OWNER TO postgres;

--
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_artists_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_artists_id_seq OWNED BY public.ludorecherche_addon_artists.id;


--
-- Name: ludorecherche_addon_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_designers (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_designers OWNER TO postgres;

--
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_designers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_designers_id_seq OWNED BY public.ludorecherche_addon_designers.id;


--
-- Name: ludorecherche_addon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text,
    bgg_link text NOT NULL,
    game_id integer,
    language_id integer,
    age integer,
    english_name character varying(200),
    buying_price integer,
    stock integer NOT NULL,
    external_image text,
    thumb_image text,
    max_time integer
);


ALTER TABLE public.ludorecherche_addon OWNER TO postgres;

--
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_id_seq OWNED BY public.ludorecherche_addon.id;


--
-- Name: ludorecherche_addon_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_playing_mode (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_playing_mode OWNER TO postgres;

--
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_playing_mode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_addon_playing_mode.id;


--
-- Name: ludorecherche_addon_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_addon_publishers (
    id integer NOT NULL,
    addon_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_addon_publishers OWNER TO postgres;

--
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_add_on_publishers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_add_on_publishers_id_seq OWNED BY public.ludorecherche_addon_publishers.id;


--
-- Name: ludorecherche_artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_artist (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_artist OWNER TO postgres;

--
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_artist_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_artist_id_seq OWNED BY public.ludorecherche_artist.id;


--
-- Name: ludorecherche_background; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_background (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    theme_id integer
);


ALTER TABLE public.ludorecherche_background OWNER TO postgres;

--
-- Name: ludorecherche_background_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_background_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_background_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_background_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_background_id_seq OWNED BY public.ludorecherche_background.id;


--
-- Name: ludorecherche_designer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_designer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_designer OWNER TO postgres;

--
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_designer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_designer_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_designer_id_seq OWNED BY public.ludorecherche_designer.id;


--
-- Name: ludorecherche_difficulty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_difficulty (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_difficulty OWNER TO postgres;

--
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_difficulty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_difficulty_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_difficulty_id_seq OWNED BY public.ludorecherche_difficulty.id;


--
-- Name: ludorecherche_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    difficulty_id integer,
    created_at timestamp with time zone NOT NULL,
    picture text,
    bgg_link text NOT NULL,
    by_player boolean NOT NULL,
    max_time integer,
    age integer,
    language_id integer,
    english_name character varying(200),
    buying_price integer,
    stock integer NOT NULL,
    external_image text,
    thumb_image text
);


ALTER TABLE public.ludorecherche_game OWNER TO postgres;

--
-- Name: ludorecherche_game_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_artists (
    id integer NOT NULL,
    game_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_artists OWNER TO postgres;

--
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_artists_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_artists_id_seq OWNED BY public.ludorecherche_game_artists.id;


--
-- Name: ludorecherche_game_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_designers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_designers OWNER TO postgres;

--
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_designers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_designers_id_seq OWNED BY public.ludorecherche_game_designers.id;


--
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_id_seq OWNED BY public.ludorecherche_game.id;


--
-- Name: ludorecherche_game_mechanism; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_mechanism (
    id integer NOT NULL,
    game_id integer NOT NULL,
    mechanism_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_mechanism OWNER TO postgres;

--
-- Name: ludorecherche_game_mechanism_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_mechanism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_mechanism_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_mechanism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_mechanism_id_seq OWNED BY public.ludorecherche_game_mechanism.id;


--
-- Name: ludorecherche_game_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_playing_mode (
    id integer NOT NULL,
    game_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_playing_mode OWNER TO postgres;

--
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_playing_mode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_playing_mode_id_seq OWNED BY public.ludorecherche_game_playing_mode.id;


--
-- Name: ludorecherche_game_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_publishers (
    id integer NOT NULL,
    game_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_publishers OWNER TO postgres;

--
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_publishers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_publishers_id_seq OWNED BY public.ludorecherche_game_publishers.id;


--
-- Name: ludorecherche_game_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_tag (
    id integer NOT NULL,
    game_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_tag OWNER TO postgres;

--
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_tag_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_tag_id_seq OWNED BY public.ludorecherche_game_tag.id;


--
-- Name: ludorecherche_game_topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_game_topic (
    id integer NOT NULL,
    game_id integer NOT NULL,
    topic_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_game_topic OWNER TO postgres;

--
-- Name: ludorecherche_game_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_game_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_game_topic_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_game_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_game_topic_id_seq OWNED BY public.ludorecherche_game_topic.id;


--
-- Name: ludorecherche_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_language OWNER TO postgres;

--
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_language_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_language_id_seq OWNED BY public.ludorecherche_language.id;


--
-- Name: ludorecherche_mechanism; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_mechanism (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_mechanism OWNER TO postgres;

--
-- Name: ludorecherche_mechanism_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_mechanism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_mechanism_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_mechanism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_mechanism_id_seq OWNED BY public.ludorecherche_mechanism.id;


--
-- Name: ludorecherche_multiaddon_artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_artists (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_artists OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_artists_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_artists_id_seq OWNED BY public.ludorecherche_multiaddon_artists.id;


--
-- Name: ludorecherche_multiaddon_designers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_designers (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    designer_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_designers OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_designers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_designers_id_seq OWNED BY public.ludorecherche_multiaddon_designers.id;


--
-- Name: ludorecherche_multiaddon_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_games (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_games OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_games_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_games_id_seq OWNED BY public.ludorecherche_multiaddon_games.id;


--
-- Name: ludorecherche_multiaddon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    player_min integer,
    player_max integer,
    playing_time character varying(50),
    created_at timestamp with time zone NOT NULL,
    picture text,
    bgg_link text NOT NULL,
    difficulty_id integer,
    language_id integer,
    age integer,
    english_name character varying(200),
    buying_price integer,
    stock integer NOT NULL,
    external_image text,
    thumb_image text,
    max_time integer
);


ALTER TABLE public.ludorecherche_multiaddon OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_id_seq OWNED BY public.ludorecherche_multiaddon.id;


--
-- Name: ludorecherche_multiaddon_playing_mode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_playing_mode (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    playingmode_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_playing_mode OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_playing_mode_id_seq OWNED BY public.ludorecherche_multiaddon_playing_mode.id;


--
-- Name: ludorecherche_multiaddon_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_multiaddon_publishers (
    id integer NOT NULL,
    multiaddon_id integer NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.ludorecherche_multiaddon_publishers OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_multi_add_on_publishers_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_multi_add_on_publishers_id_seq OWNED BY public.ludorecherche_multiaddon_publishers.id;


--
-- Name: ludorecherche_playingmode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_playingmode (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_playingmode OWNER TO postgres;

--
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_playingmode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_playingmode_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_playingmode_id_seq OWNED BY public.ludorecherche_playingmode.id;


--
-- Name: ludorecherche_publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_publisher (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_publisher OWNER TO postgres;

--
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_publisher_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_publisher_id_seq OWNED BY public.ludorecherche_publisher.id;


--
-- Name: ludorecherche_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_tag OWNER TO postgres;

--
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_tag_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_tag_id_seq OWNED BY public.ludorecherche_tag.id;


--
-- Name: ludorecherche_theme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_theme (
    id integer NOT NULL,
    background_image character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    advanced_search_button_text character varying(200) NOT NULL,
    advanced_search_title character varying(200) NOT NULL,
    color_2nd character varying(18) NOT NULL,
    color_3rd character varying(18) NOT NULL,
    color_4th character varying(18) NOT NULL,
    color_main character varying(18) NOT NULL,
    image_404 character varying(200) NOT NULL,
    image_500 character varying(200) NOT NULL,
    index_text text NOT NULL,
    index_title character varying(200) NOT NULL,
    list_all_title character varying(200) NOT NULL,
    text_404 text NOT NULL,
    text_500 text NOT NULL,
    title_404 character varying(200) NOT NULL,
    title_500 character varying(200) NOT NULL,
    font_link text NOT NULL,
    font_name character varying(200) NOT NULL,
    empty_query_text text NOT NULL,
    query_name character varying(200) NOT NULL,
    empty_query_image character varying(200) NOT NULL,
    color_back character varying(18) NOT NULL
);


ALTER TABLE public.ludorecherche_theme OWNER TO postgres;

--
-- Name: ludorecherche_theme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_theme_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_theme_id_seq OWNED BY public.ludorecherche_theme.id;


--
-- Name: ludorecherche_topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ludorecherche_topic (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.ludorecherche_topic OWNER TO postgres;

--
-- Name: ludorecherche_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ludorecherche_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ludorecherche_topic_id_seq OWNER TO postgres;

--
-- Name: ludorecherche_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ludorecherche_topic_id_seq OWNED BY public.ludorecherche_topic.id;


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
-- Name: ludoaccueil_news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludoaccueil_news ALTER COLUMN id SET DEFAULT nextval('public.ludoaccueil_news_id_seq'::regclass);


--
-- Name: ludorecherche_addon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_id_seq'::regclass);


--
-- Name: ludorecherche_addon_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_artists_id_seq'::regclass);


--
-- Name: ludorecherche_addon_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_designers_id_seq'::regclass);


--
-- Name: ludorecherche_addon_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_playing_mode_id_seq'::regclass);


--
-- Name: ludorecherche_addon_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_add_on_publishers_id_seq'::regclass);


--
-- Name: ludorecherche_artist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_artist_id_seq'::regclass);


--
-- Name: ludorecherche_background id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_background ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_background_id_seq'::regclass);


--
-- Name: ludorecherche_designer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_designer_id_seq'::regclass);


--
-- Name: ludorecherche_difficulty id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_difficulty_id_seq'::regclass);


--
-- Name: ludorecherche_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_id_seq'::regclass);


--
-- Name: ludorecherche_game_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_artists_id_seq'::regclass);


--
-- Name: ludorecherche_game_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_designers_id_seq'::regclass);


--
-- Name: ludorecherche_game_mechanism id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_mechanism ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_mechanism_id_seq'::regclass);


--
-- Name: ludorecherche_game_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_playing_mode_id_seq'::regclass);


--
-- Name: ludorecherche_game_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_publishers_id_seq'::regclass);


--
-- Name: ludorecherche_game_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_tag_id_seq'::regclass);


--
-- Name: ludorecherche_game_topic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_topic ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_game_topic_id_seq'::regclass);


--
-- Name: ludorecherche_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_language_id_seq'::regclass);


--
-- Name: ludorecherche_mechanism id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_mechanism ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_mechanism_id_seq'::regclass);


--
-- Name: ludorecherche_multiaddon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_id_seq'::regclass);


--
-- Name: ludorecherche_multiaddon_artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_artists_id_seq'::regclass);


--
-- Name: ludorecherche_multiaddon_designers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_designers_id_seq'::regclass);


--
-- Name: ludorecherche_multiaddon_games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_games_id_seq'::regclass);


--
-- Name: ludorecherche_multiaddon_playing_mode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_playing_mode_id_seq'::regclass);


--
-- Name: ludorecherche_multiaddon_publishers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_multi_add_on_publishers_id_seq'::regclass);


--
-- Name: ludorecherche_playingmode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_playingmode_id_seq'::regclass);


--
-- Name: ludorecherche_publisher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_publisher_id_seq'::regclass);


--
-- Name: ludorecherche_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_tag_id_seq'::regclass);


--
-- Name: ludorecherche_theme id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_theme ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_theme_id_seq'::regclass);


--
-- Name: ludorecherche_topic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_topic ALTER COLUMN id SET DEFAULT nextval('public.ludorecherche_topic_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3558.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3560.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3556.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3562.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3564.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3566.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3568.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3554.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3601.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3569.dat';

--
-- Data for Name: ludoaccueil_news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludoaccueil_news (id, internal_img_url, external_img_url, internal_video_url, external_video_url, content, internal_video_codec, created_at, title, audio_codec, audio_url) FROM stdin;
\.
COPY public.ludoaccueil_news (id, internal_img_url, external_img_url, internal_video_url, external_video_url, content, internal_video_codec, created_at, title, audio_codec, audio_url) FROM '$$PATH$$/3633.dat';

--
-- Data for Name: ludorecherche_addon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) FROM stdin;
\.
COPY public.ludorecherche_addon (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, game_id, language_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) FROM '$$PATH$$/3571.dat';

--
-- Data for Name: ludorecherche_addon_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_artists (id, addon_id, artist_id) FROM stdin;
\.
COPY public.ludorecherche_addon_artists (id, addon_id, artist_id) FROM '$$PATH$$/3587.dat';

--
-- Data for Name: ludorecherche_addon_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_designers (id, addon_id, designer_id) FROM stdin;
\.
COPY public.ludorecherche_addon_designers (id, addon_id, designer_id) FROM '$$PATH$$/3589.dat';

--
-- Data for Name: ludorecherche_addon_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_playing_mode (id, addon_id, playingmode_id) FROM stdin;
\.
COPY public.ludorecherche_addon_playing_mode (id, addon_id, playingmode_id) FROM '$$PATH$$/3597.dat';

--
-- Data for Name: ludorecherche_addon_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_addon_publishers (id, addon_id, publisher_id) FROM stdin;
\.
COPY public.ludorecherche_addon_publishers (id, addon_id, publisher_id) FROM '$$PATH$$/3591.dat';

--
-- Data for Name: ludorecherche_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_artist (id, name) FROM stdin;
\.
COPY public.ludorecherche_artist (id, name) FROM '$$PATH$$/3573.dat';

--
-- Data for Name: ludorecherche_background; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_background (id, name, theme_id) FROM stdin;
\.
COPY public.ludorecherche_background (id, name, theme_id) FROM '$$PATH$$/3623.dat';

--
-- Data for Name: ludorecherche_designer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_designer (id, name) FROM stdin;
\.
COPY public.ludorecherche_designer (id, name) FROM '$$PATH$$/3575.dat';

--
-- Data for Name: ludorecherche_difficulty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_difficulty (id, name) FROM stdin;
\.
COPY public.ludorecherche_difficulty (id, name) FROM '$$PATH$$/3603.dat';

--
-- Data for Name: ludorecherche_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id, english_name, buying_price, stock, external_image, thumb_image) FROM stdin;
\.
COPY public.ludorecherche_game (id, name, player_min, player_max, playing_time, difficulty_id, created_at, picture, bgg_link, by_player, max_time, age, language_id, english_name, buying_price, stock, external_image, thumb_image) FROM '$$PATH$$/3579.dat';

--
-- Data for Name: ludorecherche_game_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM stdin;
\.
COPY public.ludorecherche_game_artists (id, game_id, artist_id) FROM '$$PATH$$/3581.dat';

--
-- Data for Name: ludorecherche_game_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM stdin;
\.
COPY public.ludorecherche_game_designers (id, game_id, designer_id) FROM '$$PATH$$/3583.dat';

--
-- Data for Name: ludorecherche_game_mechanism; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_mechanism (id, game_id, mechanism_id) FROM stdin;
\.
COPY public.ludorecherche_game_mechanism (id, game_id, mechanism_id) FROM '$$PATH$$/3629.dat';

--
-- Data for Name: ludorecherche_game_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM stdin;
\.
COPY public.ludorecherche_game_playing_mode (id, game_id, playingmode_id) FROM '$$PATH$$/3599.dat';

--
-- Data for Name: ludorecherche_game_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM stdin;
\.
COPY public.ludorecherche_game_publishers (id, game_id, publisher_id) FROM '$$PATH$$/3585.dat';

--
-- Data for Name: ludorecherche_game_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM stdin;
\.
COPY public.ludorecherche_game_tag (id, game_id, tag_id) FROM '$$PATH$$/3607.dat';

--
-- Data for Name: ludorecherche_game_topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_game_topic (id, game_id, topic_id) FROM stdin;
\.
COPY public.ludorecherche_game_topic (id, game_id, topic_id) FROM '$$PATH$$/3631.dat';

--
-- Data for Name: ludorecherche_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_language (id, name) FROM stdin;
\.
COPY public.ludorecherche_language (id, name) FROM '$$PATH$$/3593.dat';

--
-- Data for Name: ludorecherche_mechanism; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_mechanism (id, name) FROM stdin;
\.
COPY public.ludorecherche_mechanism (id, name) FROM '$$PATH$$/3625.dat';

--
-- Data for Name: ludorecherche_multiaddon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) FROM stdin;
\.
COPY public.ludorecherche_multiaddon (id, name, player_min, player_max, playing_time, created_at, picture, bgg_link, difficulty_id, language_id, age, english_name, buying_price, stock, external_image, thumb_image, max_time) FROM '$$PATH$$/3609.dat';

--
-- Data for Name: ludorecherche_multiaddon_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_artists (id, multiaddon_id, artist_id) FROM stdin;
\.
COPY public.ludorecherche_multiaddon_artists (id, multiaddon_id, artist_id) FROM '$$PATH$$/3611.dat';

--
-- Data for Name: ludorecherche_multiaddon_designers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_designers (id, multiaddon_id, designer_id) FROM stdin;
\.
COPY public.ludorecherche_multiaddon_designers (id, multiaddon_id, designer_id) FROM '$$PATH$$/3613.dat';

--
-- Data for Name: ludorecherche_multiaddon_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_games (id, multiaddon_id, game_id) FROM stdin;
\.
COPY public.ludorecherche_multiaddon_games (id, multiaddon_id, game_id) FROM '$$PATH$$/3615.dat';

--
-- Data for Name: ludorecherche_multiaddon_playing_mode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_playing_mode (id, multiaddon_id, playingmode_id) FROM stdin;
\.
COPY public.ludorecherche_multiaddon_playing_mode (id, multiaddon_id, playingmode_id) FROM '$$PATH$$/3617.dat';

--
-- Data for Name: ludorecherche_multiaddon_publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_multiaddon_publishers (id, multiaddon_id, publisher_id) FROM stdin;
\.
COPY public.ludorecherche_multiaddon_publishers (id, multiaddon_id, publisher_id) FROM '$$PATH$$/3619.dat';

--
-- Data for Name: ludorecherche_playingmode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_playingmode (id, name) FROM stdin;
\.
COPY public.ludorecherche_playingmode (id, name) FROM '$$PATH$$/3595.dat';

--
-- Data for Name: ludorecherche_publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_publisher (id, name) FROM stdin;
\.
COPY public.ludorecherche_publisher (id, name) FROM '$$PATH$$/3577.dat';

--
-- Data for Name: ludorecherche_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_tag (id, name) FROM stdin;
\.
COPY public.ludorecherche_tag (id, name) FROM '$$PATH$$/3605.dat';

--
-- Data for Name: ludorecherche_theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_theme (id, background_image, name, advanced_search_button_text, advanced_search_title, color_2nd, color_3rd, color_4th, color_main, image_404, image_500, index_text, index_title, list_all_title, text_404, text_500, title_404, title_500, font_link, font_name, empty_query_text, query_name, empty_query_image, color_back) FROM stdin;
\.
COPY public.ludorecherche_theme (id, background_image, name, advanced_search_button_text, advanced_search_title, color_2nd, color_3rd, color_4th, color_main, image_404, image_500, index_text, index_title, list_all_title, text_404, text_500, title_404, title_500, font_link, font_name, empty_query_text, query_name, empty_query_image, color_back) FROM '$$PATH$$/3621.dat';

--
-- Data for Name: ludorecherche_topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ludorecherche_topic (id, name) FROM stdin;
\.
COPY public.ludorecherche_topic (id, name) FROM '$$PATH$$/3627.dat';

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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 682, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 69, true);


--
-- Name: ludoaccueil_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludoaccueil_news_id_seq', 1, true);


--
-- Name: ludorecherche_add_on_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_artists_id_seq', 45, true);


--
-- Name: ludorecherche_add_on_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_designers_id_seq', 49, true);


--
-- Name: ludorecherche_add_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_id_seq', 22, true);


--
-- Name: ludorecherche_add_on_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_playing_mode_id_seq', 26, true);


--
-- Name: ludorecherche_add_on_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_add_on_publishers_id_seq', 28, true);


--
-- Name: ludorecherche_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_artist_id_seq', 138, true);


--
-- Name: ludorecherche_background_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_background_id_seq', 1, true);


--
-- Name: ludorecherche_designer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_designer_id_seq', 117, true);


--
-- Name: ludorecherche_difficulty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_difficulty_id_seq', 3, true);


--
-- Name: ludorecherche_game_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_artists_id_seq', 171, true);


--
-- Name: ludorecherche_game_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_designers_id_seq', 136, true);


--
-- Name: ludorecherche_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_id_seq', 92, true);


--
-- Name: ludorecherche_game_mechanism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_mechanism_id_seq', 120, true);


--
-- Name: ludorecherche_game_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_playing_mode_id_seq', 97, true);


--
-- Name: ludorecherche_game_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_publishers_id_seq', 101, true);


--
-- Name: ludorecherche_game_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_tag_id_seq', 192, true);


--
-- Name: ludorecherche_game_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_game_topic_id_seq', 93, true);


--
-- Name: ludorecherche_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_language_id_seq', 2, true);


--
-- Name: ludorecherche_mechanism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_mechanism_id_seq', 39, true);


--
-- Name: ludorecherche_multi_add_on_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_artists_id_seq', 1, true);


--
-- Name: ludorecherche_multi_add_on_designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_designers_id_seq', 8, true);


--
-- Name: ludorecherche_multi_add_on_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_games_id_seq', 8, true);


--
-- Name: ludorecherche_multi_add_on_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_id_seq', 2, true);


--
-- Name: ludorecherche_multi_add_on_playing_mode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_playing_mode_id_seq', 4, true);


--
-- Name: ludorecherche_multi_add_on_publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_multi_add_on_publishers_id_seq', 3, true);


--
-- Name: ludorecherche_playingmode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_playingmode_id_seq', 5, true);


--
-- Name: ludorecherche_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_publisher_id_seq', 57, true);


--
-- Name: ludorecherche_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_tag_id_seq', 50, true);


--
-- Name: ludorecherche_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_theme_id_seq', 2, true);


--
-- Name: ludorecherche_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ludorecherche_topic_id_seq', 37, true);


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
-- Name: ludoaccueil_news ludoaccueil_news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludoaccueil_news
    ADD CONSTRAINT ludoaccueil_news_pkey PRIMARY KEY (id);


--
-- Name: ludoaccueil_news ludoaccueil_news_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludoaccueil_news
    ADD CONSTRAINT ludoaccueil_news_title_key UNIQUE (title);


--
-- Name: ludorecherche_addon_artists ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_add_on_id_artist_id_9db8303a_uniq UNIQUE (addon_id, artist_id);


--
-- Name: ludorecherche_addon_artists ludorecherche_add_on_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_add_on_artists_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_addon_designers ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_des_add_on_id_designer_id_33beca4e_uniq UNIQUE (addon_id, designer_id);


--
-- Name: ludorecherche_addon_designers ludorecherche_add_on_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_add_on_designers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_addon ludorecherche_add_on_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_name_key UNIQUE (name);


--
-- Name: ludorecherche_addon ludorecherche_add_on_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_addon_playing_mode ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_pla_add_on_id_playingmode_id_2ef709e7_uniq UNIQUE (addon_id, playingmode_id);


--
-- Name: ludorecherche_addon_playing_mode ludorecherche_add_on_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_add_on_playing_mode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_addon_publishers ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_pub_add_on_id_publisher_id_e6c5a0b8_uniq UNIQUE (addon_id, publisher_id);


--
-- Name: ludorecherche_addon_publishers ludorecherche_add_on_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_add_on_publishers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_addon ludorecherche_addon_english_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_addon_english_name_key UNIQUE (english_name);


--
-- Name: ludorecherche_artist ludorecherche_artist_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_name_key UNIQUE (name);


--
-- Name: ludorecherche_artist ludorecherche_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_artist
    ADD CONSTRAINT ludorecherche_artist_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_background ludorecherche_background_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_background_name_key UNIQUE (name);


--
-- Name: ludorecherche_background ludorecherche_background_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_background_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_background ludorecherche_background_theme_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_background_theme_id_key UNIQUE (theme_id);


--
-- Name: ludorecherche_designer ludorecherche_designer_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_name_key UNIQUE (name);


--
-- Name: ludorecherche_designer ludorecherche_designer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_designer
    ADD CONSTRAINT ludorecherche_designer_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_difficulty ludorecherche_difficulty_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_name_key UNIQUE (name);


--
-- Name: ludorecherche_difficulty ludorecherche_difficulty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_difficulty
    ADD CONSTRAINT ludorecherche_difficulty_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_artists ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_game_id_artist_id_0c3b929f_uniq UNIQUE (game_id, artist_id);


--
-- Name: ludorecherche_game_artists ludorecherche_game_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_artists_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_designers ludorecherche_game_designers_game_id_designer_id_98196acb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_game_id_designer_id_98196acb_uniq UNIQUE (game_id, designer_id);


--
-- Name: ludorecherche_game_designers ludorecherche_game_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_designers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game ludorecherche_game_english_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_english_name_key UNIQUE (english_name);


--
-- Name: ludorecherche_game_mechanism ludorecherche_game_mechanism_game_id_mechanism_id_bbaa49ca_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_mechanism_game_id_mechanism_id_bbaa49ca_uniq UNIQUE (game_id, mechanism_id);


--
-- Name: ludorecherche_game_mechanism ludorecherche_game_mechanism_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_mechanism_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game ludorecherche_game_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_name_key UNIQUE (name);


--
-- Name: ludorecherche_game ludorecherche_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playi_game_id_playingmode_id_5ab1ddc5_uniq UNIQUE (game_id, playingmode_id);


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_playing_mode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_publishers ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publi_game_id_publisher_id_d2ab4a93_uniq UNIQUE (game_id, publisher_id);


--
-- Name: ludorecherche_game_publishers ludorecherche_game_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_publishers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_tag ludorecherche_game_tag_game_id_tag_id_79514770_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_game_id_tag_id_79514770_uniq UNIQUE (game_id, tag_id);


--
-- Name: ludorecherche_game_tag ludorecherche_game_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_game_topic ludorecherche_game_topic_game_id_topic_id_771c5865_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_topic_game_id_topic_id_771c5865_uniq UNIQUE (game_id, topic_id);


--
-- Name: ludorecherche_game_topic ludorecherche_game_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_topic_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_language ludorecherche_language_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_name_key UNIQUE (name);


--
-- Name: ludorecherche_language ludorecherche_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_language
    ADD CONSTRAINT ludorecherche_language_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_mechanism ludorecherche_mechanism_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_mechanism
    ADD CONSTRAINT ludorecherche_mechanism_name_key UNIQUE (name);


--
-- Name: ludorecherche_mechanism ludorecherche_mechanism_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_mechanism
    ADD CONSTRAINT ludorecherche_mechanism_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon_artists ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_artist_i_607ccaae_uniq UNIQUE (multiaddon_id, artist_id);


--
-- Name: ludorecherche_multiaddon_designers ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_designer_9d63726f_uniq UNIQUE (multiaddon_id, designer_id);


--
-- Name: ludorecherche_multiaddon_games ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_game_id_96b2ba2d_uniq UNIQUE (multiaddon_id, game_id);


--
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_playingm_03ef07e1_uniq UNIQUE (multiaddon_id, playingmode_id);


--
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi_add__multi_add_on_id_publishe_276d40ae_uniq UNIQUE (multiaddon_id, publisher_id);


--
-- Name: ludorecherche_multiaddon_artists ludorecherche_multi_add_on_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multi_add_on_artists_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon_designers ludorecherche_multi_add_on_designers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multi_add_on_designers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon_games ludorecherche_multi_add_on_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi_add_on_games_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon ludorecherche_multi_add_on_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi_add_on_name_key UNIQUE (name);


--
-- Name: ludorecherche_multiaddon ludorecherche_multi_add_on_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multi_add_on_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multi_add_on_playing_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multi_add_on_playing_mode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multi_add_on_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multi_add_on_publishers_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_multiaddon ludorecherche_multiaddon_english_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multiaddon_english_name_key UNIQUE (english_name);


--
-- Name: ludorecherche_playingmode ludorecherche_playingmode_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_name_key UNIQUE (name);


--
-- Name: ludorecherche_playingmode ludorecherche_playingmode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_playingmode
    ADD CONSTRAINT ludorecherche_playingmode_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_publisher ludorecherche_publisher_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_name_key UNIQUE (name);


--
-- Name: ludorecherche_publisher ludorecherche_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_publisher
    ADD CONSTRAINT ludorecherche_publisher_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_tag ludorecherche_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_name_key UNIQUE (name);


--
-- Name: ludorecherche_tag ludorecherche_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_tag
    ADD CONSTRAINT ludorecherche_tag_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_theme ludorecherche_theme_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_theme
    ADD CONSTRAINT ludorecherche_theme_name_key UNIQUE (name);


--
-- Name: ludorecherche_theme ludorecherche_theme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_theme
    ADD CONSTRAINT ludorecherche_theme_pkey PRIMARY KEY (id);


--
-- Name: ludorecherche_topic ludorecherche_topic_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_topic
    ADD CONSTRAINT ludorecherche_topic_name_key UNIQUE (name);


--
-- Name: ludorecherche_topic ludorecherche_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_topic
    ADD CONSTRAINT ludorecherche_topic_pkey PRIMARY KEY (id);


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
-- Name: ludoaccueil_news_title_12b85c2c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludoaccueil_news_title_12b85c2c_like ON public.ludoaccueil_news USING btree (title varchar_pattern_ops);


--
-- Name: ludorecherche_add_on_artists_add_on_id_06c1b675; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_artists_add_on_id_06c1b675 ON public.ludorecherche_addon_artists USING btree (addon_id);


--
-- Name: ludorecherche_add_on_artists_artist_id_947142f9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_artists_artist_id_947142f9 ON public.ludorecherche_addon_artists USING btree (artist_id);


--
-- Name: ludorecherche_add_on_designers_add_on_id_91c9524f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_designers_add_on_id_91c9524f ON public.ludorecherche_addon_designers USING btree (addon_id);


--
-- Name: ludorecherche_add_on_designers_designer_id_c16eab7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_designers_designer_id_c16eab7d ON public.ludorecherche_addon_designers USING btree (designer_id);


--
-- Name: ludorecherche_add_on_difficulty_id_36e9a090; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_difficulty_id_36e9a090 ON public.ludorecherche_addon USING btree (difficulty_id);


--
-- Name: ludorecherche_add_on_game_id_fc9844ac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_game_id_fc9844ac ON public.ludorecherche_addon USING btree (game_id);


--
-- Name: ludorecherche_add_on_language_id_5573aafd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_language_id_5573aafd ON public.ludorecherche_addon USING btree (language_id);


--
-- Name: ludorecherche_add_on_name_d5b13084_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_name_d5b13084_like ON public.ludorecherche_addon USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_add_on_playing_mode_add_on_id_ef1f0186; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_playing_mode_add_on_id_ef1f0186 ON public.ludorecherche_addon_playing_mode USING btree (addon_id);


--
-- Name: ludorecherche_add_on_playing_mode_playingmode_id_12919a41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_playing_mode_playingmode_id_12919a41 ON public.ludorecherche_addon_playing_mode USING btree (playingmode_id);


--
-- Name: ludorecherche_add_on_publishers_add_on_id_9ca3fd40; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_publishers_add_on_id_9ca3fd40 ON public.ludorecherche_addon_publishers USING btree (addon_id);


--
-- Name: ludorecherche_add_on_publishers_publisher_id_14abff3e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_add_on_publishers_publisher_id_14abff3e ON public.ludorecherche_addon_publishers USING btree (publisher_id);


--
-- Name: ludorecherche_addon_english_name_e62012de_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_addon_english_name_e62012de_like ON public.ludorecherche_addon USING btree (english_name varchar_pattern_ops);


--
-- Name: ludorecherche_artist_name_7c60ea7e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_artist_name_7c60ea7e_like ON public.ludorecherche_artist USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_background_name_790e7c2a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_background_name_790e7c2a_like ON public.ludorecherche_background USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_designer_name_36cdcde4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_designer_name_36cdcde4_like ON public.ludorecherche_designer USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_difficulty_name_e59ec408_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_difficulty_name_e59ec408_like ON public.ludorecherche_difficulty USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_game_artists_artist_id_3e5506bf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_artists_artist_id_3e5506bf ON public.ludorecherche_game_artists USING btree (artist_id);


--
-- Name: ludorecherche_game_artists_game_id_2ba0fcde; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_artists_game_id_2ba0fcde ON public.ludorecherche_game_artists USING btree (game_id);


--
-- Name: ludorecherche_game_designers_designer_id_8b4d087f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_designers_designer_id_8b4d087f ON public.ludorecherche_game_designers USING btree (designer_id);


--
-- Name: ludorecherche_game_designers_game_id_6d1526cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_designers_game_id_6d1526cc ON public.ludorecherche_game_designers USING btree (game_id);


--
-- Name: ludorecherche_game_difficulty_id_c4f6b87a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_difficulty_id_c4f6b87a ON public.ludorecherche_game USING btree (difficulty_id);


--
-- Name: ludorecherche_game_english_name_0e9e6d79_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_english_name_0e9e6d79_like ON public.ludorecherche_game USING btree (english_name varchar_pattern_ops);


--
-- Name: ludorecherche_game_language_id_38e7eecd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_language_id_38e7eecd ON public.ludorecherche_game USING btree (language_id);


--
-- Name: ludorecherche_game_mechanism_game_id_bc22c85a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_mechanism_game_id_bc22c85a ON public.ludorecherche_game_mechanism USING btree (game_id);


--
-- Name: ludorecherche_game_mechanism_mechanism_id_2d137790; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_mechanism_mechanism_id_2d137790 ON public.ludorecherche_game_mechanism USING btree (mechanism_id);


--
-- Name: ludorecherche_game_name_82b8126a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_name_82b8126a_like ON public.ludorecherche_game USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_game_playing_mode_game_id_62bd95b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_playing_mode_game_id_62bd95b2 ON public.ludorecherche_game_playing_mode USING btree (game_id);


--
-- Name: ludorecherche_game_playing_mode_playingmode_id_fa02659e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_playing_mode_playingmode_id_fa02659e ON public.ludorecherche_game_playing_mode USING btree (playingmode_id);


--
-- Name: ludorecherche_game_publishers_game_id_a425abf8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_publishers_game_id_a425abf8 ON public.ludorecherche_game_publishers USING btree (game_id);


--
-- Name: ludorecherche_game_publishers_publisher_id_5176fa38; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_publishers_publisher_id_5176fa38 ON public.ludorecherche_game_publishers USING btree (publisher_id);


--
-- Name: ludorecherche_game_tag_game_id_065ca217; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_tag_game_id_065ca217 ON public.ludorecherche_game_tag USING btree (game_id);


--
-- Name: ludorecherche_game_tag_tag_id_d515082c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_tag_tag_id_d515082c ON public.ludorecherche_game_tag USING btree (tag_id);


--
-- Name: ludorecherche_game_topic_game_id_d0f61157; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_topic_game_id_d0f61157 ON public.ludorecherche_game_topic USING btree (game_id);


--
-- Name: ludorecherche_game_topic_topic_id_e97daab5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_game_topic_topic_id_e97daab5 ON public.ludorecherche_game_topic USING btree (topic_id);


--
-- Name: ludorecherche_language_name_24fe12a7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_language_name_24fe12a7_like ON public.ludorecherche_language USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_mechanism_name_6bb33027_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_mechanism_name_6bb33027_like ON public.ludorecherche_mechanism USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_multi_add_on_artists_artist_id_b04b65bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_artists_artist_id_b04b65bc ON public.ludorecherche_multiaddon_artists USING btree (artist_id);


--
-- Name: ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_artists_multi_add_on_id_8c054ca7 ON public.ludorecherche_multiaddon_artists USING btree (multiaddon_id);


--
-- Name: ludorecherche_multi_add_on_designers_designer_id_63ada047; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_designers_designer_id_63ada047 ON public.ludorecherche_multiaddon_designers USING btree (designer_id);


--
-- Name: ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_designers_multi_add_on_id_5b1af8fc ON public.ludorecherche_multiaddon_designers USING btree (multiaddon_id);


--
-- Name: ludorecherche_multi_add_on_difficulty_id_5c7d95a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_difficulty_id_5c7d95a0 ON public.ludorecherche_multiaddon USING btree (difficulty_id);


--
-- Name: ludorecherche_multi_add_on_games_game_id_790ba75d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_games_game_id_790ba75d ON public.ludorecherche_multiaddon_games USING btree (game_id);


--
-- Name: ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_games_multi_add_on_id_9f3c31b9 ON public.ludorecherche_multiaddon_games USING btree (multiaddon_id);


--
-- Name: ludorecherche_multi_add_on_language_id_5be310e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_language_id_5be310e3 ON public.ludorecherche_multiaddon USING btree (language_id);


--
-- Name: ludorecherche_multi_add_on_multi_add_on_id_25357591; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_multi_add_on_id_25357591 ON public.ludorecherche_multiaddon_playing_mode USING btree (multiaddon_id);


--
-- Name: ludorecherche_multi_add_on_name_7a883fb9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_name_7a883fb9_like ON public.ludorecherche_multiaddon USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_playing_mode_playingmode_id_3de7a256 ON public.ludorecherche_multiaddon_playing_mode USING btree (playingmode_id);


--
-- Name: ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_publishers_multi_add_on_id_22811669 ON public.ludorecherche_multiaddon_publishers USING btree (multiaddon_id);


--
-- Name: ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multi_add_on_publishers_publisher_id_ca696d8c ON public.ludorecherche_multiaddon_publishers USING btree (publisher_id);


--
-- Name: ludorecherche_multiaddon_english_name_11396b6e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_multiaddon_english_name_11396b6e_like ON public.ludorecherche_multiaddon USING btree (english_name varchar_pattern_ops);


--
-- Name: ludorecherche_playingmode_name_b9bc9f89_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_playingmode_name_b9bc9f89_like ON public.ludorecherche_playingmode USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_publisher_name_865b1ff3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_publisher_name_865b1ff3_like ON public.ludorecherche_publisher USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_tag_name_de380dee_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_tag_name_de380dee_like ON public.ludorecherche_tag USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_theme_name_4578dd31_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_theme_name_4578dd31_like ON public.ludorecherche_theme USING btree (name varchar_pattern_ops);


--
-- Name: ludorecherche_topic_name_7993cc51_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ludorecherche_topic_name_7993cc51_like ON public.ludorecherche_topic USING btree (name varchar_pattern_ops);


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
-- Name: ludorecherche_addon ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_add_on_game_id_fc9844ac_fk_ludorecherche_game_id FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_publishers ludorecherche_addon__addon_id_336553d8_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_addon__addon_id_336553d8_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_playing_mode ludorecherche_addon__addon_id_448e903f_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_addon__addon_id_448e903f_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_artists ludorecherche_addon__addon_id_dcf26241_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_addon__addon_id_dcf26241_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_designers ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_addon__addon_id_ea0e0c5c_fk_ludoreche FOREIGN KEY (addon_id) REFERENCES public.ludorecherche_addon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_artists ludorecherche_addon__artist_id_aa1adffe_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_artists
    ADD CONSTRAINT ludorecherche_addon__artist_id_aa1adffe_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_designers ludorecherche_addon__designer_id_de893579_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_designers
    ADD CONSTRAINT ludorecherche_addon__designer_id_de893579_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_playing_mode ludorecherche_addon__playingmode_id_92be5978_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_playing_mode
    ADD CONSTRAINT ludorecherche_addon__playingmode_id_92be5978_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon_publishers ludorecherche_addon__publisher_id_a27cddc9_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon_publishers
    ADD CONSTRAINT ludorecherche_addon__publisher_id_a27cddc9_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon ludorecherche_addon_difficulty_id_e5a1666a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_addon_difficulty_id_e5a1666a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_addon ludorecherche_addon_language_id_d156b1dd_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_addon
    ADD CONSTRAINT ludorecherche_addon_language_id_d156b1dd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_background ludorecherche_backgr_theme_id_d2f0d041_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_background
    ADD CONSTRAINT ludorecherche_backgr_theme_id_d2f0d041_fk_ludoreche FOREIGN KEY (theme_id) REFERENCES public.ludorecherche_theme(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_artists ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_artist_id_3e5506bf_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_artists ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_artists
    ADD CONSTRAINT ludorecherche_game_a_game_id_2ba0fcde_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_designers ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_designer_id_8b4d087f_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_designers ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_designers
    ADD CONSTRAINT ludorecherche_game_d_game_id_6d1526cc_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_difficulty_id_c4f6b87a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game ludorecherche_game_language_id_38e7eecd_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game
    ADD CONSTRAINT ludorecherche_game_language_id_38e7eecd_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_mechanism ludorecherche_game_m_game_id_bc22c85a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_m_game_id_bc22c85a_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_mechanism ludorecherche_game_m_mechanism_id_2d137790_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_mechanism
    ADD CONSTRAINT ludorecherche_game_m_mechanism_id_2d137790_fk_ludoreche FOREIGN KEY (mechanism_id) REFERENCES public.ludorecherche_mechanism(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_game_id_62bd95b2_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_publishers ludorecherche_game_p_game_id_a425abf8_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_game_id_a425abf8_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_playing_mode ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_playing_mode
    ADD CONSTRAINT ludorecherche_game_p_playingmode_id_fa02659e_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_publishers ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_publishers
    ADD CONSTRAINT ludorecherche_game_p_publisher_id_5176fa38_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_tag ludorecherche_game_t_game_id_065ca217_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_t_game_id_065ca217_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_topic ludorecherche_game_t_game_id_d0f61157_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_t_game_id_d0f61157_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_topic ludorecherche_game_t_topic_id_e97daab5_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_topic
    ADD CONSTRAINT ludorecherche_game_t_topic_id_e97daab5_fk_ludoreche FOREIGN KEY (topic_id) REFERENCES public.ludorecherche_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_game_tag ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_game_tag
    ADD CONSTRAINT ludorecherche_game_tag_tag_id_d515082c_fk_ludorecherche_tag_id FOREIGN KEY (tag_id) REFERENCES public.ludorecherche_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_games ludorecherche_multi__game_id_790ba75d_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multi__game_id_790ba75d_fk_ludoreche FOREIGN KEY (game_id) REFERENCES public.ludorecherche_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_artists ludorecherche_multia_artist_id_74a26ff8_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multia_artist_id_74a26ff8_fk_ludoreche FOREIGN KEY (artist_id) REFERENCES public.ludorecherche_artist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_designers ludorecherche_multia_designer_id_b83f2be4_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multia_designer_id_b83f2be4_fk_ludoreche FOREIGN KEY (designer_id) REFERENCES public.ludorecherche_designer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon ludorecherche_multia_difficulty_id_2c08dd2a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multia_difficulty_id_2c08dd2a_fk_ludoreche FOREIGN KEY (difficulty_id) REFERENCES public.ludorecherche_difficulty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon ludorecherche_multia_language_id_0cdb5fef_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon
    ADD CONSTRAINT ludorecherche_multia_language_id_0cdb5fef_fk_ludoreche FOREIGN KEY (language_id) REFERENCES public.ludorecherche_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_02284858_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_55fa2c01_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_games ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_games
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_6c77264c_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_artists ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_artists
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_9786d6b9_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_designers ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_designers
    ADD CONSTRAINT ludorecherche_multia_multiaddon_id_f9dc6804_fk_ludoreche FOREIGN KEY (multiaddon_id) REFERENCES public.ludorecherche_multiaddon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_playing_mode ludorecherche_multia_playingmode_id_a5a47f2d_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_playing_mode
    ADD CONSTRAINT ludorecherche_multia_playingmode_id_a5a47f2d_fk_ludoreche FOREIGN KEY (playingmode_id) REFERENCES public.ludorecherche_playingmode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ludorecherche_multiaddon_publishers ludorecherche_multia_publisher_id_526f999a_fk_ludoreche; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ludorecherche_multiaddon_publishers
    ADD CONSTRAINT ludorecherche_multia_publisher_id_526f999a_fk_ludoreche FOREIGN KEY (publisher_id) REFERENCES public.ludorecherche_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
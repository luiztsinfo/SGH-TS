PGDMP     7    .                v            tshosp    10.2    10.2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16393    tshosp    DATABASE     �   CREATE DATABASE tshosp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE tshosp;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    140173    alergias_id_seq    SEQUENCE     q   CREATE SEQUENCE alergias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.alergias_id_seq;
       public       postgres    false    3            �            1259    139829    alergias    TABLE     �   CREATE TABLE alergias (
    id integer DEFAULT nextval('alergias_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    tipo_alergia integer NOT NULL,
    situacao character(1) NOT NULL
);
    DROP TABLE public.alergias;
       public         postgres    false    236    3            �            1259    140214    alergias_he_id_seq    SEQUENCE     t   CREATE SEQUENCE alergias_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.alergias_he_id_seq;
       public       postgres    false    3            �            1259    139839    alergias_he    TABLE     �   CREATE TABLE alergias_he (
    id integer DEFAULT nextval('alergias_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    id_alergia integer NOT NULL
);
    DROP TABLE public.alergias_he;
       public         postgres    false    237    3            �            1259    140216    antecedentes_id_seq    SEQUENCE     u   CREATE SEQUENCE antecedentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.antecedentes_id_seq;
       public       postgres    false    3            �            1259    139807    antecedentes    TABLE     �   CREATE TABLE antecedentes (
    id integer DEFAULT nextval('antecedentes_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    tipo_antecedente integer NOT NULL,
    situacao character(1) NOT NULL
);
     DROP TABLE public.antecedentes;
       public         postgres    false    238    3            �           0    0 $   COLUMN antecedentes.tipo_antecedente    COMMENT     J   COMMENT ON COLUMN antecedentes.tipo_antecedente IS 'familiar ou pessoal';
            public       postgres    false    199            �            1259    140218    antecedentes_paciente_id_seq    SEQUENCE     ~   CREATE SEQUENCE antecedentes_paciente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.antecedentes_paciente_id_seq;
       public       postgres    false    3            �            1259    139817    antecedentes_paciente    TABLE     �  CREATE TABLE antecedentes_paciente (
    id integer DEFAULT nextval('antecedentes_paciente_id_seq'::regclass) NOT NULL,
    id_antecedente integer NOT NULL,
    id_he integer NOT NULL,
    quantidade integer,
    frequencia integer,
    tempoconsumo numeric,
    tempoquimioterapia numeric,
    data_registro date,
    temporadioterapia numeric,
    tipo_antecedente integer DEFAULT 1 NOT NULL,
    obs_geral character varying(255),
    tratado integer,
    tratamento integer
);
 )   DROP TABLE public.antecedentes_paciente;
       public         postgres    false    239    3            �            1259    140220     aprazamento_prescricao_he_id_seq    SEQUENCE     �   CREATE SEQUENCE aprazamento_prescricao_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.aprazamento_prescricao_he_id_seq;
       public       postgres    false    3            �            1259    140040    aprazamento_prescricao_he    TABLE     �   CREATE TABLE aprazamento_prescricao_he (
    id integer DEFAULT nextval('aprazamento_prescricao_he_id_seq'::regclass) NOT NULL,
    id_prescricao_he integer NOT NULL,
    hora time with time zone NOT NULL
);
 -   DROP TABLE public.aprazamento_prescricao_he;
       public         postgres    false    240    3            �            1259    140222    atividade_fisica_he_id_seq    SEQUENCE     |   CREATE SEQUENCE atividade_fisica_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.atividade_fisica_he_id_seq;
       public       postgres    false    3            �            1259    139890    atividadefisica_he    TABLE     �  CREATE TABLE atividadefisica_he (
    id integer DEFAULT nextval('atividade_fisica_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    forca_muscular integer,
    ausencia_forca integer,
    deambula_auxilio integer,
    deambula_sem_auxilio integer,
    cadeira_rodas integer,
    acamado integer,
    repouso_absoluto integer,
    paresias character varying(100),
    paraplegia character varying(100),
    tetraplegia character varying(100),
    plegias character varying(100)
);
 &   DROP TABLE public.atividadefisica_he;
       public         postgres    false    241    3            �            1259    140224    atividades_religiosas_id_seq    SEQUENCE     ~   CREATE SEQUENCE atividades_religiosas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.atividades_religiosas_id_seq;
       public       postgres    false    3            �            1259    139812    atividades_religiosas    TABLE     �   CREATE TABLE atividades_religiosas (
    id integer DEFAULT nextval('atividades_religiosas_id_seq'::regclass) NOT NULL,
    descricao character varying(80) NOT NULL,
    situacao character(1) NOT NULL
);
 )   DROP TABLE public.atividades_religiosas;
       public         postgres    false    242    3            �            1259    140226    ausculta_cardiaca_he_id_seq    SEQUENCE     }   CREATE SEQUENCE ausculta_cardiaca_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ausculta_cardiaca_he_id_seq;
       public       postgres    false    3            �            1259    139953    ausculta_cardiaca_he    TABLE     �  CREATE TABLE ausculta_cardiaca_he (
    id integer DEFAULT nextval('ausculta_cardiaca_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    palpacao_ictus_cordis character varying(50),
    fremito_tatil character varying(50),
    foco_aortico character varying(50),
    foco_pulmonar character varying(50),
    foco_mitral character varying(50),
    foco_tricuspide character varying(50)
);
 (   DROP TABLE public.ausculta_cardiaca_he;
       public         postgres    false    243    3            �            1259    140228    ausculta_pulmonar_he_id_seq    SEQUENCE     }   CREATE SEQUENCE ausculta_pulmonar_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ausculta_pulmonar_he_id_seq;
       public       postgres    false    3            �            1259    139948    ausculta_pulmonar_he    TABLE     I  CREATE TABLE ausculta_pulmonar_he (
    id integer DEFAULT nextval('ausculta_pulmonar_he_id_seq'::regclass) NOT NULL,
    id_he integer,
    excursao_respiratoria character varying(50),
    fremito_toracovocal character varying(50),
    traqueia character varying(20),
    tipo_tosse integer,
    eupneia integer,
    taquipneia integer,
    bradipneia integer,
    murmurios_vesiculares integer,
    roncos integer,
    sibilos integer,
    estertores integer,
    crepitantes integer,
    expectoracao_espontanea integer,
    percussao_respiratoria_costelas character varying(60)
);
 (   DROP TABLE public.ausculta_pulmonar_he;
       public         postgres    false    244    3            �            1259    140230    avaliacao_neurologica_he_id_seq    SEQUENCE     �   CREATE SEQUENCE avaliacao_neurologica_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.avaliacao_neurologica_he_id_seq;
       public       postgres    false    3            �            1259    139882    avaliacao_neurologica_he    TABLE     '  CREATE TABLE avaliacao_neurologica_he (
    id integer DEFAULT nextval('avaliacao_neurologica_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    escala_coma numeric,
    sonolencia integer,
    torpor integer,
    agitado integer,
    desorientado integer,
    orientado integer
);
 ,   DROP TABLE public.avaliacao_neurologica_he;
       public         postgres    false    245    3            �            1259    140232    avaliacao_renal_he_id_seq    SEQUENCE     {   CREATE SEQUENCE avaliacao_renal_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.avaliacao_renal_he_id_seq;
       public       postgres    false    3            �            1259    139966    avaliacao_renal_he    TABLE     �  CREATE TABLE avaliacao_renal_he (
    id integer DEFAULT nextval('avaliacao_renal_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    obs_drenos character varying(50),
    obs_curativos character varying(50),
    obs_ostomias character varying(50),
    svd integer,
    fralda_quantidade integer,
    caracteristicas_fralda character varying(100),
    colostomia_quantidade numeric,
    colostomia_caracteristicas character varying(100),
    normal integer,
    anormal integer,
    dor_percussao integer,
    sem_dor integer,
    drenos integer,
    curativos integer,
    ostomias integer,
    presente integer,
    ausente integer,
    espontanea integer,
    ardencia integer,
    oliguria integer,
    disuria integer,
    anuria integer,
    hematuria integer,
    polaciuria integer,
    incontinencia_urinaria integer,
    globo_vesical integer,
    presente_intestinais integer,
    constipacao integer,
    melena integer,
    diarreia integer,
    enterorragia integer,
    fralda integer,
    colostomia integer,
    svd_fralda integer,
    caracteristica_diurese character varying(60),
    ausente_tempo character varying(60),
    fralda_tipo character varying(60),
    colostomia_tipo character varying(60)
);
 &   DROP TABLE public.avaliacao_renal_he;
       public         postgres    false    246    3            �            1259    140234    boca_faringe_he_id_seq    SEQUENCE     x   CREATE SEQUENCE boca_faringe_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.boca_faringe_he_id_seq;
       public       postgres    false    3            �            1259    139928    boca_faringe_he    TABLE     o  CREATE TABLE boca_faringe_he (
    id integer DEFAULT nextval('boca_faringe_he_id_seq'::regclass) NOT NULL,
    id_he integer,
    tipo_lesao integer,
    local_lesao character varying(50),
    lingua_saburrosa integer,
    dislalia integer,
    disfasia integer,
    disfonia integer,
    labios_ressecados integer,
    cianose_labial integer,
    lesoes integer
);
 #   DROP TABLE public.boca_faringe_he;
       public         postgres    false    247    3            �            1259    140236    cidades_id_seq    SEQUENCE     p   CREATE SEQUENCE cidades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cidades_id_seq;
       public       postgres    false    3            �            1259    139797    cidades    TABLE     �   CREATE TABLE cidades (
    id integer DEFAULT nextval('cidades_id_seq'::regclass) NOT NULL,
    nome character varying(60) NOT NULL
);
    DROP TABLE public.cidades;
       public         postgres    false    248    3            �            1259    140238    cirurgias_id_seq    SEQUENCE     r   CREATE SEQUENCE cirurgias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cirurgias_id_seq;
       public       postgres    false    3            �            1259    139849 	   cirurgias    TABLE     �   CREATE TABLE cirurgias (
    id integer DEFAULT nextval('cirurgias_id_seq'::regclass) NOT NULL,
    descricao character varying(150) NOT NULL,
    situacao character(1) NOT NULL
);
    DROP TABLE public.cirurgias;
       public         postgres    false    249    3            �            1259    140240    cirurgias_he_id_seq    SEQUENCE     u   CREATE SEQUENCE cirurgias_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cirurgias_he_id_seq;
       public       postgres    false    3            �            1259    139854    cirurgias_he    TABLE     �   CREATE TABLE cirurgias_he (
    id integer DEFAULT nextval('cirurgias_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    id_cirurgia integer NOT NULL
);
     DROP TABLE public.cirurgias_he;
       public         postgres    false    250    3            �            1259    140242    condicoesgerais_he_id_seq    SEQUENCE     {   CREATE SEQUENCE condicoesgerais_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.condicoesgerais_he_id_seq;
       public       postgres    false    3            �            1259    139877    condicoesgerais_he    TABLE     }  CREATE TABLE condicoesgerais_he (
    id integer DEFAULT nextval('condicoesgerais_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    beg integer,
    reg integer,
    meg integer,
    apatico integer,
    cianotico integer,
    icterico integer,
    desidratado integer,
    sudoretico integer,
    dispneico integer,
    edema integer,
    palidez_cutanea integer
);
 &   DROP TABLE public.condicoesgerais_he;
       public         postgres    false    251    3            �            1259    140244    couro_cabeludo_he_id_seq    SEQUENCE     z   CREATE SEQUENCE couro_cabeludo_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.couro_cabeludo_he_id_seq;
       public       postgres    false    3            �            1259    139904    couro_cabeludo_he    TABLE     N  CREATE TABLE couro_cabeludo_he (
    id integer DEFAULT nextval('couro_cabeludo_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    seborreia integer,
    desmatites integer,
    sujidade integer,
    pediculose integer,
    lesoes integer,
    tamanho_lesao character varying(60),
    tipo_lesao character varying(60)
);
 %   DROP TABLE public.couro_cabeludo_he;
       public         postgres    false    252    3            �            1259    140246    diagnosticos_enfermagem_id_seq    SEQUENCE     �   CREATE SEQUENCE diagnosticos_enfermagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.diagnosticos_enfermagem_id_seq;
       public       postgres    false    3            �            1259    140002    diagnosticos_enfermagem    TABLE     �   CREATE TABLE diagnosticos_enfermagem (
    id integer DEFAULT nextval('diagnosticos_enfermagem_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    situacao character varying(1)
);
 +   DROP TABLE public.diagnosticos_enfermagem;
       public         postgres    false    253    3            �            1259    140248    diagnosticos_he_id_seq    SEQUENCE     x   CREATE SEQUENCE diagnosticos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.diagnosticos_he_id_seq;
       public       postgres    false    3            �            1259    140007    diagnosticos_he    TABLE     �   CREATE TABLE diagnosticos_he (
    id integer DEFAULT nextval('diagnosticos_he_id_seq'::regclass) NOT NULL,
    id_diagnostico integer NOT NULL,
    id_he integer NOT NULL
);
 #   DROP TABLE public.diagnosticos_he;
       public         postgres    false    254    3            �            1259    140250    extremidades_he_id_seq    SEQUENCE     x   CREATE SEQUENCE extremidades_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.extremidades_he_id_seq;
       public       postgres    false    3            �            1259    139997    extremidades_he    TABLE     _  CREATE TABLE extremidades_he (
    id integer DEFAULT nextval('extremidades_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    edema character varying(50),
    lesoes character varying(50),
    deformidades character varying(50),
    cateteres_venenosos character varying(100),
    local_diminuida character varying(50),
    sinais_infeccao_fungos integer,
    baqueteamento_dedos integer,
    desde character varying(30),
    normal integer,
    diminuida integer,
    edema_mmii character varying(70),
    ulceras_venosas character varying(70),
    ulceras_arteriais character varying(70)
);
 #   DROP TABLE public.extremidades_he;
       public         postgres    false    255    3                        1259    140252    genitais_femininos_he_id_seq    SEQUENCE     ~   CREATE SEQUENCE genitais_femininos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.genitais_femininos_he_id_seq;
       public       postgres    false    3            �            1259    139987    genitais_he    TABLE     �  CREATE TABLE genitais_he (
    id integer DEFAULT nextval('genitais_femininos_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    tipo_secrecao integer,
    lesoes integer,
    odor integer,
    dor_miccoes integer,
    prurido integer,
    presenca_secrecao integer,
    suspeita_dst integer,
    ultima_coleta_co integer,
    atento_dst integer,
    usa_preservativo integer,
    escrotal_edema integer,
    escrotal_hiperemia integer,
    presenca_parasitas integer,
    anal_edema integer,
    anal_ulceracoes integer,
    anal_fissuras integer,
    anal_fistulas integer,
    anal_hemorroidas integer,
    anal_abscesso integer
);
    DROP TABLE public.genitais_he;
       public         postgres    false    256    3                       1259    140254    genitais_masculinos_he_id_seq    SEQUENCE        CREATE SEQUENCE genitais_masculinos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.genitais_masculinos_he_id_seq;
       public       postgres    false    3                       1259    140256    genitalias_he_id_seq    SEQUENCE     v   CREATE SEQUENCE genitalias_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genitalias_he_id_seq;
       public       postgres    false    3                       1259    140258 	   he_id_seq    SEQUENCE     k   CREATE SEQUENCE he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.he_id_seq;
       public       postgres    false    3            �            1259    139834    he    TABLE     >  CREATE TABLE he (
    id integer DEFAULT nextval('he_id_seq'::regclass) NOT NULL,
    data_admissao date NOT NULL,
    id_paciente integer NOT NULL,
    id_enfermeiro integer NOT NULL,
    leito character varying(20) NOT NULL,
    idade character varying(60) NOT NULL,
    numero_filhos integer,
    data_alta date
);
    DROP TABLE public.he;
       public         postgres    false    259    3                       1259    140260    homem_he_id_seq    SEQUENCE     q   CREATE SEQUENCE homem_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.homem_he_id_seq;
       public       postgres    false    3            �            1259    139859    homem_he    TABLE     �   CREATE TABLE homem_he (
    id integer DEFAULT nextval('homem_he_id_seq'::regclass) NOT NULL,
    exame_preventivo_prostata date,
    resultado_exame_prostata character varying(100),
    id_he integer NOT NULL,
    atividade_sexual integer
);
    DROP TABLE public.homem_he;
       public         postgres    false    260    3                       1259    140262    hospitais_id_seq    SEQUENCE     r   CREATE SEQUENCE hospitais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hospitais_id_seq;
       public       postgres    false    3            �            1259    16394 	   hospitais    TABLE     �   CREATE TABLE hospitais (
    id integer DEFAULT nextval('hospitais_id_seq'::regclass) NOT NULL,
    razaosocial character(100) NOT NULL
);
    DROP TABLE public.hospitais;
       public         postgres    false    261    3                       1259    140813    infs_antecedentes    TABLE       CREATE TABLE infs_antecedentes (
    id integer NOT NULL,
    id_he integer NOT NULL,
    data_registro date NOT NULL,
    tempo_internacao_anterior numeric,
    motivo_internacao character varying(200),
    tempo_transfusaosanguinea_anterior numeric,
    obs_gastrointestinais_hepatobiliares character varying(200),
    obs_alteracoes_osseas character varying(200),
    obs_alteracoes_renais_urinarias character varying(200),
    obs_alteracoes_cardiovasculares character varying(200),
    obs_alteracoes_pulmonares character varying(200)
);
 %   DROP TABLE public.infs_antecedentes;
       public         postgres    false    3                       1259    140264 "   itens_prescricao_enfermagem_id_seq    SEQUENCE     �   CREATE SEQUENCE itens_prescricao_enfermagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.itens_prescricao_enfermagem_id_seq;
       public       postgres    false    3            �            1259    140030    itens_prescricao_enfermagem    TABLE     �   CREATE TABLE itens_prescricao_enfermagem (
    id integer DEFAULT nextval('itens_prescricao_enfermagem_id_seq'::regclass) NOT NULL,
    id_prescricao_enfermagem integer NOT NULL,
    descricao character varying(40) NOT NULL
);
 /   DROP TABLE public.itens_prescricao_enfermagem;
       public         postgres    false    262    3                       1259    140266    mulher_he_id_seq    SEQUENCE     r   CREATE SEQUENCE mulher_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.mulher_he_id_seq;
       public       postgres    false    3            �            1259    139864 	   mulher_he    TABLE     �  CREATE TABLE mulher_he (
    id integer DEFAULT nextval('mulher_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    dum character varying(50),
    menopausa_desde date,
    contraceptivo integer,
    data_ginecologico_preventivo date,
    resultado_ginecologico_preventivo character varying(200),
    g integer,
    p integer,
    a integer,
    autoexame_mama integer
);
    DROP TABLE public.mulher_he;
       public         postgres    false    263    3                       1259    140268    nariz_he_id_seq    SEQUENCE     q   CREATE SEQUENCE nariz_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.nariz_he_id_seq;
       public       postgres    false    3            �            1259    139923    nariz_he    TABLE     (  CREATE TABLE nariz_he (
    id integer DEFAULT nextval('nariz_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    secrecao integer,
    sujidade integer,
    epistaxe integer,
    rinorreia integer,
    desvio_septo integer,
    lesao integer,
    tipo_lesao character varying(50)
);
    DROP TABLE public.nariz_he;
       public         postgres    false    264    3            	           1259    140270    olhos_he_id_seq    SEQUENCE     q   CREATE SEQUENCE olhos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.olhos_he_id_seq;
       public       postgres    false    3            �            1259    139912    olhos_he    TABLE     +  CREATE TABLE olhos_he (
    id integer DEFAULT nextval('olhos_he_id_seq'::regclass) NOT NULL,
    id_he integer,
    qual_ausente character varying(50),
    obs_outros character varying(50),
    preservada integer,
    diminuida integer,
    ausente integer,
    corada integer,
    descorada integer,
    hiperemia integer,
    ictericia integer,
    anemia integer,
    sujidade integer,
    edema_palpebral integer,
    ptose_palpebral integer,
    isocoricas integer,
    anisocoricas integer,
    fotoreagentes integer,
    sem_fotoreacao integer
);
    DROP TABLE public.olhos_he;
       public         postgres    false    265    3            
           1259    140272    ouvidos_he_id_seq    SEQUENCE     s   CREATE SEQUENCE ouvidos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.ouvidos_he_id_seq;
       public       postgres    false    3            �            1259    139915 
   ouvidos_he    TABLE     �  CREATE TABLE ouvidos_he (
    id integer DEFAULT nextval('ouvidos_he_id_seq'::regclass) NOT NULL,
    id_he integer,
    qual_ausente character varying(50),
    tipo_lesao integer,
    local_lesao character varying(50),
    tipo_secrecao integer,
    local_secrecao character varying(50),
    preservada integer,
    diminuida integer,
    ausente integer,
    otalgia integer,
    lesao integer,
    secrecao integer
);
    DROP TABLE public.ouvidos_he;
       public         postgres    false    266    3                       1259    140274    pele_he_id_seq    SEQUENCE     p   CREATE SEQUENCE pele_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pele_he_id_seq;
       public       postgres    false    3                       1259    140866    pele_he    TABLE     �  CREATE TABLE pele_he (
    id integer DEFAULT nextval('pele_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    palidez integer,
    cianose integer,
    hiperemia integer,
    integra integer,
    lesionada integer,
    local_lesao character varying(20),
    prurido integer,
    deformidades integer,
    torgor_normal integer,
    torgor_diminuido integer,
    equimose integer,
    petequias integer,
    eritemas integer,
    exantemas integer,
    hematomas integer,
    urticarias integer,
    papulas integer,
    tumor integer,
    nodulos integer,
    abscessos integer,
    pustulas integer,
    bolhas integer,
    vesiculas integer,
    local_manchas character varying(150),
    tamanho_manchas character varying(20)
);
    DROP TABLE public.pele_he;
       public         postgres    false    267    3                       1259    140276    pescoco_he_id_seq    SEQUENCE     s   CREATE SEQUENCE pescoco_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pescoco_he_id_seq;
       public       postgres    false    3            �            1259    139938 
   pescoco_he    TABLE       CREATE TABLE pescoco_he (
    id integer DEFAULT nextval('pescoco_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    alteracoes character varying(150),
    ganglios_linfaticos integer,
    dor_palpacao integer,
    indolor_palpacao integer,
    turgidez integer
);
    DROP TABLE public.pescoco_he;
       public         postgres    false    268    3            �            1259    139802    pessoas    TABLE     �  CREATE TABLE pessoas (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    id_cidade integer NOT NULL,
    tipo_pessoa character(1) NOT NULL,
    registro_profissional character varying(20),
    nascimento date NOT NULL,
    situacao character(1) NOT NULL,
    tipo_registro integer,
    sexo integer,
    cor integer,
    estado_civil integer,
    escolaridade integer,
    id_religiao integer
);
    DROP TABLE public.pessoas;
       public         postgres    false    3            �           0    0    COLUMN pessoas.tipo_pessoa    COMMENT     I   COMMENT ON COLUMN pessoas.tipo_pessoa IS '0 - paciente
1 - colaborador';
            public       postgres    false    198                       1259    140278    prescricao_enfermagem_he_id_seq    SEQUENCE     �   CREATE SEQUENCE prescricao_enfermagem_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.prescricao_enfermagem_he_id_seq;
       public       postgres    false    3            �            1259    140035    prescricao_enfermagem_he    TABLE     �   CREATE TABLE prescricao_enfermagem_he (
    id integer DEFAULT nextval('prescricao_enfermagem_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    id_prescricao_enfermagem integer NOT NULL,
    frequencia integer
);
 ,   DROP TABLE public.prescricao_enfermagem_he;
       public         postgres    false    269    3            �           0    0 *   COLUMN prescricao_enfermagem_he.frequencia    COMMENT     e   COMMENT ON COLUMN prescricao_enfermagem_he.frequencia IS 'criar um combobox com varias frequencias';
            public       postgres    false    234                       1259    140280    prescricoes_enfermagem_id_seq    SEQUENCE        CREATE SEQUENCE prescricoes_enfermagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.prescricoes_enfermagem_id_seq;
       public       postgres    false    3            �            1259    140025    prescricoes_enfermagem    TABLE     �   CREATE TABLE prescricoes_enfermagem (
    id integer DEFAULT nextval('prescricoes_enfermagem_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    situacao character(1) NOT NULL
);
 *   DROP TABLE public.prescricoes_enfermagem;
       public         postgres    false    270    3                       1259    140778 	   religioes    TABLE     �   CREATE TABLE religioes (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL,
    situacao character(1) NOT NULL
);
    DROP TABLE public.religioes;
       public         postgres    false    3                       1259    140783    religioes_id_seq    SEQUENCE     r   CREATE SEQUENCE religioes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.religioes_id_seq;
       public       postgres    false    3                       1259    140282    religiosas_he_id_seq    SEQUENCE     v   CREATE SEQUENCE religiosas_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.religiosas_he_id_seq;
       public       postgres    false    3            �            1259    139844    religiosas_he    TABLE     �   CREATE TABLE religiosas_he (
    id integer DEFAULT nextval('religiosas_he_id_seq'::regclass) NOT NULL,
    id_atividade_religiosa integer NOT NULL,
    id_he integer NOT NULL
);
 !   DROP TABLE public.religiosas_he;
       public         postgres    false    271    3                       1259    140284    risco_queda_he_id_seq    SEQUENCE     w   CREATE SEQUENCE risco_queda_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.risco_queda_he_id_seq;
       public       postgres    false    3            �            1259    140020    risco_queda_he    TABLE     �  CREATE TABLE risco_queda_he (
    id integer DEFAULT nextval('risco_queda_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    maior_65 integer,
    urgencia_urinaria_fecal integer,
    deficit_avs integer,
    uso_sedativos integer,
    dificuldade_marcha integer,
    disturbio_comportamentos integer,
    mobilidade_prejudicada integer,
    hipotensao_postural integer,
    historico_queda_ultimo_ano integer,
    hipoxia_hipoxemia integer
);
 "   DROP TABLE public.risco_queda_he;
       public         postgres    false    272    3                       1259    140286    risco_ulcera_decubito_he_id_seq    SEQUENCE     �   CREATE SEQUENCE risco_ulcera_decubito_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.risco_ulcera_decubito_he_id_seq;
       public       postgres    false    3            �            1259    140012    risco_ulcera_decubito_he    TABLE     t  CREATE TABLE risco_ulcera_decubito_he (
    id integer DEFAULT nextval('risco_ulcera_decubito_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    percepcao_sensorial integer,
    umidade integer,
    atividade integer,
    mobilidade integer,
    nutricao integer,
    friccao_cisalhamento integer,
    valor_score numeric,
    braden character varying(30)
);
 ,   DROP TABLE public.risco_ulcera_decubito_he;
       public         postgres    false    273    3                       1259    140288    sinais_vitais_he_id_seq    SEQUENCE     y   CREATE SEQUENCE sinais_vitais_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sinais_vitais_he_id_seq;
       public       postgres    false    3            �            1259    139869    sinais_vitais_he    TABLE     �   CREATE TABLE sinais_vitais_he (
    id integer DEFAULT nextval('sinais_vitais_he_id_seq'::regclass) NOT NULL,
    temperatura numeric,
    fc numeric,
    fr numeric,
    pa numeric,
    spo2 numeric,
    id_he integer
);
 $   DROP TABLE public.sinais_vitais_he;
       public         postgres    false    274    3                       1259    140290    tgi_he_id_seq    SEQUENCE     o   CREATE SEQUENCE tgi_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tgi_he_id_seq;
       public       postgres    false    3            �            1259    139958    tgi_he    TABLE     �  CREATE TABLE tgi_he (
    id integer DEFAULT nextval('tgi_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    cicatrizes character varying(50),
    outros_achados character varying(50),
    medida_figado numeric,
    espontanea integer,
    espontanea_assistida integer,
    npo integer,
    sng integer,
    sne integer,
    npt integer,
    sng_aberta integer,
    jejunostomia integer,
    gastrostomia integer,
    globoso integer,
    plano integer,
    escavado integer,
    flacido integer,
    distendido integer,
    timpanico integer,
    inspecao integer,
    normais_audiveis integer,
    ausentes integer,
    hiperativos integer,
    hipoativos integer,
    sons_timpanicos integer,
    sons_macicos integer,
    indolor integer,
    palpacao_fig_normal integer,
    palpacao_fig_alterado integer,
    percussao_fig_normal integer,
    percussao_fig_alterado integer,
    presenca_massa_anormal character varying(60),
    doloroso_palpacao character varying(60),
    ascitico integer
);
    DROP TABLE public.tgi_he;
       public         postgres    false    275    3                       1259    140292    torax_he_id_seq    SEQUENCE     q   CREATE SEQUENCE torax_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.torax_he_id_seq;
       public       postgres    false    3            �            1259    139943    torax_he    TABLE     F  CREATE TABLE torax_he (
    id integer DEFAULT nextval('torax_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    obs_alterado character varying(50),
    presenca_cateteres_centrais character varying(50),
    forma_normal integer,
    forma_alterado integer,
    simetrico integer,
    assimetrico integer,
    funil integer,
    barril integer,
    pombo integer,
    cifoescoliose integer,
    expansibilidade_normal integer,
    expansibilidade_diminuida integer,
    presenca_desde character varying(50),
    local_expansibilidade_diminuida character varying(50)
);
    DROP TABLE public.torax_he;
       public         postgres    false    276    3                       1259    140294    vias_aereas_he_id_seq    SEQUENCE     w   CREATE SEQUENCE vias_aereas_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vias_aereas_he_id_seq;
       public       postgres    false    3            �            1259    139933    vias_aereas_he    TABLE     j  CREATE TABLE vias_aereas_he (
    id integer DEFAULT nextval('vias_aereas_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    fio2 character varying(20),
    peep character varying(20),
    comissura_labial character varying(20),
    controlado integer,
    assistido integer,
    assistido_controlado integer,
    mandatorio_intermitente integer
);
 "   DROP TABLE public.vias_aereas_he;
       public         postgres    false    277    3            �          0    139829    alergias 
   TABLE DATA               B   COPY alergias (id, descricao, tipo_alergia, situacao) FROM stdin;
    public       postgres    false    202   �]      �          0    139839    alergias_he 
   TABLE DATA               5   COPY alergias_he (id, id_he, id_alergia) FROM stdin;
    public       postgres    false    204   �]      �          0    139807    antecedentes 
   TABLE DATA               J   COPY antecedentes (id, descricao, tipo_antecedente, situacao) FROM stdin;
    public       postgres    false    199   �]      �          0    139817    antecedentes_paciente 
   TABLE DATA               �   COPY antecedentes_paciente (id, id_antecedente, id_he, quantidade, frequencia, tempoconsumo, tempoquimioterapia, data_registro, temporadioterapia, tipo_antecedente, obs_geral, tratado, tratamento) FROM stdin;
    public       postgres    false    201   1^      �          0    140040    aprazamento_prescricao_he 
   TABLE DATA               H   COPY aprazamento_prescricao_he (id, id_prescricao_he, hora) FROM stdin;
    public       postgres    false    235   �^      �          0    139890    atividadefisica_he 
   TABLE DATA               �   COPY atividadefisica_he (id, id_he, forca_muscular, ausencia_forca, deambula_auxilio, deambula_sem_auxilio, cadeira_rodas, acamado, repouso_absoluto, paresias, paraplegia, tetraplegia, plegias) FROM stdin;
    public       postgres    false    213   �^      �          0    139812    atividades_religiosas 
   TABLE DATA               A   COPY atividades_religiosas (id, descricao, situacao) FROM stdin;
    public       postgres    false    200   \_      �          0    139953    ausculta_cardiaca_he 
   TABLE DATA               �   COPY ausculta_cardiaca_he (id, id_he, palpacao_ictus_cordis, fremito_tatil, foco_aortico, foco_pulmonar, foco_mitral, foco_tricuspide) FROM stdin;
    public       postgres    false    223   �_      �          0    139948    ausculta_pulmonar_he 
   TABLE DATA                 COPY ausculta_pulmonar_he (id, id_he, excursao_respiratoria, fremito_toracovocal, traqueia, tipo_tosse, eupneia, taquipneia, bradipneia, murmurios_vesiculares, roncos, sibilos, estertores, crepitantes, expectoracao_espontanea, percussao_respiratoria_costelas) FROM stdin;
    public       postgres    false    222   �_      �          0    139882    avaliacao_neurologica_he 
   TABLE DATA               y   COPY avaliacao_neurologica_he (id, id_he, escala_coma, sonolencia, torpor, agitado, desorientado, orientado) FROM stdin;
    public       postgres    false    212   �_      �          0    139966    avaliacao_renal_he 
   TABLE DATA               ,  COPY avaliacao_renal_he (id, id_he, obs_drenos, obs_curativos, obs_ostomias, svd, fralda_quantidade, caracteristicas_fralda, colostomia_quantidade, colostomia_caracteristicas, normal, anormal, dor_percussao, sem_dor, drenos, curativos, ostomias, presente, ausente, espontanea, ardencia, oliguria, disuria, anuria, hematuria, polaciuria, incontinencia_urinaria, globo_vesical, presente_intestinais, constipacao, melena, diarreia, enterorragia, fralda, colostomia, svd_fralda, caracteristica_diurese, ausente_tempo, fralda_tipo, colostomia_tipo) FROM stdin;
    public       postgres    false    225   `      �          0    139928    boca_faringe_he 
   TABLE DATA               �   COPY boca_faringe_he (id, id_he, tipo_lesao, local_lesao, lingua_saburrosa, dislalia, disfasia, disfonia, labios_ressecados, cianose_labial, lesoes) FROM stdin;
    public       postgres    false    218   _`      �          0    139797    cidades 
   TABLE DATA               $   COPY cidades (id, nome) FROM stdin;
    public       postgres    false    197   �`      �          0    139849 	   cirurgias 
   TABLE DATA               5   COPY cirurgias (id, descricao, situacao) FROM stdin;
    public       postgres    false    206   a      �          0    139854    cirurgias_he 
   TABLE DATA               7   COPY cirurgias_he (id, id_he, id_cirurgia) FROM stdin;
    public       postgres    false    207   Oa      �          0    139877    condicoesgerais_he 
   TABLE DATA               �   COPY condicoesgerais_he (id, id_he, beg, reg, meg, apatico, cianotico, icterico, desidratado, sudoretico, dispneico, edema, palidez_cutanea) FROM stdin;
    public       postgres    false    211   �a      �          0    139904    couro_cabeludo_he 
   TABLE DATA                  COPY couro_cabeludo_he (id, id_he, seborreia, desmatites, sujidade, pediculose, lesoes, tamanho_lesao, tipo_lesao) FROM stdin;
    public       postgres    false    214   �a      �          0    140002    diagnosticos_enfermagem 
   TABLE DATA               C   COPY diagnosticos_enfermagem (id, descricao, situacao) FROM stdin;
    public       postgres    false    228   �a      �          0    140007    diagnosticos_he 
   TABLE DATA               =   COPY diagnosticos_he (id, id_diagnostico, id_he) FROM stdin;
    public       postgres    false    229   �b      �          0    139997    extremidades_he 
   TABLE DATA               �   COPY extremidades_he (id, id_he, edema, lesoes, deformidades, cateteres_venenosos, local_diminuida, sinais_infeccao_fungos, baqueteamento_dedos, desde, normal, diminuida, edema_mmii, ulceras_venosas, ulceras_arteriais) FROM stdin;
    public       postgres    false    227   �b      �          0    139987    genitais_he 
   TABLE DATA               A  COPY genitais_he (id, id_he, tipo_secrecao, lesoes, odor, dor_miccoes, prurido, presenca_secrecao, suspeita_dst, ultima_coleta_co, atento_dst, usa_preservativo, escrotal_edema, escrotal_hiperemia, presenca_parasitas, anal_edema, anal_ulceracoes, anal_fissuras, anal_fistulas, anal_hemorroidas, anal_abscesso) FROM stdin;
    public       postgres    false    226   Yc      �          0    139834    he 
   TABLE DATA               l   COPY he (id, data_admissao, id_paciente, id_enfermeiro, leito, idade, numero_filhos, data_alta) FROM stdin;
    public       postgres    false    203   �c      �          0    139859    homem_he 
   TABLE DATA               m   COPY homem_he (id, exame_preventivo_prostata, resultado_exame_prostata, id_he, atividade_sexual) FROM stdin;
    public       postgres    false    208   1e      �          0    16394 	   hospitais 
   TABLE DATA               -   COPY hospitais (id, razaosocial) FROM stdin;
    public       postgres    false    196   Ne      �          0    140813    infs_antecedentes 
   TABLE DATA               *  COPY infs_antecedentes (id, id_he, data_registro, tempo_internacao_anterior, motivo_internacao, tempo_transfusaosanguinea_anterior, obs_gastrointestinais_hepatobiliares, obs_alteracoes_osseas, obs_alteracoes_renais_urinarias, obs_alteracoes_cardiovasculares, obs_alteracoes_pulmonares) FROM stdin;
    public       postgres    false    280   ke      �          0    140030    itens_prescricao_enfermagem 
   TABLE DATA               W   COPY itens_prescricao_enfermagem (id, id_prescricao_enfermagem, descricao) FROM stdin;
    public       postgres    false    233   �e      �          0    139864 	   mulher_he 
   TABLE DATA               �   COPY mulher_he (id, id_he, dum, menopausa_desde, contraceptivo, data_ginecologico_preventivo, resultado_ginecologico_preventivo, g, p, a, autoexame_mama) FROM stdin;
    public       postgres    false    209   �e      �          0    139923    nariz_he 
   TABLE DATA               p   COPY nariz_he (id, id_he, secrecao, sujidade, epistaxe, rinorreia, desvio_septo, lesao, tipo_lesao) FROM stdin;
    public       postgres    false    217   f      �          0    139912    olhos_he 
   TABLE DATA               �   COPY olhos_he (id, id_he, qual_ausente, obs_outros, preservada, diminuida, ausente, corada, descorada, hiperemia, ictericia, anemia, sujidade, edema_palpebral, ptose_palpebral, isocoricas, anisocoricas, fotoreagentes, sem_fotoreacao) FROM stdin;
    public       postgres    false    215   Zf      �          0    139915 
   ouvidos_he 
   TABLE DATA               �   COPY ouvidos_he (id, id_he, qual_ausente, tipo_lesao, local_lesao, tipo_secrecao, local_secrecao, preservada, diminuida, ausente, otalgia, lesao, secrecao) FROM stdin;
    public       postgres    false    216   �f      �          0    140866    pele_he 
   TABLE DATA               =  COPY pele_he (id, id_he, palidez, cianose, hiperemia, integra, lesionada, local_lesao, prurido, deformidades, torgor_normal, torgor_diminuido, equimose, petequias, eritemas, exantemas, hematomas, urticarias, papulas, tumor, nodulos, abscessos, pustulas, bolhas, vesiculas, local_manchas, tamanho_manchas) FROM stdin;
    public       postgres    false    281   �f      �          0    139938 
   pescoco_he 
   TABLE DATA               s   COPY pescoco_he (id, id_he, alteracoes, ganglios_linfaticos, dor_palpacao, indolor_palpacao, turgidez) FROM stdin;
    public       postgres    false    220   �f      �          0    139802    pessoas 
   TABLE DATA               �   COPY pessoas (id, nome, id_cidade, tipo_pessoa, registro_profissional, nascimento, situacao, tipo_registro, sexo, cor, estado_civil, escolaridade, id_religiao) FROM stdin;
    public       postgres    false    198   @g      �          0    140035    prescricao_enfermagem_he 
   TABLE DATA               \   COPY prescricao_enfermagem_he (id, id_he, id_prescricao_enfermagem, frequencia) FROM stdin;
    public       postgres    false    234   �h      �          0    140025    prescricoes_enfermagem 
   TABLE DATA               B   COPY prescricoes_enfermagem (id, descricao, situacao) FROM stdin;
    public       postgres    false    232   �h      �          0    140778 	   religioes 
   TABLE DATA               5   COPY religioes (id, descricao, situacao) FROM stdin;
    public       postgres    false    278   �h      �          0    139844    religiosas_he 
   TABLE DATA               C   COPY religiosas_he (id, id_atividade_religiosa, id_he) FROM stdin;
    public       postgres    false    205   &i      �          0    140020    risco_queda_he 
   TABLE DATA               �   COPY risco_queda_he (id, id_he, maior_65, urgencia_urinaria_fecal, deficit_avs, uso_sedativos, dificuldade_marcha, disturbio_comportamentos, mobilidade_prejudicada, hipotensao_postural, historico_queda_ultimo_ano, hipoxia_hipoxemia) FROM stdin;
    public       postgres    false    231   Wi      �          0    140012    risco_ulcera_decubito_he 
   TABLE DATA               �   COPY risco_ulcera_decubito_he (id, id_he, percepcao_sensorial, umidade, atividade, mobilidade, nutricao, friccao_cisalhamento, valor_score, braden) FROM stdin;
    public       postgres    false    230   ti      �          0    139869    sinais_vitais_he 
   TABLE DATA               M   COPY sinais_vitais_he (id, temperatura, fc, fr, pa, spo2, id_he) FROM stdin;
    public       postgres    false    210   �i      �          0    139958    tgi_he 
   TABLE DATA               �  COPY tgi_he (id, id_he, cicatrizes, outros_achados, medida_figado, espontanea, espontanea_assistida, npo, sng, sne, npt, sng_aberta, jejunostomia, gastrostomia, globoso, plano, escavado, flacido, distendido, timpanico, inspecao, normais_audiveis, ausentes, hiperativos, hipoativos, sons_timpanicos, sons_macicos, indolor, palpacao_fig_normal, palpacao_fig_alterado, percussao_fig_normal, percussao_fig_alterado, presenca_massa_anormal, doloroso_palpacao, ascitico) FROM stdin;
    public       postgres    false    224   �i      �          0    139943    torax_he 
   TABLE DATA                 COPY torax_he (id, id_he, obs_alterado, presenca_cateteres_centrais, forma_normal, forma_alterado, simetrico, assimetrico, funil, barril, pombo, cifoescoliose, expansibilidade_normal, expansibilidade_diminuida, presenca_desde, local_expansibilidade_diminuida) FROM stdin;
    public       postgres    false    221   Zj      �          0    139933    vias_aereas_he 
   TABLE DATA               �   COPY vias_aereas_he (id, id_he, fio2, peep, comissura_labial, controlado, assistido, assistido_controlado, mandatorio_intermitente) FROM stdin;
    public       postgres    false    219   �j      �           0    0    alergias_he_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('alergias_he_id_seq', 1, false);
            public       postgres    false    237            �           0    0    alergias_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('alergias_id_seq', 2, true);
            public       postgres    false    236            �           0    0    antecedentes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('antecedentes_id_seq', 1, false);
            public       postgres    false    238            �           0    0    antecedentes_paciente_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('antecedentes_paciente_id_seq', 1, false);
            public       postgres    false    239            �           0    0     aprazamento_prescricao_he_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('aprazamento_prescricao_he_id_seq', 1, false);
            public       postgres    false    240            �           0    0    atividade_fisica_he_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('atividade_fisica_he_id_seq', 1, false);
            public       postgres    false    241            �           0    0    atividades_religiosas_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('atividades_religiosas_id_seq', 1, false);
            public       postgres    false    242            �           0    0    ausculta_cardiaca_he_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('ausculta_cardiaca_he_id_seq', 1, false);
            public       postgres    false    243            �           0    0    ausculta_pulmonar_he_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('ausculta_pulmonar_he_id_seq', 1, false);
            public       postgres    false    244            �           0    0    avaliacao_neurologica_he_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('avaliacao_neurologica_he_id_seq', 1, false);
            public       postgres    false    245                        0    0    avaliacao_renal_he_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('avaliacao_renal_he_id_seq', 1, false);
            public       postgres    false    246                       0    0    boca_faringe_he_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('boca_faringe_he_id_seq', 1, false);
            public       postgres    false    247                       0    0    cidades_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('cidades_id_seq', 6, true);
            public       postgres    false    248                       0    0    cirurgias_he_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('cirurgias_he_id_seq', 1, false);
            public       postgres    false    250                       0    0    cirurgias_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cirurgias_id_seq', 1, false);
            public       postgres    false    249                       0    0    condicoesgerais_he_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('condicoesgerais_he_id_seq', 1, false);
            public       postgres    false    251                       0    0    couro_cabeludo_he_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('couro_cabeludo_he_id_seq', 1, false);
            public       postgres    false    252                       0    0    diagnosticos_enfermagem_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('diagnosticos_enfermagem_id_seq', 1, false);
            public       postgres    false    253                       0    0    diagnosticos_he_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('diagnosticos_he_id_seq', 1, false);
            public       postgres    false    254            	           0    0    extremidades_he_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('extremidades_he_id_seq', 1, false);
            public       postgres    false    255            
           0    0    genitais_femininos_he_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('genitais_femininos_he_id_seq', 1, false);
            public       postgres    false    256                       0    0    genitais_masculinos_he_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('genitais_masculinos_he_id_seq', 1, false);
            public       postgres    false    257                       0    0    genitalias_he_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('genitalias_he_id_seq', 1, false);
            public       postgres    false    258                       0    0 	   he_id_seq    SEQUENCE SET     0   SELECT pg_catalog.setval('he_id_seq', 2, true);
            public       postgres    false    259                       0    0    homem_he_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('homem_he_id_seq', 1, false);
            public       postgres    false    260                       0    0    hospitais_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('hospitais_id_seq', 1, false);
            public       postgres    false    261                       0    0 "   itens_prescricao_enfermagem_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('itens_prescricao_enfermagem_id_seq', 1, false);
            public       postgres    false    262                       0    0    mulher_he_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('mulher_he_id_seq', 1, false);
            public       postgres    false    263                       0    0    nariz_he_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('nariz_he_id_seq', 1, false);
            public       postgres    false    264                       0    0    olhos_he_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('olhos_he_id_seq', 1, false);
            public       postgres    false    265                       0    0    ouvidos_he_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('ouvidos_he_id_seq', 1, false);
            public       postgres    false    266                       0    0    pele_he_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('pele_he_id_seq', 1, false);
            public       postgres    false    267                       0    0    pescoco_he_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('pescoco_he_id_seq', 1, false);
            public       postgres    false    268                       0    0    prescricao_enfermagem_he_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('prescricao_enfermagem_he_id_seq', 1, false);
            public       postgres    false    269                       0    0    prescricoes_enfermagem_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('prescricoes_enfermagem_id_seq', 1, true);
            public       postgres    false    270                       0    0    religioes_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('religioes_id_seq', 1, false);
            public       postgres    false    279                       0    0    religiosas_he_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('religiosas_he_id_seq', 1, false);
            public       postgres    false    271                       0    0    risco_queda_he_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('risco_queda_he_id_seq', 1, false);
            public       postgres    false    272                       0    0    risco_ulcera_decubito_he_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('risco_ulcera_decubito_he_id_seq', 1, false);
            public       postgres    false    273                       0    0    sinais_vitais_he_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('sinais_vitais_he_id_seq', 1, false);
            public       postgres    false    274                       0    0    tgi_he_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('tgi_he_id_seq', 1, false);
            public       postgres    false    275                       0    0    torax_he_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('torax_he_id_seq', 1, false);
            public       postgres    false    276                        0    0    vias_aereas_he_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('vias_aereas_he_id_seq', 1, false);
            public       postgres    false    277            �           2606    139843    alergias_he alergias_he_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY alergias_he
    ADD CONSTRAINT alergias_he_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.alergias_he DROP CONSTRAINT alergias_he_pkey;
       public         postgres    false    204            �           2606    140209    alergias alergias_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY alergias
    ADD CONSTRAINT alergias_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.alergias DROP CONSTRAINT alergias_pkey;
       public         postgres    false    202            �           2606    139824 0   antecedentes_paciente antecedentes_paciente_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY antecedentes_paciente
    ADD CONSTRAINT antecedentes_paciente_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.antecedentes_paciente DROP CONSTRAINT antecedentes_paciente_pkey;
       public         postgres    false    201            �           2606    139811    antecedentes antecedentes_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY antecedentes
    ADD CONSTRAINT antecedentes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.antecedentes DROP CONSTRAINT antecedentes_pkey;
       public         postgres    false    199            �           2606    140044 8   aprazamento_prescricao_he aprazamento_prescricao_he_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY aprazamento_prescricao_he
    ADD CONSTRAINT aprazamento_prescricao_he_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.aprazamento_prescricao_he DROP CONSTRAINT aprazamento_prescricao_he_pkey;
       public         postgres    false    235            �           2606    139897 *   atividadefisica_he atividadefisica_he_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY atividadefisica_he
    ADD CONSTRAINT atividadefisica_he_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.atividadefisica_he DROP CONSTRAINT atividadefisica_he_pkey;
       public         postgres    false    213            �           2606    139816 0   atividades_religiosas atividades_religiosas_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY atividades_religiosas
    ADD CONSTRAINT atividades_religiosas_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.atividades_religiosas DROP CONSTRAINT atividades_religiosas_pkey;
       public         postgres    false    200            �           2606    139957 .   ausculta_cardiaca_he ausculta_cardiaca_he_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY ausculta_cardiaca_he
    ADD CONSTRAINT ausculta_cardiaca_he_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ausculta_cardiaca_he DROP CONSTRAINT ausculta_cardiaca_he_pkey;
       public         postgres    false    223            �           2606    139952 .   ausculta_pulmonar_he ausculta_pulmonar_he_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY ausculta_pulmonar_he
    ADD CONSTRAINT ausculta_pulmonar_he_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ausculta_pulmonar_he DROP CONSTRAINT ausculta_pulmonar_he_pkey;
       public         postgres    false    222            �           2606    139886 3   avaliacao_neurologica_he avaliacao_neurologica_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY avaliacao_neurologica_he
    ADD CONSTRAINT avaliacao_neurologica_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.avaliacao_neurologica_he DROP CONSTRAINT avaliacao_neurologica_pkey;
       public         postgres    false    212            �           2606    139973 *   avaliacao_renal_he avaliacao_renal_he_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY avaliacao_renal_he
    ADD CONSTRAINT avaliacao_renal_he_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.avaliacao_renal_he DROP CONSTRAINT avaliacao_renal_he_pkey;
       public         postgres    false    225            �           2606    139932 $   boca_faringe_he boca_faringe_he_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY boca_faringe_he
    ADD CONSTRAINT boca_faringe_he_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.boca_faringe_he DROP CONSTRAINT boca_faringe_he_pkey;
       public         postgres    false    218            �           2606    139801    cidades cidades_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY cidades
    ADD CONSTRAINT cidades_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cidades DROP CONSTRAINT cidades_pkey;
       public         postgres    false    197            �           2606    139858    cirurgias_he cirurgias_he_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY cirurgias_he
    ADD CONSTRAINT cirurgias_he_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cirurgias_he DROP CONSTRAINT cirurgias_he_pkey;
       public         postgres    false    207            �           2606    139853    cirurgias cirurgias_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cirurgias
    ADD CONSTRAINT cirurgias_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cirurgias DROP CONSTRAINT cirurgias_pkey;
       public         postgres    false    206            �           2606    139881 *   condicoesgerais_he condicoesgerais_he_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY condicoesgerais_he
    ADD CONSTRAINT condicoesgerais_he_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.condicoesgerais_he DROP CONSTRAINT condicoesgerais_he_pkey;
       public         postgres    false    211            �           2606    139911 (   couro_cabeludo_he couro_cabeludo_he_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY couro_cabeludo_he
    ADD CONSTRAINT couro_cabeludo_he_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.couro_cabeludo_he DROP CONSTRAINT couro_cabeludo_he_pkey;
       public         postgres    false    214            �           2606    140006 4   diagnosticos_enfermagem diagnosticos_enfermagem_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY diagnosticos_enfermagem
    ADD CONSTRAINT diagnosticos_enfermagem_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.diagnosticos_enfermagem DROP CONSTRAINT diagnosticos_enfermagem_pkey;
       public         postgres    false    228            �           2606    140011 $   diagnosticos_he diagnosticos_he_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY diagnosticos_he
    ADD CONSTRAINT diagnosticos_he_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.diagnosticos_he DROP CONSTRAINT diagnosticos_he_pkey;
       public         postgres    false    229            �           2606    140001 $   extremidades_he extremidades_he_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY extremidades_he
    ADD CONSTRAINT extremidades_he_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.extremidades_he DROP CONSTRAINT extremidades_he_pkey;
       public         postgres    false    227            �           2606    139991 &   genitais_he genitais_femininos_he_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY genitais_he
    ADD CONSTRAINT genitais_femininos_he_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.genitais_he DROP CONSTRAINT genitais_femininos_he_pkey;
       public         postgres    false    226            �           2606    139838 
   he he_pkey 
   CONSTRAINT     A   ALTER TABLE ONLY he
    ADD CONSTRAINT he_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.he DROP CONSTRAINT he_pkey;
       public         postgres    false    203            �           2606    139863    homem_he homem_he_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY homem_he
    ADD CONSTRAINT homem_he_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.homem_he DROP CONSTRAINT homem_he_pkey;
       public         postgres    false    208            �           2606    16398    hospitais hospitais_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY hospitais
    ADD CONSTRAINT hospitais_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.hospitais DROP CONSTRAINT hospitais_pkey;
       public         postgres    false    196            �           2606    140820 (   infs_antecedentes infs_antecedentes_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY infs_antecedentes
    ADD CONSTRAINT infs_antecedentes_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.infs_antecedentes DROP CONSTRAINT infs_antecedentes_pkey;
       public         postgres    false    280            �           2606    140034 <   itens_prescricao_enfermagem itens_prescricao_enfermagem_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY itens_prescricao_enfermagem
    ADD CONSTRAINT itens_prescricao_enfermagem_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.itens_prescricao_enfermagem DROP CONSTRAINT itens_prescricao_enfermagem_pkey;
       public         postgres    false    233            �           2606    139868    mulher_he mulher_he_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY mulher_he
    ADD CONSTRAINT mulher_he_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.mulher_he DROP CONSTRAINT mulher_he_pkey;
       public         postgres    false    209            �           2606    139927    nariz_he nariz_he_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY nariz_he
    ADD CONSTRAINT nariz_he_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.nariz_he DROP CONSTRAINT nariz_he_pkey;
       public         postgres    false    217            �           2606    140346    olhos_he olhos_he_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY olhos_he
    ADD CONSTRAINT olhos_he_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.olhos_he DROP CONSTRAINT olhos_he_pkey;
       public         postgres    false    215            �           2606    139922    ouvidos_he ouvidos_he_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY ouvidos_he
    ADD CONSTRAINT ouvidos_he_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ouvidos_he DROP CONSTRAINT ouvidos_he_pkey;
       public         postgres    false    216            �           2606    140871    pele_he pele_he_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY pele_he
    ADD CONSTRAINT pele_he_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pele_he DROP CONSTRAINT pele_he_pkey;
       public         postgres    false    281            �           2606    139942    pescoco_he pescoco_he_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY pescoco_he
    ADD CONSTRAINT pescoco_he_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pescoco_he DROP CONSTRAINT pescoco_he_pkey;
       public         postgres    false    220            �           2606    139806    pessoas pessoas_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY pessoas
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pessoas DROP CONSTRAINT pessoas_pkey;
       public         postgres    false    198            �           2606    140039 6   prescricao_enfermagem_he prescricao_enfermagem_he_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY prescricao_enfermagem_he
    ADD CONSTRAINT prescricao_enfermagem_he_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.prescricao_enfermagem_he DROP CONSTRAINT prescricao_enfermagem_he_pkey;
       public         postgres    false    234            �           2606    140029 2   prescricoes_enfermagem prescricoes_enfermagem_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY prescricoes_enfermagem
    ADD CONSTRAINT prescricoes_enfermagem_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.prescricoes_enfermagem DROP CONSTRAINT prescricoes_enfermagem_pkey;
       public         postgres    false    232            �           2606    140782    religioes religioes_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY religioes
    ADD CONSTRAINT religioes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.religioes DROP CONSTRAINT religioes_pkey;
       public         postgres    false    278            �           2606    140150     religiosas_he religiosas_he_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY religiosas_he
    ADD CONSTRAINT religiosas_he_pkey PRIMARY KEY (id, id_he);
 J   ALTER TABLE ONLY public.religiosas_he DROP CONSTRAINT religiosas_he_pkey;
       public         postgres    false    205    205            �           2606    140024 "   risco_queda_he risco_queda_he_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY risco_queda_he
    ADD CONSTRAINT risco_queda_he_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.risco_queda_he DROP CONSTRAINT risco_queda_he_pkey;
       public         postgres    false    231            �           2606    140019 6   risco_ulcera_decubito_he risco_ulcera_decubito_he_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY risco_ulcera_decubito_he
    ADD CONSTRAINT risco_ulcera_decubito_he_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.risco_ulcera_decubito_he DROP CONSTRAINT risco_ulcera_decubito_he_pkey;
       public         postgres    false    230            �           2606    139876 &   sinais_vitais_he sinais_vitais_he_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY sinais_vitais_he
    ADD CONSTRAINT sinais_vitais_he_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.sinais_vitais_he DROP CONSTRAINT sinais_vitais_he_pkey;
       public         postgres    false    210            �           2606    139965    tgi_he tgi_he_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY tgi_he
    ADD CONSTRAINT tgi_he_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tgi_he DROP CONSTRAINT tgi_he_pkey;
       public         postgres    false    224            �           2606    139947    torax_he torax_he_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY torax_he
    ADD CONSTRAINT torax_he_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.torax_he DROP CONSTRAINT torax_he_pkey;
       public         postgres    false    221            �           2606    139937 "   vias_aereas_he vias_aereas_he_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY vias_aereas_he
    ADD CONSTRAINT vias_aereas_he_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.vias_aereas_he DROP CONSTRAINT vias_aereas_he_pkey;
       public         postgres    false    219            �           2606    140356    alergias_he alergia    FK CONSTRAINT     j   ALTER TABLE ONLY alergias_he
    ADD CONSTRAINT alergia FOREIGN KEY (id_alergia) REFERENCES alergias(id);
 =   ALTER TABLE ONLY public.alergias_he DROP CONSTRAINT alergia;
       public       postgres    false    204    2986    202            �           2606    140361 !   antecedentes_paciente antecedente    FK CONSTRAINT     �   ALTER TABLE ONLY antecedentes_paciente
    ADD CONSTRAINT antecedente FOREIGN KEY (id_antecedente) REFERENCES antecedentes(id);
 K   ALTER TABLE ONLY public.antecedentes_paciente DROP CONSTRAINT antecedente;
       public       postgres    false    201    2980    199            �           2606    140526 !   religiosas_he atividade_religiosa    FK CONSTRAINT     �   ALTER TABLE ONLY religiosas_he
    ADD CONSTRAINT atividade_religiosa FOREIGN KEY (id_atividade_religiosa) REFERENCES atividades_religiosas(id);
 K   ALTER TABLE ONLY public.religiosas_he DROP CONSTRAINT atividade_religiosa;
       public       postgres    false    200    205    2982            �           2606    140506    pessoas cidade    FK CONSTRAINT     c   ALTER TABLE ONLY pessoas
    ADD CONSTRAINT cidade FOREIGN KEY (id_cidade) REFERENCES cidades(id);
 8   ALTER TABLE ONLY public.pessoas DROP CONSTRAINT cidade;
       public       postgres    false    197    198    2976            �           2606    140411    cirurgias_he cirurgia    FK CONSTRAINT     n   ALTER TABLE ONLY cirurgias_he
    ADD CONSTRAINT cirurgia FOREIGN KEY (id_cirurgia) REFERENCES cirurgias(id);
 ?   ALTER TABLE ONLY public.cirurgias_he DROP CONSTRAINT cirurgia;
       public       postgres    false    2994    207    206                       2606    140431    diagnosticos_he diagnostico    FK CONSTRAINT     �   ALTER TABLE ONLY diagnosticos_he
    ADD CONSTRAINT diagnostico FOREIGN KEY (id_diagnostico) REFERENCES diagnosticos_enfermagem(id);
 E   ALTER TABLE ONLY public.diagnosticos_he DROP CONSTRAINT diagnostico;
       public       postgres    false    229    228    3038            �           2606    140461    he enfermeiro    FK CONSTRAINT     f   ALTER TABLE ONLY he
    ADD CONSTRAINT enfermeiro FOREIGN KEY (id_enfermeiro) REFERENCES pessoas(id);
 7   ALTER TABLE ONLY public.he DROP CONSTRAINT enfermeiro;
       public       postgres    false    203    198    2978            �           2606    140351    alergias_he he    FK CONSTRAINT     Z   ALTER TABLE ONLY alergias_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 8   ALTER TABLE ONLY public.alergias_he DROP CONSTRAINT he;
       public       postgres    false    204    2988    203            �           2606    140366    antecedentes_paciente he    FK CONSTRAINT     d   ALTER TABLE ONLY antecedentes_paciente
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 B   ALTER TABLE ONLY public.antecedentes_paciente DROP CONSTRAINT he;
       public       postgres    false    201    2988    203                       2606    140376    atividadefisica_he he    FK CONSTRAINT     a   ALTER TABLE ONLY atividadefisica_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 ?   ALTER TABLE ONLY public.atividadefisica_he DROP CONSTRAINT he;
       public       postgres    false    213    2988    203                       2606    140381    ausculta_cardiaca_he he    FK CONSTRAINT     c   ALTER TABLE ONLY ausculta_cardiaca_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 A   ALTER TABLE ONLY public.ausculta_cardiaca_he DROP CONSTRAINT he;
       public       postgres    false    2988    203    223                       2606    140386    ausculta_pulmonar_he he    FK CONSTRAINT     c   ALTER TABLE ONLY ausculta_pulmonar_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 A   ALTER TABLE ONLY public.ausculta_pulmonar_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    222                       2606    140391    avaliacao_neurologica_he he    FK CONSTRAINT     g   ALTER TABLE ONLY avaliacao_neurologica_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 E   ALTER TABLE ONLY public.avaliacao_neurologica_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    212                       2606    140396    avaliacao_renal_he he    FK CONSTRAINT     a   ALTER TABLE ONLY avaliacao_renal_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 ?   ALTER TABLE ONLY public.avaliacao_renal_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    225            	           2606    140401    boca_faringe_he he    FK CONSTRAINT     ^   ALTER TABLE ONLY boca_faringe_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 <   ALTER TABLE ONLY public.boca_faringe_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    218            �           2606    140406    cirurgias_he he    FK CONSTRAINT     [   ALTER TABLE ONLY cirurgias_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 9   ALTER TABLE ONLY public.cirurgias_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    207                       2606    140416    condicoesgerais_he he    FK CONSTRAINT     a   ALTER TABLE ONLY condicoesgerais_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 ?   ALTER TABLE ONLY public.condicoesgerais_he DROP CONSTRAINT he;
       public       postgres    false    211    203    2988                       2606    140421    couro_cabeludo_he he    FK CONSTRAINT     `   ALTER TABLE ONLY couro_cabeludo_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 >   ALTER TABLE ONLY public.couro_cabeludo_he DROP CONSTRAINT he;
       public       postgres    false    214    203    2988                       2606    140426    diagnosticos_he he    FK CONSTRAINT     ^   ALTER TABLE ONLY diagnosticos_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 <   ALTER TABLE ONLY public.diagnosticos_he DROP CONSTRAINT he;
       public       postgres    false    229    203    2988                       2606    140436    extremidades_he he    FK CONSTRAINT     ^   ALTER TABLE ONLY extremidades_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 <   ALTER TABLE ONLY public.extremidades_he DROP CONSTRAINT he;
       public       postgres    false    227    203    2988                       2606    140441    genitais_he he    FK CONSTRAINT     Z   ALTER TABLE ONLY genitais_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 8   ALTER TABLE ONLY public.genitais_he DROP CONSTRAINT he;
       public       postgres    false    226    203    2988            �           2606    140466    homem_he he    FK CONSTRAINT     W   ALTER TABLE ONLY homem_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 5   ALTER TABLE ONLY public.homem_he DROP CONSTRAINT he;
       public       postgres    false    208    203    2988                        2606    140476    mulher_he he    FK CONSTRAINT     U   ALTER TABLE ONLY mulher_he
    ADD CONSTRAINT he FOREIGN KEY (id) REFERENCES he(id);
 6   ALTER TABLE ONLY public.mulher_he DROP CONSTRAINT he;
       public       postgres    false    209    203    2988                       2606    140481    nariz_he he    FK CONSTRAINT     W   ALTER TABLE ONLY nariz_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 5   ALTER TABLE ONLY public.nariz_he DROP CONSTRAINT he;
       public       postgres    false    217    203    2988                       2606    140486    olhos_he he    FK CONSTRAINT     W   ALTER TABLE ONLY olhos_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 5   ALTER TABLE ONLY public.olhos_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    215                       2606    140491    ouvidos_he he    FK CONSTRAINT     Y   ALTER TABLE ONLY ouvidos_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 7   ALTER TABLE ONLY public.ouvidos_he DROP CONSTRAINT he;
       public       postgres    false    216    203    2988                       2606    140501    pescoco_he he    FK CONSTRAINT     Y   ALTER TABLE ONLY pescoco_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 7   ALTER TABLE ONLY public.pescoco_he DROP CONSTRAINT he;
       public       postgres    false    2988    220    203                       2606    140511    prescricao_enfermagem_he he    FK CONSTRAINT     g   ALTER TABLE ONLY prescricao_enfermagem_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 E   ALTER TABLE ONLY public.prescricao_enfermagem_he DROP CONSTRAINT he;
       public       postgres    false    203    234    2988            �           2606    140521    religiosas_he he    FK CONSTRAINT     \   ALTER TABLE ONLY religiosas_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 :   ALTER TABLE ONLY public.religiosas_he DROP CONSTRAINT he;
       public       postgres    false    203    205    2988                       2606    140531    risco_queda_he he    FK CONSTRAINT     ]   ALTER TABLE ONLY risco_queda_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 ;   ALTER TABLE ONLY public.risco_queda_he DROP CONSTRAINT he;
       public       postgres    false    203    231    2988                       2606    140536    risco_ulcera_decubito_he he    FK CONSTRAINT     g   ALTER TABLE ONLY risco_ulcera_decubito_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 E   ALTER TABLE ONLY public.risco_ulcera_decubito_he DROP CONSTRAINT he;
       public       postgres    false    203    230    2988                       2606    140541    sinais_vitais_he he    FK CONSTRAINT     _   ALTER TABLE ONLY sinais_vitais_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 =   ALTER TABLE ONLY public.sinais_vitais_he DROP CONSTRAINT he;
       public       postgres    false    203    210    2988                       2606    140546 	   tgi_he he    FK CONSTRAINT     U   ALTER TABLE ONLY tgi_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 3   ALTER TABLE ONLY public.tgi_he DROP CONSTRAINT he;
       public       postgres    false    203    224    2988                       2606    140551    torax_he he    FK CONSTRAINT     W   ALTER TABLE ONLY torax_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 5   ALTER TABLE ONLY public.torax_he DROP CONSTRAINT he;
       public       postgres    false    2988    221    203            
           2606    140556    vias_aereas_he he    FK CONSTRAINT     ]   ALTER TABLE ONLY vias_aereas_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 ;   ALTER TABLE ONLY public.vias_aereas_he DROP CONSTRAINT he;
       public       postgres    false    203    2988    219                       2606    140872 
   pele_he he    FK CONSTRAINT     V   ALTER TABLE ONLY pele_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);
 4   ALTER TABLE ONLY public.pele_he DROP CONSTRAINT he;
       public       postgres    false    281    203    2988                       2606    140821 &   infs_antecedentes infs_antecedentes_he    FK CONSTRAINT     r   ALTER TABLE ONLY infs_antecedentes
    ADD CONSTRAINT infs_antecedentes_he FOREIGN KEY (id_he) REFERENCES he(id);
 P   ALTER TABLE ONLY public.infs_antecedentes DROP CONSTRAINT infs_antecedentes_he;
       public       postgres    false    203    280    2988            �           2606    140456    he paciente    FK CONSTRAINT     b   ALTER TABLE ONLY he
    ADD CONSTRAINT paciente FOREIGN KEY (id_paciente) REFERENCES pessoas(id);
 5   ALTER TABLE ONLY public.he DROP CONSTRAINT paciente;
       public       postgres    false    203    198    2978                       2606    140516 #   prescricao_enfermagem_he prescricao    FK CONSTRAINT     �   ALTER TABLE ONLY prescricao_enfermagem_he
    ADD CONSTRAINT prescricao FOREIGN KEY (id_prescricao_enfermagem) REFERENCES prescricoes_enfermagem(id);
 M   ALTER TABLE ONLY public.prescricao_enfermagem_he DROP CONSTRAINT prescricao;
       public       postgres    false    232    234    3046                       2606    140471 1   itens_prescricao_enfermagem prescricao_enfermagem    FK CONSTRAINT     �   ALTER TABLE ONLY itens_prescricao_enfermagem
    ADD CONSTRAINT prescricao_enfermagem FOREIGN KEY (id_prescricao_enfermagem) REFERENCES prescricoes_enfermagem(id);
 [   ALTER TABLE ONLY public.itens_prescricao_enfermagem DROP CONSTRAINT prescricao_enfermagem;
       public       postgres    false    233    232    3046                       2606    140371 '   aprazamento_prescricao_he prescricao_he    FK CONSTRAINT     �   ALTER TABLE ONLY aprazamento_prescricao_he
    ADD CONSTRAINT prescricao_he FOREIGN KEY (id_prescricao_he) REFERENCES prescricao_enfermagem_he(id);
 Q   ALTER TABLE ONLY public.aprazamento_prescricao_he DROP CONSTRAINT prescricao_he;
       public       postgres    false    235    3050    234            �           2606    140792    pessoas religiao    FK CONSTRAINT     i   ALTER TABLE ONLY pessoas
    ADD CONSTRAINT religiao FOREIGN KEY (id_religiao) REFERENCES religioes(id);
 :   ALTER TABLE ONLY public.pessoas DROP CONSTRAINT religiao;
       public       postgres    false    198    3054    278            �      x�3�qqU0�4�t����� %�H      �      x�3�4�4�2�4�1z\\\ 	      �   4   x�3��p�4�t�2�t�3�9��N� O׀`Oߔ3�	̈���� #f	�      �   �   x���Q
�  ���=A1�[�;A6�1f��+ؖ�EQ�/1H��`�mg�!���_��*r�^��\��	�� �F��7eg�0%A�D+��|�{���moaT�%�����}���w�VZ�|JyJ�6�,)�Ls�Ċ$��G�υXO      �      x������ � �      �   V   x�m�I
�0C��wQ��[���.��9�Z�B�������	ߤx��>��8���ذ��j߲ �Ke��������|��      �      x�3�qqU00�t�2�q���=... e��      �      x�3�46�t�t�t�t�t�t����� %t      �   '   x�3�46��tB#NC��e�il�	X W� ��      �      x�3�44�4�30�4�4B ����� -A      �   1   x�3�41�qqE!8a��z0&4cD����(Vp��qqq FB&      �   Q   x�3�4��4�qqU0Tp�wvT�Ups��swJ A.#N#KNN B�\Ɯ���&�Ɔ�����Ƙ�f��&��1z\\\ Uk      �   B   x�3�tv��r��2����2��qtvr�����2��
qu�2��r	ur����� �cM      �   -   x�3�p
��t�2�qq��!,# ۄ���H��qqq ���      �   !   x�3�4�4�2��\Ɯ@��H�p��qqq 4os      �      x�3�44�4C#(�\1z\\\ A�      �      x�3�42�4�CN.#N#c�=... ZKY      �   �   x�]�;�@D��)|(�ډ�Bvq��6��
n��I�"Ѿ��."i�Pn�(v��@.���a�t*�@�Ą�VN��+B���f�ʧD�n6��V�p�5����Ӫ�������S�L��9����j-�W����09?l���$�)���z�ĭ�=9fBoo��(��_G�      �   +   x�3�4�45�2�4�45�2�4�45�2	�r��x�\1z\\\ l�E      �   z   x�=�1
�@E��S�	�i�\v6��H�X0����D~��/^E�+eX�#��,�v��ԋ?�Z2��wx������.ӯ�U���T++���T���Hb�@M�pIIE�=Oι]\&�      �   /   x�3�41��5�D�p�$�e�ib��]+D�1���)x W� 9{�      �   �  x�}�ˑ� �3�%;HB���V���X^B��o���18���>�}t@�e�с����p�qa�L�S�F_�a0�k-O�u.�81*^R�C�T�QZ7.��y���Q��h\��Ը�.�MƱWԬ@êsgs�d�E]���`�5/�DR�;��c�x,��̂xٺ�ދo��)jਡ��tqa8�쎸{��5�,��ۃ��81�������rG�'���v��igr�e�|�z��f�`�t�
�Z����<7��Zt�+��oq]���hxM��a]���U/�V|=r�Ϭ���4>Dh4/JF{k��:�kd�'y?���dѴ���M&��:Y�50�f�v���q�:�a���w��y�ơ1��G�y9jNk�m����]i���??���0S&�      �      x������ � �      �      x������ � �      �   P   x�3�44�420��50�54�4�30�qqU�	��uT��q�stv��4I����*����p1�$�2�=... ��      �      x������ � �      �      x������ � �      �   E   x�Uȱ�0C�ڞ�	Н�	����C��~��H�{���IA��UU8����t�Uyv�/�"      �      x�3�42����4��b���� �me      �   #   x�3�42�qq�4Ġ��ؐ3���b���� �\�      �   /   x�3�42��5DAP� /��2�42$S�1���ZM8�������� ��Y      �   ;   x�3�46�qqU00Tpv�w��4�@.#NcCNN�2�46F�L8�M�=... ��=      �   O  x��R[n�0�6��R����,Y��*<����9j�.�%�6q���=�1*hG;S���N޺�j#8z� ,˓T��,�܏H2��N�2��%����%�V+<�9�Eo{Qu������g���T�ꐈ�����X!]y��*oMK�5�m#��Te�y	�hj�?F܈FڤP�jl�sP/R:߹�Ad���Gcb���ֽv��*�:���<�J�Wji����7�G��6zb���Z���:��^�BH���RU~t$��؍;X绵A��1���9�7g�V$ݟ_Rp�	����D�n����݅���n ǪXG����K��K�$_���       �      x������ � �      �   $   x�3�qqU0NG.C�����!�'W� �      �   &   x�3�tv���tv�t�2�v���Wp�qc���� |�      �   !   x�3�4�4�2�4��@��	�m����� 4)o      �      x������ � �      �   3   x�3�4��4D�fz�f
�
�
5
�9%��g��+e'�s��qqq 	F      �   2   x�3�42�30�4�&`�L��ICS.#NC���
�,k����� ��
�      �   Q   x�3�46�t�t�4�30�4�4�B#06�҆p��oe�p:srQ�$cN#���W(i2�4�!��@h����� �qn      �   H   x�3�46�qqU�r��tvq�4D�F@h�����
U��e�il���i�rrs�������� �j      �   5   x�3�4��4�4�4b0��8�� ��9���&����|SNcd~� ��	�     
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.1

-- Started on 2018-10-18 10:15:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 4181310)
-- Name: atendimentos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA atendimentos;


ALTER SCHEMA atendimentos OWNER TO postgres;

--
-- TOC entry 5 (class 2615 OID 4181308)
-- Name: estoque; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA estoque;


ALTER SCHEMA estoque OWNER TO postgres;

--
-- TOC entry 11 (class 2615 OID 4181307)
-- Name: exames; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA exames;


ALTER SCHEMA exames OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 4181309)
-- Name: faturamento; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA faturamento;


ALTER SCHEMA faturamento OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 4180651)
-- Name: he; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA he;


ALTER SCHEMA he OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = atendimentos, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 313 (class 1259 OID 4180926)
-- Name: atendimentos; Type: TABLE; Schema: atendimentos; Owner: postgres
--

CREATE TABLE atendimentos (
    id integer NOT NULL,
    data_atendimento date,
    carater integer,
    id_medico_responsavel integer,
    id_procedimento integer,
    id_cid_provisorio character varying(6),
    id_setor integer,
    tipo_clinica integer,
    tipo_atendimento integer,
    id_convenio integer,
    id_responsavel integer,
    responsavel_paciente integer,
    data_alta timestamp(0) without time zone,
    id_cid_definitivo character varying(6),
    motivo_alta integer,
    tipo_saida_tiss integer,
    id_encaminhamento integer,
    transferido_para character varying(120),
    status character(1),
    id_paciente integer NOT NULL,
    hora_atendimento time(0) without time zone,
    hora_alta time(0) without time zone,
    id_leito integer,
    id_quarto integer,
    id_medico_solicitante integer,
    origem integer,
    previsao_alta date,
    tipo_acomodacao integer,
    tipo integer,
    obs character varying,
    status_faturamento character(2),
    motivo_nao_cobranca integer,
    valor_total numeric(9,2)
);


ALTER TABLE atendimentos OWNER TO postgres;

--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.carater; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.carater IS 'passar valores do combobox aqui';


--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.tipo_clinica; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.tipo_clinica IS 'passar combobox';


--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.tipo_atendimento; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.tipo_atendimento IS 'combobox com tipo da consulta ou atendimento';


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.responsavel_paciente; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.responsavel_paciente IS 'proprio paciente
0 - sim
1 - nao';


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.motivo_alta; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.motivo_alta IS 'combobox por enquanto - Anexo1';


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.tipo_saida_tiss; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.tipo_saida_tiss IS 'combobox';


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.transferido_para; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.transferido_para IS 'quando foi transferido para algum lugar fora do hospital';


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.origem; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.origem IS 'combobox';


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.tipo_acomodacao; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.tipo_acomodacao IS 'combobox';


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 313
-- Name: COLUMN atendimentos.tipo; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN atendimentos.tipo IS '1 - ambulatorial
2 - internacao';


--
-- TOC entry 314 (class 1259 OID 4180967)
-- Name: itens_atendimento; Type: TABLE; Schema: atendimentos; Owner: postgres
--

CREATE TABLE itens_atendimento (
    id integer NOT NULL,
    id_matmed integer,
    data_consumo date,
    quantidade numeric(9,2) NOT NULL,
    id_procedimento integer,
    valor numeric(9,2) NOT NULL,
    exame integer,
    id_atendimento integer NOT NULL,
    valor_total numeric(9,2) NOT NULL,
    valor_honorarios_medicos numeric(9,2),
    valor_operacional numeric(9,2)
);


ALTER TABLE itens_atendimento OWNER TO postgres;

--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 314
-- Name: COLUMN itens_atendimento.exame; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON COLUMN itens_atendimento.exame IS '0 - nao
1 - sim';


SET search_path = estoque, pg_catalog;

--
-- TOC entry 306 (class 1259 OID 4180860)
-- Name: compras; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE compras (
    id integer NOT NULL,
    nota integer,
    id_fornecedor integer,
    data_compra date,
    data_entrega date,
    valor_itens numeric(9,2),
    valor_frete numeric(9,2),
    outros_valores numeric(9,2),
    obs_outros_valores character varying(120),
    valor_total numeric(9,2)
);


ALTER TABLE compras OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 4180760)
-- Name: grupos_matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE grupos_matmed (
    id integer NOT NULL,
    descricao character varying(80),
    situacao character(1)
);


ALTER TABLE grupos_matmed OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 4180870)
-- Name: itens_compra; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE itens_compra (
    id integer NOT NULL,
    id_compra integer,
    id_matmed integer,
    quantidade numeric(9,2),
    valor_custo numeric(9,2),
    id_unidade_compra integer,
    desconto numeric(9,2),
    valor_total numeric(9,2),
    id_marca integer,
    id_lote integer,
    id_ponto_estoque integer
);


ALTER TABLE itens_compra OWNER TO postgres;

--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 307
-- Name: COLUMN itens_compra.id_lote; Type: COMMENT; Schema: estoque; Owner: postgres
--

COMMENT ON COLUMN itens_compra.id_lote IS 'cadastrar antes no banco de dados o lote para depois inserir os itens da compra';


--
-- TOC entry 319 (class 1259 OID 4181125)
-- Name: itens_solicitacao_matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE itens_solicitacao_matmed (
    id integer NOT NULL,
    id_matmed integer NOT NULL,
    quantidade numeric(9,2)
);


ALTER TABLE itens_solicitacao_matmed OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 4180830)
-- Name: kit; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE kit (
    id integer NOT NULL,
    descricao character varying(80),
    id_matmed integer,
    quantidade numeric(9,2),
    formar_preco_kit integer
);


ALTER TABLE kit OWNER TO postgres;

--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 303
-- Name: COLUMN kit.formar_preco_kit; Type: COMMENT; Schema: estoque; Owner: postgres
--

COMMENT ON COLUMN kit.formar_preco_kit IS 'marcar 1 - sim, se for pra formar o preco de venda do kit';


--
-- TOC entry 297 (class 1259 OID 4180765)
-- Name: locais_matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE locais_matmed (
    id integer NOT NULL,
    descricao character varying(80),
    situacao character(1)
);


ALTER TABLE locais_matmed OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 4180815)
-- Name: lotes; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE lotes (
    id integer NOT NULL,
    id_fornecedor integer,
    validade date,
    lote character varying(30),
    id_matmed integer
);


ALTER TABLE lotes OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 4180755)
-- Name: matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE matmed (
    id integer NOT NULL,
    cod_interno integer,
    descricao character varying(100),
    id_grupo integer,
    controlado integer,
    tipo_apresentacao integer,
    id_local integer,
    estoque_minimo numeric(9,2),
    custo_medio numeric(9,2),
    id_unidade integer,
    situacao character varying(1),
    valor_padrao numeric(9,2),
    material integer
);


ALTER TABLE matmed OWNER TO postgres;

--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN matmed.cod_interno; Type: COMMENT; Schema: estoque; Owner: postgres
--

COMMENT ON COLUMN matmed.cod_interno IS 'se for importar os mesmos codigo, pensar em inserir aqui';


--
-- TOC entry 301 (class 1259 OID 4180800)
-- Name: matmed_vias_aplicacao; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE matmed_vias_aplicacao (
    id integer NOT NULL,
    id_via_aplicacao integer NOT NULL,
    id_matmed integer NOT NULL
);


ALTER TABLE matmed_vias_aplicacao OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 4181135)
-- Name: motivos_movimentacao_manual; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE motivos_movimentacao_manual (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE motivos_movimentacao_manual OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 4181140)
-- Name: movimentacao_manual_matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE movimentacao_manual_matmed (
    id integer NOT NULL,
    id_colaborador integer,
    id_matmed integer,
    data_movimentacao integer,
    hora_movimentacao time without time zone,
    quantidade numeric(9,2),
    tipo integer,
    id_motivo integer NOT NULL,
    obs text
);


ALTER TABLE movimentacao_manual_matmed OWNER TO postgres;

--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 321
-- Name: COLUMN movimentacao_manual_matmed.tipo; Type: COMMENT; Schema: estoque; Owner: postgres
--

COMMENT ON COLUMN movimentacao_manual_matmed.tipo IS '0 entrada
1 saida';


--
-- TOC entry 299 (class 1259 OID 4180790)
-- Name: pontos_estoque; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE pontos_estoque (
    id integer NOT NULL,
    descricao character varying(60)
);


ALTER TABLE pontos_estoque OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 4181062)
-- Name: solicitacao_matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE solicitacao_matmed (
    id integer NOT NULL,
    id_solicitante integer,
    data_solicitacao date NOT NULL,
    hora_solicitacao time without time zone,
    id_setor_solicitante integer,
    id_setor_destino integer,
    id_responsavel integer,
    id_atendimento integer,
    obs text,
    status integer NOT NULL
);


ALTER TABLE solicitacao_matmed OWNER TO postgres;

--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 316
-- Name: COLUMN solicitacao_matmed.status; Type: COMMENT; Schema: estoque; Owner: postgres
--

COMMENT ON COLUMN solicitacao_matmed.status IS '0 - aberta
1 - finalizada';


--
-- TOC entry 298 (class 1259 OID 4180770)
-- Name: unidades_matmed; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE unidades_matmed (
    id integer NOT NULL,
    descricao character varying(30),
    abreviacao character varying(3),
    situacao character(1)
);


ALTER TABLE unidades_matmed OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 4180795)
-- Name: vias_aplicacao; Type: TABLE; Schema: estoque; Owner: postgres
--

CREATE TABLE vias_aplicacao (
    id integer NOT NULL,
    descricao character varying(40)
);


ALTER TABLE vias_aplicacao OWNER TO postgres;

SET search_path = exames, pg_catalog;

--
-- TOC entry 325 (class 1259 OID 4181226)
-- Name: consumos_exame; Type: TABLE; Schema: exames; Owner: postgres
--

CREATE TABLE consumos_exame (
    id integer NOT NULL,
    id_matmed integer,
    quantidade numeric(9,2),
    perda integer,
    motivo_perda integer,
    id_exame integer NOT NULL
);


ALTER TABLE consumos_exame OWNER TO postgres;

--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 325
-- Name: COLUMN consumos_exame.motivo_perda; Type: COMMENT; Schema: exames; Owner: postgres
--

COMMENT ON COLUMN consumos_exame.motivo_perda IS 'combobox';


--
-- TOC entry 322 (class 1259 OID 4181163)
-- Name: exames; Type: TABLE; Schema: exames; Owner: postgres
--

CREATE TABLE exames (
    id integer NOT NULL,
    unidade integer,
    id_atendimento integer,
    id_paciente integer,
    id_convenio integer,
    id_medico_solicitante integer,
    origem integer,
    hipoteses_diagnosticas text,
    exames_clinicos text,
    retirar_em timestamp without time zone,
    cuidados text,
    status integer,
    data_entrega date,
    quem_recebeu character varying(100)
);


ALTER TABLE exames OWNER TO postgres;

--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN exames.unidade; Type: COMMENT; Schema: exames; Owner: postgres
--

COMMENT ON COLUMN exames.unidade IS 'combobox
futuramento criar um cadastro de unidades';


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN exames.origem; Type: COMMENT; Schema: exames; Owner: postgres
--

COMMENT ON COLUMN exames.origem IS 'combobox';


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 322
-- Name: COLUMN exames.status; Type: COMMENT; Schema: exames; Owner: postgres
--

COMMENT ON COLUMN exames.status IS '0 - pendente
1 - em processo
2 - concluido
3 - cancelado';


--
-- TOC entry 326 (class 1259 OID 4181236)
-- Name: execucao_exame; Type: TABLE; Schema: exames; Owner: postgres
--

CREATE TABLE execucao_exame (
    id integer NOT NULL,
    id_tecnico integer,
    data_conclusao date
);


ALTER TABLE execucao_exame OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 4181196)
-- Name: itens_exames; Type: TABLE; Schema: exames; Owner: postgres
--

CREATE TABLE itens_exames (
    id integer NOT NULL,
    id_procedimento integer,
    complemento character varying(120),
    quantidade numeric(9,2),
    id_requisicao_exame integer NOT NULL,
    status integer
);


ALTER TABLE itens_exames OWNER TO postgres;

--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 323
-- Name: COLUMN itens_exames.status; Type: COMMENT; Schema: exames; Owner: postgres
--

COMMENT ON COLUMN itens_exames.status IS '0 - pendente
1 - realizado
2 - cancelado';


--
-- TOC entry 327 (class 1259 OID 4181256)
-- Name: laudo_exame; Type: TABLE; Schema: exames; Owner: postgres
--

CREATE TABLE laudo_exame (
    id integer NOT NULL,
    data_laudo date NOT NULL,
    resultado character varying(100),
    id_radiologista integer,
    laudo text,
    id_exame integer NOT NULL
);


ALTER TABLE laudo_exame OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 4181269)
-- Name: resultado_padrao_exames; Type: TABLE; Schema: exames; Owner: postgres
--

CREATE TABLE resultado_padrao_exames (
    id integer NOT NULL,
    descricao character varying(60),
    resultado text
);


ALTER TABLE resultado_padrao_exames OWNER TO postgres;

SET search_path = faturamento, pg_catalog;

--
-- TOC entry 330 (class 1259 OID 4181292)
-- Name: atendimentos_fatura; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE atendimentos_fatura (
    id integer NOT NULL,
    id_fatura integer NOT NULL,
    id_atendimento integer NOT NULL
);
ALTER TABLE ONLY atendimentos_fatura ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY atendimentos_fatura ALTER COLUMN id_fatura SET STATISTICS 0;


ALTER TABLE atendimentos_fatura OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 4189604)
-- Name: competencias; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE competencias (
    id integer NOT NULL,
    descricao character varying(10) NOT NULL,
    id_convenio integer,
    situacao character(1),
    data_abertura date,
    data_fechamento date,
    status integer
);


ALTER TABLE competencias OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 4181211)
-- Name: consumos_padroes; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE consumos_padroes (
    id integer NOT NULL,
    id_procedimento integer NOT NULL,
    id_matmed integer,
    quantidade numeric(9,2)
);


ALTER TABLE consumos_padroes OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 4181287)
-- Name: faturas; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE faturas (
    id integer NOT NULL,
    descricao character varying(80),
    status integer,
    id_convenio integer,
    situacao character(1),
    data_abertura date,
    data_fechamento date,
    id_competencia integer
);
ALTER TABLE ONLY faturas ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY faturas ALTER COLUMN descricao SET STATISTICS 0;


ALTER TABLE faturas OWNER TO postgres;

--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 329
-- Name: COLUMN faturas.status; Type: COMMENT; Schema: faturamento; Owner: postgres
--

COMMENT ON COLUMN faturas.status IS '0 - aberta
1 - finalizada';


--
-- TOC entry 332 (class 1259 OID 4189609)
-- Name: faturas_competencia; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE faturas_competencia (
    id integer NOT NULL,
    id_fatura integer,
    id_competencia integer
);


ALTER TABLE faturas_competencia OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 4180845)
-- Name: itens_tabela_preco_matmed; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE itens_tabela_preco_matmed (
    id integer NOT NULL,
    id_tabela_preco_matmed integer,
    id_matmed integer,
    valor numeric(9,2)
);


ALTER TABLE itens_tabela_preco_matmed OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 4180885)
-- Name: itens_tabela_preco_procedimentos; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE itens_tabela_preco_procedimentos (
    id integer NOT NULL,
    id_tabela_procedimentos integer,
    id_procedimento integer,
    custo_operacional numeric(9,2) NOT NULL,
    honorarios_medicos numeric(9,2),
    valor_total numeric(9,2) NOT NULL
);


ALTER TABLE itens_tabela_preco_procedimentos OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 4180840)
-- Name: tabela_preco_matmed; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE tabela_preco_matmed (
    id integer NOT NULL,
    descricao character varying(80),
    vigencia_geral date,
    situacao character(1)
);


ALTER TABLE tabela_preco_matmed OWNER TO postgres;

--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 304
-- Name: COLUMN tabela_preco_matmed.vigencia_geral; Type: COMMENT; Schema: faturamento; Owner: postgres
--

COMMENT ON COLUMN tabela_preco_matmed.vigencia_geral IS 'quando inserir uma vigencia geral, repassar aos itens';


--
-- TOC entry 309 (class 1259 OID 4180880)
-- Name: tabela_preco_procedimentos; Type: TABLE; Schema: faturamento; Owner: postgres
--

CREATE TABLE tabela_preco_procedimentos (
    id integer NOT NULL,
    descricao character varying(80) NOT NULL,
    vigencia_geral date,
    situacao character(1)
);


ALTER TABLE tabela_preco_procedimentos OWNER TO postgres;

--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 309
-- Name: COLUMN tabela_preco_procedimentos.vigencia_geral; Type: COMMENT; Schema: faturamento; Owner: postgres
--

COMMENT ON COLUMN tabela_preco_procedimentos.vigencia_geral IS 'quando inserir uma vigencia geral, repassar aos itens';


SET search_path = public, pg_catalog;

--
-- TOC entry 201 (class 1259 OID 4180074)
-- Name: alergias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alergias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE alergias_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 202 (class 1259 OID 4180076)
-- Name: alergias; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE alergias (
    id integer DEFAULT nextval('public.alergias_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    tipo_alergia integer NOT NULL,
    situacao character(1) NOT NULL
);


ALTER TABLE alergias OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 203 (class 1259 OID 4180080)
-- Name: alergias_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE alergias_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE alergias_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 204 (class 1259 OID 4180082)
-- Name: alergias_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE alergias_he (
    id integer DEFAULT nextval('public.alergias_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    id_alergia integer NOT NULL
);


ALTER TABLE alergias_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 205 (class 1259 OID 4180086)
-- Name: antecedentes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE antecedentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE antecedentes_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 206 (class 1259 OID 4180088)
-- Name: antecedentes; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE antecedentes (
    id integer DEFAULT nextval('public.antecedentes_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    tipo_antecedente integer NOT NULL,
    situacao character(1) NOT NULL
);


ALTER TABLE antecedentes OWNER TO postgres;

--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN antecedentes.tipo_antecedente; Type: COMMENT; Schema: he; Owner: postgres
--

COMMENT ON COLUMN antecedentes.tipo_antecedente IS 'familiar ou pessoal';


SET search_path = public, pg_catalog;

--
-- TOC entry 207 (class 1259 OID 4180092)
-- Name: antecedentes_paciente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE antecedentes_paciente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE antecedentes_paciente_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 208 (class 1259 OID 4180094)
-- Name: antecedentes_paciente; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE antecedentes_paciente (
    id integer DEFAULT nextval('public.antecedentes_paciente_id_seq'::regclass) NOT NULL,
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


ALTER TABLE antecedentes_paciente OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 209 (class 1259 OID 4180102)
-- Name: aprazamento_prescricao_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aprazamento_prescricao_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aprazamento_prescricao_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 210 (class 1259 OID 4180104)
-- Name: aprazamento_prescricao_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE aprazamento_prescricao_he (
    id integer DEFAULT nextval('public.aprazamento_prescricao_he_id_seq'::regclass) NOT NULL,
    id_prescricao_he integer NOT NULL,
    hora time with time zone NOT NULL
);


ALTER TABLE aprazamento_prescricao_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 211 (class 1259 OID 4180108)
-- Name: atividade_fisica_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE atividade_fisica_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE atividade_fisica_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 212 (class 1259 OID 4180110)
-- Name: atividadefisica_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE atividadefisica_he (
    id integer DEFAULT nextval('public.atividade_fisica_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE atividadefisica_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 213 (class 1259 OID 4180114)
-- Name: atividades_religiosas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE atividades_religiosas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE atividades_religiosas_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 214 (class 1259 OID 4180116)
-- Name: atividades_religiosas; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE atividades_religiosas (
    id integer DEFAULT nextval('public.atividades_religiosas_id_seq'::regclass) NOT NULL,
    descricao character varying(80) NOT NULL,
    situacao character(1) NOT NULL
);


ALTER TABLE atividades_religiosas OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 215 (class 1259 OID 4180120)
-- Name: ausculta_cardiaca_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ausculta_cardiaca_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ausculta_cardiaca_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 216 (class 1259 OID 4180122)
-- Name: ausculta_cardiaca_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE ausculta_cardiaca_he (
    id integer DEFAULT nextval('public.ausculta_cardiaca_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    palpacao_ictus_cordis character varying(50),
    fremito_tatil character varying(50),
    foco_aortico character varying(50),
    foco_pulmonar character varying(50),
    foco_mitral character varying(50),
    foco_tricuspide character varying(50)
);


ALTER TABLE ausculta_cardiaca_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 217 (class 1259 OID 4180126)
-- Name: ausculta_pulmonar_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ausculta_pulmonar_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ausculta_pulmonar_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 218 (class 1259 OID 4180128)
-- Name: ausculta_pulmonar_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE ausculta_pulmonar_he (
    id integer DEFAULT nextval('public.ausculta_pulmonar_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE ausculta_pulmonar_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 219 (class 1259 OID 4180132)
-- Name: avaliacao_neurologica_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE avaliacao_neurologica_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE avaliacao_neurologica_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 220 (class 1259 OID 4180134)
-- Name: avaliacao_neurologica_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE avaliacao_neurologica_he (
    id integer DEFAULT nextval('public.avaliacao_neurologica_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    escala_coma numeric,
    sonolencia integer,
    torpor integer,
    agitado integer,
    desorientado integer,
    orientado integer
);


ALTER TABLE avaliacao_neurologica_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 221 (class 1259 OID 4180141)
-- Name: avaliacao_renal_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE avaliacao_renal_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE avaliacao_renal_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 222 (class 1259 OID 4180143)
-- Name: avaliacao_renal_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE avaliacao_renal_he (
    id integer DEFAULT nextval('public.avaliacao_renal_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE avaliacao_renal_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 223 (class 1259 OID 4180150)
-- Name: boca_faringe_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE boca_faringe_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boca_faringe_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 224 (class 1259 OID 4180152)
-- Name: boca_faringe_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE boca_faringe_he (
    id integer DEFAULT nextval('public.boca_faringe_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE boca_faringe_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 229 (class 1259 OID 4180168)
-- Name: cirurgias_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cirurgias_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirurgias_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 230 (class 1259 OID 4180170)
-- Name: cirurgias_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE cirurgias_he (
    id integer DEFAULT nextval('public.cirurgias_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    id_cirurgia integer NOT NULL
);


ALTER TABLE cirurgias_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 231 (class 1259 OID 4180174)
-- Name: condicoesgerais_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE condicoesgerais_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE condicoesgerais_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 232 (class 1259 OID 4180176)
-- Name: condicoesgerais_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE condicoesgerais_he (
    id integer DEFAULT nextval('public.condicoesgerais_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE condicoesgerais_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 233 (class 1259 OID 4180180)
-- Name: couro_cabeludo_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE couro_cabeludo_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE couro_cabeludo_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 234 (class 1259 OID 4180182)
-- Name: couro_cabeludo_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE couro_cabeludo_he (
    id integer DEFAULT nextval('public.couro_cabeludo_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    seborreia integer,
    desmatites integer,
    sujidade integer,
    pediculose integer,
    lesoes integer,
    tamanho_lesao character varying(60),
    tipo_lesao character varying(60)
);


ALTER TABLE couro_cabeludo_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 235 (class 1259 OID 4180186)
-- Name: diagnosticos_enfermagem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE diagnosticos_enfermagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE diagnosticos_enfermagem_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 236 (class 1259 OID 4180188)
-- Name: diagnosticos_enfermagem; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE diagnosticos_enfermagem (
    id integer DEFAULT nextval('public.diagnosticos_enfermagem_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    situacao character varying(1)
);


ALTER TABLE diagnosticos_enfermagem OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 237 (class 1259 OID 4180192)
-- Name: diagnosticos_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE diagnosticos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE diagnosticos_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 238 (class 1259 OID 4180194)
-- Name: diagnosticos_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE diagnosticos_he (
    id integer DEFAULT nextval('public.diagnosticos_he_id_seq'::regclass) NOT NULL,
    id_diagnostico integer NOT NULL,
    id_he integer NOT NULL
);


ALTER TABLE diagnosticos_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 239 (class 1259 OID 4180198)
-- Name: extremidades_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE extremidades_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE extremidades_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 240 (class 1259 OID 4180200)
-- Name: extremidades_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE extremidades_he (
    id integer DEFAULT nextval('public.extremidades_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE extremidades_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 241 (class 1259 OID 4180207)
-- Name: genitais_femininos_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE genitais_femininos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genitais_femininos_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 242 (class 1259 OID 4180209)
-- Name: genitais_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE genitais_he (
    id integer DEFAULT nextval('public.genitais_femininos_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE genitais_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 245 (class 1259 OID 4180217)
-- Name: he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 246 (class 1259 OID 4180219)
-- Name: he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE he (
    id integer DEFAULT nextval('public.he_id_seq'::regclass) NOT NULL,
    data_admissao date NOT NULL,
    id_paciente integer NOT NULL,
    id_enfermeiro integer NOT NULL,
    leito character varying(20) NOT NULL,
    idade character varying(60) NOT NULL,
    numero_filhos integer,
    data_alta date
);


ALTER TABLE he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 247 (class 1259 OID 4180223)
-- Name: homem_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE homem_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE homem_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 248 (class 1259 OID 4180225)
-- Name: homem_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE homem_he (
    id integer DEFAULT nextval('public.homem_he_id_seq'::regclass) NOT NULL,
    exame_preventivo_prostata date,
    resultado_exame_prostata character varying(100),
    id_he integer NOT NULL,
    atividade_sexual integer
);


ALTER TABLE homem_he OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 4180235)
-- Name: infs_antecedentes; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE infs_antecedentes (
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


ALTER TABLE infs_antecedentes OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 252 (class 1259 OID 4180241)
-- Name: itens_prescricao_enfermagem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE itens_prescricao_enfermagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE itens_prescricao_enfermagem_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 253 (class 1259 OID 4180243)
-- Name: itens_prescricao_enfermagem; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE itens_prescricao_enfermagem (
    id integer DEFAULT nextval('public.itens_prescricao_enfermagem_id_seq'::regclass) NOT NULL,
    id_prescricao_enfermagem integer NOT NULL,
    descricao character varying(40) NOT NULL
);


ALTER TABLE itens_prescricao_enfermagem OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 254 (class 1259 OID 4180247)
-- Name: mulher_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mulher_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mulher_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 255 (class 1259 OID 4180249)
-- Name: mulher_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE mulher_he (
    id integer DEFAULT nextval('public.mulher_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE mulher_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 256 (class 1259 OID 4180253)
-- Name: nariz_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE nariz_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nariz_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 257 (class 1259 OID 4180255)
-- Name: nariz_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE nariz_he (
    id integer DEFAULT nextval('public.nariz_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    secrecao integer,
    sujidade integer,
    epistaxe integer,
    rinorreia integer,
    desvio_septo integer,
    lesao integer,
    tipo_lesao character varying(50)
);


ALTER TABLE nariz_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 258 (class 1259 OID 4180259)
-- Name: olhos_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE olhos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE olhos_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 259 (class 1259 OID 4180261)
-- Name: olhos_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE olhos_he (
    id integer DEFAULT nextval('public.olhos_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE olhos_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 260 (class 1259 OID 4180265)
-- Name: ouvidos_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ouvidos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ouvidos_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 4180267)
-- Name: ouvidos_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE ouvidos_he (
    id integer DEFAULT nextval('public.ouvidos_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE ouvidos_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 262 (class 1259 OID 4180271)
-- Name: pele_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pele_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pele_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 263 (class 1259 OID 4180273)
-- Name: pele_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE pele_he (
    id integer DEFAULT nextval('public.pele_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE pele_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 264 (class 1259 OID 4180277)
-- Name: pescoco_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pescoco_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pescoco_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 265 (class 1259 OID 4180279)
-- Name: pescoco_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE pescoco_he (
    id integer DEFAULT nextval('public.pescoco_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    alteracoes character varying(150),
    ganglios_linfaticos integer,
    dor_palpacao integer,
    indolor_palpacao integer,
    turgidez integer
);


ALTER TABLE pescoco_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 267 (class 1259 OID 4180286)
-- Name: prescricao_enfermagem_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prescricao_enfermagem_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prescricao_enfermagem_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 268 (class 1259 OID 4180288)
-- Name: prescricao_enfermagem_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE prescricao_enfermagem_he (
    id integer DEFAULT nextval('public.prescricao_enfermagem_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    id_prescricao_enfermagem integer NOT NULL,
    frequencia integer,
    descricao character varying(150)
);


ALTER TABLE prescricao_enfermagem_he OWNER TO postgres;

--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN prescricao_enfermagem_he.frequencia; Type: COMMENT; Schema: he; Owner: postgres
--

COMMENT ON COLUMN prescricao_enfermagem_he.frequencia IS 'criar um combobox com varias frequencias';


SET search_path = public, pg_catalog;

--
-- TOC entry 269 (class 1259 OID 4180292)
-- Name: prescricoes_enfermagem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prescricoes_enfermagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prescricoes_enfermagem_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 270 (class 1259 OID 4180294)
-- Name: prescricoes_enfermagem; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE prescricoes_enfermagem (
    id integer DEFAULT nextval('public.prescricoes_enfermagem_id_seq'::regclass) NOT NULL,
    descricao character varying(100) NOT NULL,
    situacao character(1) NOT NULL
);


ALTER TABLE prescricoes_enfermagem OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 273 (class 1259 OID 4180303)
-- Name: religiosas_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE religiosas_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE religiosas_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 274 (class 1259 OID 4180305)
-- Name: religiosas_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE religiosas_he (
    id integer DEFAULT nextval('public.religiosas_he_id_seq'::regclass) NOT NULL,
    id_atividade_religiosa integer NOT NULL,
    id_he integer NOT NULL
);


ALTER TABLE religiosas_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 275 (class 1259 OID 4180309)
-- Name: risco_queda_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE risco_queda_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE risco_queda_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 276 (class 1259 OID 4180311)
-- Name: risco_queda_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE risco_queda_he (
    id integer DEFAULT nextval('public.risco_queda_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE risco_queda_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 277 (class 1259 OID 4180315)
-- Name: risco_ulcera_decubito_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE risco_ulcera_decubito_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE risco_ulcera_decubito_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 278 (class 1259 OID 4180317)
-- Name: risco_ulcera_decubito_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE risco_ulcera_decubito_he (
    id integer DEFAULT nextval('public.risco_ulcera_decubito_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE risco_ulcera_decubito_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 279 (class 1259 OID 4180324)
-- Name: sinais_vitais_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sinais_vitais_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sinais_vitais_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 280 (class 1259 OID 4180326)
-- Name: sinais_vitais_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE sinais_vitais_he (
    id integer DEFAULT nextval('public.sinais_vitais_he_id_seq'::regclass) NOT NULL,
    temperatura numeric,
    fc numeric,
    fr numeric,
    pa numeric,
    spo2 numeric,
    id_he integer
);


ALTER TABLE sinais_vitais_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 281 (class 1259 OID 4180333)
-- Name: tgi_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tgi_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tgi_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 282 (class 1259 OID 4180335)
-- Name: tgi_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE tgi_he (
    id integer DEFAULT nextval('public.tgi_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE tgi_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 283 (class 1259 OID 4180342)
-- Name: torax_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE torax_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE torax_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 284 (class 1259 OID 4180344)
-- Name: torax_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE torax_he (
    id integer DEFAULT nextval('public.torax_he_id_seq'::regclass) NOT NULL,
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


ALTER TABLE torax_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 285 (class 1259 OID 4180348)
-- Name: vias_aereas_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vias_aereas_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vias_aereas_he_id_seq OWNER TO postgres;

SET search_path = he, pg_catalog;

--
-- TOC entry 286 (class 1259 OID 4180350)
-- Name: vias_aereas_he; Type: TABLE; Schema: he; Owner: postgres
--

CREATE TABLE vias_aereas_he (
    id integer DEFAULT nextval('public.vias_aereas_he_id_seq'::regclass) NOT NULL,
    id_he integer NOT NULL,
    fio2 character varying(20),
    peep character varying(20),
    comissura_labial character varying(20),
    controlado integer,
    assistido integer,
    assistido_controlado integer,
    mandatorio_intermitente integer
);


ALTER TABLE vias_aereas_he OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 311 (class 1259 OID 4180905)
-- Name: cid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cid (
    id character varying(6) NOT NULL,
    descricao character varying(120),
    id_grupo_cid integer NOT NULL,
    sexo integer,
    causa_obito integer,
    situacao character(1)
);


ALTER TABLE cid OWNER TO postgres;

--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 311
-- Name: COLUMN cid.sexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN cid.sexo IS '0 - ambos
1 - feminino
2 - masculino';


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 311
-- Name: COLUMN cid.causa_obito; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN cid.causa_obito IS 'se pode ser causa de obito
0 - sim
1 - nao';


--
-- TOC entry 225 (class 1259 OID 4180156)
-- Name: cidades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cidades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cidades_id_seq OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 4180158)
-- Name: cidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cidades (
    id integer DEFAULT nextval('cidades_id_seq'::regclass) NOT NULL,
    nome character varying(60) NOT NULL,
    cep_unico integer,
    cep character varying(10),
    cod_ibge integer,
    uf integer,
    situacao character(1)
);


ALTER TABLE cidades OWNER TO postgres;

--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN cidades.cep_unico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN cidades.cep_unico IS '0 - Nao
1 - Sim';


--
-- TOC entry 227 (class 1259 OID 4180162)
-- Name: cirurgias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cirurgias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cirurgias_id_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 4180164)
-- Name: cirurgias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cirurgias (
    id integer DEFAULT nextval('cirurgias_id_seq'::regclass) NOT NULL,
    descricao character varying(150) NOT NULL,
    situacao character(1) NOT NULL
);


ALTER TABLE cirurgias OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 4181070)
-- Name: colaboradores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE colaboradores (
    id integer NOT NULL,
    nome character varying(100),
    situacao character(1)
);


ALTER TABLE colaboradores OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 4180700)
-- Name: convenios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE convenios (
    id integer NOT NULL,
    nome character varying(60) NOT NULL,
    situacao character(1),
    fonte_remuneracao integer,
    endereco character varying(100),
    id_cidade integer,
    cep character varying(10),
    bairro character varying(80),
    cnpj_convenio character varying(20),
    registro_ans character varying(20),
    cod_hospital_convenio character varying(15),
    exporta_cih integer,
    id_tabela_preco_matmed integer,
    id_tabela_preco_procedimentos integer
);


ALTER TABLE convenios OWNER TO postgres;

--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN convenios.situacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN convenios.situacao IS 'INATIVO = I
ATIVO = A';


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN convenios.cod_hospital_convenio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN convenios.cod_hospital_convenio IS 'Verificar qual dado vai aqui
(Codigo do hospital no convenio)';


--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN convenios.exporta_cih; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN convenios.exporta_cih IS '0 - Não
1 - Sim';


--
-- TOC entry 290 (class 1259 OID 4180705)
-- Name: cor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cor (
    id integer NOT NULL,
    descricao character varying(30),
    codigo_sus_cor integer
);


ALTER TABLE cor OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 4180982)
-- Name: encaminhamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE encaminhamentos (
    id integer NOT NULL,
    descricao character varying(120),
    situacao character(1)
);
ALTER TABLE ONLY encaminhamentos ALTER COLUMN descricao SET STATISTICS 0;


ALTER TABLE encaminhamentos OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 4181105)
-- Name: fornecedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fornecedores (
    id integer NOT NULL,
    razaosocial character varying(100),
    situacao character(1)
);


ALTER TABLE fornecedores OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 4180213)
-- Name: genitais_masculinos_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE genitais_masculinos_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genitais_masculinos_he_id_seq OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 4180215)
-- Name: genitalias_he_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE genitalias_he_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genitalias_he_id_seq OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 4180910)
-- Name: grupos_cid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE grupos_cid (
    id integer NOT NULL,
    descricao character varying(80) NOT NULL,
    situacao character(1)
);
ALTER TABLE ONLY grupos_cid ALTER COLUMN descricao SET STATISTICS 0;


ALTER TABLE grupos_cid OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 4180229)
-- Name: hospitais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hospitais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hospitais_id_seq OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 4180231)
-- Name: hospitais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE hospitais (
    id integer DEFAULT nextval('hospitais_id_seq'::regclass) NOT NULL,
    razaosocial character(100) NOT NULL
);


ALTER TABLE hospitais OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 4180740)
-- Name: leitos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE leitos (
    id integer NOT NULL,
    descricao character varying(30),
    id_quarto integer,
    status integer,
    situacao character(1)
);


ALTER TABLE leitos OWNER TO postgres;

--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN leitos.status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN leitos.status IS 'colocar aqui lista dos status do combobox';


--
-- TOC entry 287 (class 1259 OID 4180660)
-- Name: nacionalidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nacionalidades (
    id integer NOT NULL,
    descricao character varying(80),
    situacao character(1)
);


ALTER TABLE nacionalidades OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 4180283)
-- Name: pacientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pacientes (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    id_cidade integer,
    tipo_pessoa character(1),
    registro_profissional character varying(20),
    nascimento date,
    situacao character(1),
    tipo_registro integer,
    sexo integer,
    cor integer,
    estado_civil integer,
    escolaridade integer,
    id_religiao integer,
    nome_mae character varying(100),
    nome_pai character varying(100),
    id_naturalidade integer,
    id_nacionalidade integer,
    conjuge character varying(100),
    etnia integer,
    tipo_sangue integer,
    fone_principal character varying(15),
    fone_adicional1 character varying(15),
    desc_fone1 character varying(30),
    fone_adicional2 character varying(15),
    desc_fone2 character varying(30),
    cns character varying(20),
    cpf character varying(14),
    rg character varying(10),
    data_expedicao_rg date,
    orgao_expedidor_rg integer,
    uf_expedicao_rg integer,
    endereco character varying(100),
    numero character varying(15),
    cep character varying(10),
    bairro character varying(80),
    complemento character varying(80),
    local_trabalho character varying(60),
    profissao character varying(60),
    email character varying(80)
);


ALTER TABLE pacientes OWNER TO postgres;

--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN pacientes.tipo_pessoa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pacientes.tipo_pessoa IS '0 - paciente
1 - colaborador';


--
-- TOC entry 308 (class 1259 OID 4180875)
-- Name: procedimentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE procedimentos (
    id integer NOT NULL,
    codigo_amb_chpm character varying(10) NOT NULL,
    descricao character varying(120),
    codigo_tuss character varying(10),
    situacao character(1),
    valor_padrao_operacional numeric(9,2),
    valor_padrao_honorarios_medicos numeric(9,2),
    valor_padrao_total numeric(9,2)
);


ALTER TABLE procedimentos OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 4180670)
-- Name: profissoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profissoes (
    id integer NOT NULL,
    descricao character varying(80)
);


ALTER TABLE profissoes OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 4180730)
-- Name: quartos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE quartos (
    id integer NOT NULL,
    descricao character varying(30),
    id_setor integer,
    situacao character(1)
);


ALTER TABLE quartos OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 4180298)
-- Name: religioes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE religioes (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL,
    situacao character(1) NOT NULL
);


ALTER TABLE religioes OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 4180301)
-- Name: religioes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE religioes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE religioes_id_seq OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 4180750)
-- Name: responsavel_paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE responsavel_paciente (
    id integer NOT NULL,
    nome character varying(100),
    data_nascimento date,
    numero_documento character varying(20),
    tipo_documento integer,
    id_cidade integer,
    bairro character varying(80),
    endereco character varying(100),
    fone character varying(15),
    parentesco integer,
    local_trabalho character varying(80),
    situacao character(1) NOT NULL
);


ALTER TABLE responsavel_paciente OWNER TO postgres;

--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 294
-- Name: COLUMN responsavel_paciente.tipo_documento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN responsavel_paciente.tipo_documento IS 'informar dados do combobox aqui';


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 294
-- Name: COLUMN responsavel_paciente.parentesco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN responsavel_paciente.parentesco IS 'informar dados do combobox';


--
-- TOC entry 291 (class 1259 OID 4180720)
-- Name: setores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE setores (
    id integer NOT NULL,
    descricao character varying(30),
    situacao character(1)
);


ALTER TABLE setores OWNER TO postgres;

SET search_path = atendimentos, pg_catalog;

--
-- TOC entry 3679 (class 0 OID 4180926)
-- Dependencies: 313
-- Data for Name: atendimentos; Type: TABLE DATA; Schema: atendimentos; Owner: postgres
--

COPY atendimentos (id, data_atendimento, carater, id_medico_responsavel, id_procedimento, id_cid_provisorio, id_setor, tipo_clinica, tipo_atendimento, id_convenio, id_responsavel, responsavel_paciente, data_alta, id_cid_definitivo, motivo_alta, tipo_saida_tiss, id_encaminhamento, transferido_para, status, id_paciente, hora_atendimento, hora_alta, id_leito, id_quarto, id_medico_solicitante, origem, previsao_alta, tipo_acomodacao, tipo, obs, status_faturamento, motivo_nao_cobranca, valor_total) FROM stdin;
2	2018-08-31	2	1	4	306090	2	1	1	2	\N	-1	\N		\N	\N	\N		A	21	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
1	2018-08-31	1	3	4	202030	2	2	1	2	\N	-1	\N		\N	\N	\N		A	21	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
3	2018-09-14	1	3	4	202030	2	2	2	2	\N	-1	\N		\N	\N	\N		A	21	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N
5	2018-09-15	2	3	4	202030	2	1	1	2	3	2	\N		-1	-1	\N		C	21	00:32:00	00:00:00	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N
6	2018-09-19	1	1	1	202030	1	1	1	1	\N	\N	\N		\N	\N	\N		A	21	23:59:00	00:00:00	\N	\N	\N	\N	\N	\N	1		\N	\N	\N
7	2018-09-20	-1	3	3	306090	4	\N	\N	1	1	2	\N		\N	\N	\N		A	12	21:06:00	00:00:00	\N	\N	\N	\N	\N	\N	1		\N	\N	\N
4	2018-09-15	1	1	4	202030	2	1	2	2	\N	2	\N	202030	-1	-1	\N	TESTE	A	21	06:00:00	00:00:00	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N
8	2018-09-24	1	1	4	202030	4	1	1	2	3	2	\N	306090	-1	-1	\N		A	15	23:27:55	23:29:00	\N	\N	\N	\N	\N	\N	1		\N	\N	\N
12	2018-09-25	1	1	4	202030	4	1	1	2	2	2	\N	202030	-1	-1	\N	TESTE ENCERRAMENTO 1	C	13	14:26:16	14:28:00	\N	\N	\N	\N	\N	\N	1		\N	\N	\N
15	2018-10-12	1	1	3	306090	1	1	1	3	4	2	2018-10-16 00:00:00	202030	1	1	\N		E	23	12:53:38	00:23:25	1	1	1	\N	\N	1	2	TESTE - FATURAMENTO	C 	\N	207.00
14	2018-10-03	1	3	4	202030	1	1	1	2	\N	\N	2018-10-16 00:00:00	202030	1	1	\N		E	21	13:53:31	00:23:13	\N	\N	\N	\N	\N	\N	1		C 	\N	23.00
13	2018-09-25	1	1	4	202030	4	1	1	2	2	2	2018-10-16 00:00:00	202030	2	2	\N		E	17	17:21:24	00:23:46	1	1	3	\N	\N	1	2	teste 45678	NC	1	0.00
16	2018-10-16	1	3	7	306090	6	1	1	2	4	2	\N		\N	\N	\N		A	3	15:49:34	00:00:00	\N	\N	\N	\N	\N	\N	1		  	\N	0.00
10	2018-09-25	2	3	4	202030	5	2	2	2	2	2	2018-10-16 00:00:00	306090	1	1	\N		E	16	12:18:58	00:35:55	\N	\N	\N	\N	\N	\N	1		NC	2	0.00
9	2018-09-25	2	3	4	202030	4	2	2	2	2	2	\N	202030	-1	-1	\N		E	5	09:28:40	00:00:00	2	1	3	\N	\N	1	2		NC	4	0.00
11	2018-09-25	1	3	4	202030	5	1	1	2	2	2	2018-10-16 00:00:00	202030	1	2	\N		E	17	12:53:26	00:23:35	2	1	3	\N	\N	2	2	teste 1\r\nteste 2\r\nteste 3	  	\N	0.00
\.


--
-- TOC entry 3680 (class 0 OID 4180967)
-- Dependencies: 314
-- Data for Name: itens_atendimento; Type: TABLE DATA; Schema: atendimentos; Owner: postgres
--

COPY itens_atendimento (id, id_matmed, data_consumo, quantidade, id_procedimento, valor, exame, id_atendimento, valor_total, valor_honorarios_medicos, valor_operacional) FROM stdin;
2	\N	2018-10-12	1.00	4	20.00	\N	11	20.00	\N	\N
3	\N	2018-10-12	1.00	3	20.00	\N	11	20.00	\N	\N
4	5	2018-10-12	1.00	\N	24.00	\N	15	24.00	15.00	20.00
5	\N	2018-10-12	1.00	7	35.00	\N	15	35.00	15.00	20.00
6	\N	2018-10-12	1.00	5	60.00	\N	15	60.00	0.00	60.00
7	\N	2018-10-12	2.00	7	34.00	\N	15	68.00	30.00	40.00
8	1	2018-10-12	1.00	\N	20.00	\N	15	20.00	30.00	40.00
9	1	2018-10-14	1.00	\N	23.00	\N	14	23.00	0.00	0.00
\.


SET search_path = estoque, pg_catalog;

--
-- TOC entry 3672 (class 0 OID 4180860)
-- Dependencies: 306
-- Data for Name: compras; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY compras (id, nota, id_fornecedor, data_compra, data_entrega, valor_itens, valor_frete, outros_valores, obs_outros_valores, valor_total) FROM stdin;
\.


--
-- TOC entry 3662 (class 0 OID 4180760)
-- Dependencies: 296
-- Data for Name: grupos_matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY grupos_matmed (id, descricao, situacao) FROM stdin;
1	GRUPO 1	A
2	MATERIAIS	A
\.


--
-- TOC entry 3673 (class 0 OID 4180870)
-- Dependencies: 307
-- Data for Name: itens_compra; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY itens_compra (id, id_compra, id_matmed, quantidade, valor_custo, id_unidade_compra, desconto, valor_total, id_marca, id_lote, id_ponto_estoque) FROM stdin;
\.


--
-- TOC entry 3685 (class 0 OID 4181125)
-- Dependencies: 319
-- Data for Name: itens_solicitacao_matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY itens_solicitacao_matmed (id, id_matmed, quantidade) FROM stdin;
\.


--
-- TOC entry 3669 (class 0 OID 4180830)
-- Dependencies: 303
-- Data for Name: kit; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY kit (id, descricao, id_matmed, quantidade, formar_preco_kit) FROM stdin;
\.


--
-- TOC entry 3663 (class 0 OID 4180765)
-- Dependencies: 297
-- Data for Name: locais_matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY locais_matmed (id, descricao, situacao) FROM stdin;
1	LOCAL 1	A
2	LOCAL 2	A
3	LOCAL 3	A
4	LOCAL 4	A
5	LOCAL 5	A
\.


--
-- TOC entry 3668 (class 0 OID 4180815)
-- Dependencies: 302
-- Data for Name: lotes; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY lotes (id, id_fornecedor, validade, lote, id_matmed) FROM stdin;
\.


--
-- TOC entry 3661 (class 0 OID 4180755)
-- Dependencies: 295
-- Data for Name: matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY matmed (id, cod_interno, descricao, id_grupo, controlado, tipo_apresentacao, id_local, estoque_minimo, custo_medio, id_unidade, situacao, valor_padrao, material) FROM stdin;
2	2	TESTE MATMED 2	2	2	4	4	2.00	15.00	1	A	\N	\N
3	2563	TESTE MATMED 3	2	1	4	3	2.00	25.00	1	A	\N	\N
4	\N	TESTE 4	2	2	4	4	3.00	5.00	2	A	\N	\N
5	5	MATMED 5	2	1	2	3	2.00	60.00	1	A	20.00	\N
1	2563	MATMED 1	1	1	3	1	2.00	0.63	1	A	17.00	\N
6	20	TESTE MAT MED COMO MATERIAL	2	2	1	1	2.00	6.00	1	A	10.00	2
\.


--
-- TOC entry 3667 (class 0 OID 4180800)
-- Dependencies: 301
-- Data for Name: matmed_vias_aplicacao; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY matmed_vias_aplicacao (id, id_via_aplicacao, id_matmed) FROM stdin;
\.


--
-- TOC entry 3686 (class 0 OID 4181135)
-- Dependencies: 320
-- Data for Name: motivos_movimentacao_manual; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY motivos_movimentacao_manual (id, descricao) FROM stdin;
\.


--
-- TOC entry 3687 (class 0 OID 4181140)
-- Dependencies: 321
-- Data for Name: movimentacao_manual_matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY movimentacao_manual_matmed (id, id_colaborador, id_matmed, data_movimentacao, hora_movimentacao, quantidade, tipo, id_motivo, obs) FROM stdin;
\.


--
-- TOC entry 3665 (class 0 OID 4180790)
-- Dependencies: 299
-- Data for Name: pontos_estoque; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY pontos_estoque (id, descricao) FROM stdin;
\.


--
-- TOC entry 3682 (class 0 OID 4181062)
-- Dependencies: 316
-- Data for Name: solicitacao_matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY solicitacao_matmed (id, id_solicitante, data_solicitacao, hora_solicitacao, id_setor_solicitante, id_setor_destino, id_responsavel, id_atendimento, obs, status) FROM stdin;
\.


--
-- TOC entry 3664 (class 0 OID 4180770)
-- Dependencies: 298
-- Data for Name: unidades_matmed; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY unidades_matmed (id, descricao, abreviacao, situacao) FROM stdin;
1	UNIDADE	UN	A
2	PECA	PC	A
\.


--
-- TOC entry 3666 (class 0 OID 4180795)
-- Dependencies: 300
-- Data for Name: vias_aplicacao; Type: TABLE DATA; Schema: estoque; Owner: postgres
--

COPY vias_aplicacao (id, descricao) FROM stdin;
\.


SET search_path = exames, pg_catalog;

--
-- TOC entry 3691 (class 0 OID 4181226)
-- Dependencies: 325
-- Data for Name: consumos_exame; Type: TABLE DATA; Schema: exames; Owner: postgres
--

COPY consumos_exame (id, id_matmed, quantidade, perda, motivo_perda, id_exame) FROM stdin;
\.


--
-- TOC entry 3688 (class 0 OID 4181163)
-- Dependencies: 322
-- Data for Name: exames; Type: TABLE DATA; Schema: exames; Owner: postgres
--

COPY exames (id, unidade, id_atendimento, id_paciente, id_convenio, id_medico_solicitante, origem, hipoteses_diagnosticas, exames_clinicos, retirar_em, cuidados, status, data_entrega, quem_recebeu) FROM stdin;
\.


--
-- TOC entry 3692 (class 0 OID 4181236)
-- Dependencies: 326
-- Data for Name: execucao_exame; Type: TABLE DATA; Schema: exames; Owner: postgres
--

COPY execucao_exame (id, id_tecnico, data_conclusao) FROM stdin;
\.


--
-- TOC entry 3689 (class 0 OID 4181196)
-- Dependencies: 323
-- Data for Name: itens_exames; Type: TABLE DATA; Schema: exames; Owner: postgres
--

COPY itens_exames (id, id_procedimento, complemento, quantidade, id_requisicao_exame, status) FROM stdin;
\.


--
-- TOC entry 3693 (class 0 OID 4181256)
-- Dependencies: 327
-- Data for Name: laudo_exame; Type: TABLE DATA; Schema: exames; Owner: postgres
--

COPY laudo_exame (id, data_laudo, resultado, id_radiologista, laudo, id_exame) FROM stdin;
\.


--
-- TOC entry 3694 (class 0 OID 4181269)
-- Dependencies: 328
-- Data for Name: resultado_padrao_exames; Type: TABLE DATA; Schema: exames; Owner: postgres
--

COPY resultado_padrao_exames (id, descricao, resultado) FROM stdin;
\.


SET search_path = faturamento, pg_catalog;

--
-- TOC entry 3696 (class 0 OID 4181292)
-- Dependencies: 330
-- Data for Name: atendimentos_fatura; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY atendimentos_fatura (id, id_fatura, id_atendimento) FROM stdin;
4	5	10
5	5	15
6	5	14
\.


--
-- TOC entry 3697 (class 0 OID 4189604)
-- Dependencies: 331
-- Data for Name: competencias; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY competencias (id, descricao, id_convenio, situacao, data_abertura, data_fechamento, status) FROM stdin;
1	08/2018	3	A	2018-10-13	2018-10-15	1
2	07/2018	1	A	\N	\N	1
\.


--
-- TOC entry 3690 (class 0 OID 4181211)
-- Dependencies: 324
-- Data for Name: consumos_padroes; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY consumos_padroes (id, id_procedimento, id_matmed, quantidade) FROM stdin;
\.


--
-- TOC entry 3695 (class 0 OID 4181287)
-- Dependencies: 329
-- Data for Name: faturas; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY faturas (id, descricao, status, id_convenio, situacao, data_abertura, data_fechamento, id_competencia) FROM stdin;
1	FATURA 01 - TESTE	\N	\N	 	\N	\N	\N
2	TESTE FATURA 2	\N	\N	A	\N	\N	\N
3	TESTE FATURA 3	\N	3	A	\N	\N	\N
4	TESTE FATURA 4	1	1	A	\N	\N	\N
5	TESTE FATURA 5	1	2	A	\N	\N	\N
\.


--
-- TOC entry 3698 (class 0 OID 4189609)
-- Dependencies: 332
-- Data for Name: faturas_competencia; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY faturas_competencia (id, id_fatura, id_competencia) FROM stdin;
\.


--
-- TOC entry 3671 (class 0 OID 4180845)
-- Dependencies: 305
-- Data for Name: itens_tabela_preco_matmed; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY itens_tabela_preco_matmed (id, id_tabela_preco_matmed, id_matmed, valor) FROM stdin;
1	1	1	23.00
2	1	2	56.00
3	5	1	20.00
4	5	2	21.00
5	5	3	22.00
6	5	4	23.00
7	5	5	24.00
\.


--
-- TOC entry 3676 (class 0 OID 4180885)
-- Dependencies: 310
-- Data for Name: itens_tabela_preco_procedimentos; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY itens_tabela_preco_procedimentos (id, id_tabela_procedimentos, id_procedimento, custo_operacional, honorarios_medicos, valor_total) FROM stdin;
1	3	4	23.00	15.00	38.00
2	3	3	15.00	20.00	35.00
6	1	7	20.00	15.00	35.00
7	1	6	20.00	50.00	70.00
9	4	5	60.00	0.00	60.00
10	4	7	22.00	15.00	37.00
\.


--
-- TOC entry 3670 (class 0 OID 4180840)
-- Dependencies: 304
-- Data for Name: tabela_preco_matmed; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY tabela_preco_matmed (id, descricao, vigencia_geral, situacao) FROM stdin;
1	TABELA MATMED 1 - TESTE	2020-01-20	A
2	TABELA 2 SEM PRAZO DE VIGENCIA	2020-01-20	A
3	TESTE 3	2020-01-20	A
4	SEM VIGENCIA	\N	A
5	TABELA DE PRECO - MATMED	\N	A
\.


--
-- TOC entry 3675 (class 0 OID 4180880)
-- Dependencies: 309
-- Data for Name: tabela_preco_procedimentos; Type: TABLE DATA; Schema: faturamento; Owner: postgres
--

COPY tabela_preco_procedimentos (id, descricao, vigencia_geral, situacao) FROM stdin;
2	TABELA DE PRECO 2	\N	A
3	TABELA DE PRECO 3 COM DATA	2018-08-20	A
1	TABELA DE PRECO PROCEDIMENTOS 1	\N	A
4	TABELA DE PRECO - PROCEDIMENTOS	\N	A
\.


SET search_path = he, pg_catalog;

--
-- TOC entry 3568 (class 0 OID 4180076)
-- Dependencies: 202
-- Data for Name: alergias; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY alergias (id, descricao, tipo_alergia, situacao) FROM stdin;
1	TESTE 2	1	A
2	TESTE NAMESPACE	1	A
3	TESTE 3	1	A
\.


--
-- TOC entry 3570 (class 0 OID 4180082)
-- Dependencies: 204
-- Data for Name: alergias_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY alergias_he (id, id_he, id_alergia) FROM stdin;
1	1	1
2	2	1
3	74	1
\.


--
-- TOC entry 3572 (class 0 OID 4180088)
-- Dependencies: 206
-- Data for Name: antecedentes; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY antecedentes (id, descricao, tipo_antecedente, situacao) FROM stdin;
1	HAS	1	A
2	DM	1	A
3	CA	1	A
4	EPILEPSIA	1	A
5	TB	1	A
\.


--
-- TOC entry 3574 (class 0 OID 4180094)
-- Dependencies: 208
-- Data for Name: antecedentes_paciente; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY antecedentes_paciente (id, id_antecedente, id_he, quantidade, frequencia, tempoconsumo, tempoquimioterapia, data_registro, temporadioterapia, tipo_antecedente, obs_geral, tratado, tratamento) FROM stdin;
1	4	1	\N	\N	\N	\N	\N	\N	1	\N	\N	\N
2	1	1	\N	\N	\N	\N	\N	\N	1	\N	\N	\N
3	3	1	\N	\N	\N	\N	\N	\N	2	\N	\N	\N
4	1	1	\N	\N	\N	\N	\N	\N	2	\N	\N	\N
5	4	2	\N	\N	\N	\N	\N	\N	2	\N	\N	\N
6	1	2	\N	\N	\N	\N	\N	\N	2	\N	\N	\N
7	4	7	0	0	0.00	0.00	\N	0.00	2		0	0
8	4	8	2	3	4.00	2.00	\N	3.00	2	obs geral	1	2
9	4	9	2	3	1.00	4.00	\N	4.00	2	obs gerais	1	2
11	4	19	0	0	0.00	0.00	\N	0.00	1		0	0
12	4	38	0	0	0.00	0.00	\N	0.00	1		0	0
10	4	38	2	3	4.00	3.00	\N	4.00	2	teste obs gerais	1	2
13	3	74	0	0	0.00	0.00	\N	0.00	1		0	0
14	4	74	0	0	0.00	0.00	\N	0.00	1		0	0
15	1	74	0	0	0.00	0.00	\N	0.00	1		0	0
16	3	74	0	0	0.00	0.00	\N	0.00	2		0	0
17	4	74	0	0	0.00	0.00	\N	0.00	2		0	0
18	1	74	5	6	7.00	8.00	\N	9.00	2	OBS SAE FEMININO COM 3 ANTECEDENTES FAMILIARES E 3 ANTECEDENTES PESSOAIS\r\n	2	1
\.


--
-- TOC entry 3576 (class 0 OID 4180104)
-- Dependencies: 210
-- Data for Name: aprazamento_prescricao_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY aprazamento_prescricao_he (id, id_prescricao_he, hora) FROM stdin;
\.


--
-- TOC entry 3578 (class 0 OID 4180110)
-- Dependencies: 212
-- Data for Name: atividadefisica_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY atividadefisica_he (id, id_he, forca_muscular, ausencia_forca, deambula_auxilio, deambula_sem_auxilio, cadeira_rodas, acamado, repouso_absoluto, paresias, paraplegia, tetraplegia, plegias) FROM stdin;
1	17	-1	-1	1	-1	-1	-1	-1	TESTE01	TESTE02	TESTE03	TESTE04
2	18	1	1	1	1	1	1	1	A	B	C	D
3	20	0	0	0	0	0	0	0				
4	21	2	1	1	2	2	1	2	A	B	C	D
5	22	0	0	0	0	0	0	0				
6	23	0	0	0	0	0	0	0				
\.


--
-- TOC entry 3580 (class 0 OID 4180116)
-- Dependencies: 214
-- Data for Name: atividades_religiosas; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY atividades_religiosas (id, descricao, situacao) FROM stdin;
1	TESTE 01	A
2	TESTE 02	A
\.


--
-- TOC entry 3582 (class 0 OID 4180122)
-- Dependencies: 216
-- Data for Name: ausculta_cardiaca_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY ausculta_cardiaca_he (id, id_he, palpacao_ictus_cordis, fremito_tatil, foco_aortico, foco_pulmonar, foco_mitral, foco_tricuspide) FROM stdin;
1	34	A	B	C	D	E	F
\.


--
-- TOC entry 3584 (class 0 OID 4180128)
-- Dependencies: 218
-- Data for Name: ausculta_pulmonar_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY ausculta_pulmonar_he (id, id_he, excursao_respiratoria, fremito_toracovocal, traqueia, tipo_tosse, eupneia, taquipneia, bradipneia, murmurios_vesiculares, roncos, sibilos, estertores, crepitantes, expectoracao_espontanea, percussao_respiratoria_costelas) FROM stdin;
1	33	T	A	A	2	1	1	1	1	1	1	1	1	1	A
2	34				0	0	0	0	0	0	0	0	0	0	
\.


--
-- TOC entry 3586 (class 0 OID 4180134)
-- Dependencies: 220
-- Data for Name: avaliacao_neurologica_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY avaliacao_neurologica_he (id, id_he, escala_coma, sonolencia, torpor, agitado, desorientado, orientado) FROM stdin;
1	16	2.00	2	1	1	2	1
\.


--
-- TOC entry 3588 (class 0 OID 4180143)
-- Dependencies: 222
-- Data for Name: avaliacao_renal_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY avaliacao_renal_he (id, id_he, obs_drenos, obs_curativos, obs_ostomias, svd, fralda_quantidade, caracteristicas_fralda, colostomia_quantidade, colostomia_caracteristicas, normal, anormal, dor_percussao, sem_dor, drenos, curativos, ostomias, presente, ausente, espontanea, ardencia, oliguria, disuria, anuria, hematuria, polaciuria, incontinencia_urinaria, globo_vesical, presente_intestinais, constipacao, melena, diarreia, enterorragia, fralda, colostomia, svd_fralda, caracteristica_diurese, ausente_tempo, fralda_tipo, colostomia_tipo) FROM stdin;
1	42	TESTE	TESTE	TESTE	0	2	TESTE	1.00	TESTE	1	1	1	1	1	1	1	1	2	1	2	2	2	2	2	1	1	1	1	1	1	2	1	1	2	1	TESTE	2	TESTE	TESTE
\.


--
-- TOC entry 3590 (class 0 OID 4180152)
-- Dependencies: 224
-- Data for Name: boca_faringe_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY boca_faringe_he (id, id_he, tipo_lesao, local_lesao, lingua_saburrosa, dislalia, disfasia, disfonia, labios_ressecados, cianose_labial, lesoes) FROM stdin;
1	28	1	TESTE 1 BOCA - FARINGE	1	1	1	1	1	1	1
2	29	0		0	0	0	0	0	0	0
3	30	0		0	0	0	0	0	0	0
4	31	0		0	0	0	0	0	0	0
5	33	0		0	0	0	0	0	0	0
6	34	0		0	0	0	0	0	0	0
\.


--
-- TOC entry 3596 (class 0 OID 4180170)
-- Dependencies: 230
-- Data for Name: cirurgias_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY cirurgias_he (id, id_he, id_cirurgia) FROM stdin;
1	1	4
2	1	1
3	2	1
4	2	4
5	74	4
6	74	1
7	74	2
8	74	3
\.


--
-- TOC entry 3598 (class 0 OID 4180176)
-- Dependencies: 232
-- Data for Name: condicoesgerais_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY condicoesgerais_he (id, id_he, beg, reg, meg, apatico, cianotico, icterico, desidratado, sudoretico, dispneico, edema, palidez_cutanea) FROM stdin;
1	16	1	1	1	2	1	1	1	1	1	1	1
\.


--
-- TOC entry 3600 (class 0 OID 4180182)
-- Dependencies: 234
-- Data for Name: couro_cabeludo_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY couro_cabeludo_he (id, id_he, seborreia, desmatites, sujidade, pediculose, lesoes, tamanho_lesao, tipo_lesao) FROM stdin;
1	22	0	0	0	0	0		
2	23	0	0	0	0	0		
\.


--
-- TOC entry 3602 (class 0 OID 4180188)
-- Dependencies: 236
-- Data for Name: diagnosticos_enfermagem; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY diagnosticos_enfermagem (id, descricao, situacao) FROM stdin;
1	PADRÃO RESPIRATÓRIO INEFICAZ	A
2	RISCO DE QUEDA	A
3	INTEGRIDADE DA PELE PREJUDICADA	A
5	DOR AGUDA/CRÔNICA	A
6	DÉFICIT PARA AUTO CUIDADO	A
7	MOBILIDADE FÍSICA PREJUDICADA	A
8	RISCO DE ASPIRAÇÃO	A
9	RISCO DE INFECÇÃO	A
4	RISCO DE DESIDRATAÇÃOOO	A
\.


--
-- TOC entry 3604 (class 0 OID 4180194)
-- Dependencies: 238
-- Data for Name: diagnosticos_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY diagnosticos_he (id, id_diagnostico, id_he) FROM stdin;
1	1	52
2	5	53
3	7	54
4	1	55
5	7	55
6	3	63
7	7	63
8	7	63
\.


--
-- TOC entry 3606 (class 0 OID 4180200)
-- Dependencies: 240
-- Data for Name: extremidades_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY extremidades_he (id, id_he, edema, lesoes, deformidades, cateteres_venenosos, local_diminuida, sinais_infeccao_fungos, baqueteamento_dedos, desde, normal, diminuida, edema_mmii, ulceras_venosas, ulceras_arteriais) FROM stdin;
1	48	TESTE EDEMA	TESTE LESOES	TESTE DEFORMIDADES	TESTE CAT	teste local diminuida	1	1	1 SEMANA	1	2	EDEMA MMII	ULCERAS VENOSAS	ULCERAS ARTERIAIS
\.


--
-- TOC entry 3608 (class 0 OID 4180209)
-- Dependencies: 242
-- Data for Name: genitais_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY genitais_he (id, id_he, tipo_secrecao, lesoes, odor, dor_miccoes, prurido, presenca_secrecao, suspeita_dst, ultima_coleta_co, atento_dst, usa_preservativo, escrotal_edema, escrotal_hiperemia, presenca_parasitas, anal_edema, anal_ulceracoes, anal_fissuras, anal_fistulas, anal_hemorroidas, anal_abscesso) FROM stdin;
1	46	-1	1	1	1	1	1	1	1	0	0	0	0	0	1	1	1	1	1	1
2	47	1	1	1	1	1	1	0	0	1	1	1	1	1	1	1	1	1	1	1
3	48	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
\.


--
-- TOC entry 3612 (class 0 OID 4180219)
-- Dependencies: 246
-- Data for Name: he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY he (id, data_admissao, id_paciente, id_enfermeiro, leito, idade, numero_filhos, data_alta) FROM stdin;
1	2018-04-06	13	12	850	22	1	\N
2	2018-04-06	16	15	852	22	1	\N
3	2018-04-06	17	12	20	1	1	\N
4	2018-04-06	18	15	50	1	1	\N
5	2018-04-06	13	15	60	1	1	\N
6	2018-04-09	18	15	52	22	1	\N
7	2018-04-11	13	15	50	20	2	\N
8	2018-04-11	13	15	60	25	3	\N
9	2018-04-11	16	15	60	25	3	\N
10	2018-04-11	16	15	30	25	2	\N
11	2018-04-12	18	15	60	22	1	\N
12	2018-04-13	16	15	60	23	2	\N
13	2018-04-13	13	12	60	36	2	\N
14	2018-04-13	18	15	20	33	2	\N
15	2018-04-13	18	15	60	2	3	\N
16	2018-04-13	18	15	20	20	20	\N
17	2018-04-14	18	15	2	1	3	\N
18	2018-04-14	18	15	20	20	20	\N
19	2018-04-17	13	15	20	20	2	\N
20	2018-04-30	18	15	20	30	2	\N
21	2018-04-30	18	15	20	20	20	\N
22	2018-04-30	18	15	60	20	1	\N
23	2018-05-01	18	15	20	15	3	\N
24	2018-05-03	7	12	20E	20	2	\N
25	2018-05-04	16	15	20	20	3	\N
26	2018-05-05	18	15	20	20	2	\N
27	2018-05-05	18	15	3	5	2	\N
28	2018-05-05	18	15	20	2	2	\N
29	2018-05-05	16	12	20	20	3	\N
30	2018-05-05	17	15	3	5	1	\N
31	2018-05-05	13	12	20	20	3	\N
32	2018-05-05	18	15	20	3	58	\N
33	2018-05-05	18	15	2	2	2	\N
34	2018-05-08	18	15	20	20	1	\N
35	2018-05-09	13	15	20	20	3	\N
36	2018-05-09	16	15	20	20	3	\N
37	2018-05-09	18	15	20	3	3	\N
38	2018-05-12	16	15	20	20	3	\N
39	2018-05-12	16	15	20	20	3	\N
40	2018-05-12	16	15	20	20	3	\N
41	2018-05-15	13	15	20	3	1	\N
42	2018-05-15	18	15	20	3	1	\N
43	2018-05-15	16	15	23	22	1	\N
44	2018-05-15	16	15	20	20	1	\N
45	2018-05-15	17	15	20	1	1	\N
46	2018-05-15	18	15	20	1	1	\N
47	2018-05-15	16	15	19	22	1	\N
48	2018-05-16	16	15	20	1	1	\N
49	2018-05-26	16	15	20	20	2	\N
50	2018-05-26	16	15	20	20	2	\N
51	2018-05-26	16	15	20	20	1	\N
52	2018-05-26	17	12	20	25	3	\N
53	2018-05-26	16	15	20	20	2	\N
54	2018-05-26	16	15	20	20	4	\N
55	2018-05-26	17	12	20	20	4	\N
56	2018-05-26	18	15	20	20	3	\N
57	2018-05-26	17	15	20	20	4	\N
58	2018-05-27	18	15	20	20	2	\N
59	2018-05-27	17	15	20	20	1	\N
60	2018-05-27	17	15	20	20	1	\N
61	2018-05-27	17	15	20	20	3	\N
62	2018-05-27	16	15	20	20	3	\N
63	2018-05-27	16	15	20	20	1	\N
64	2018-05-28	16	15	20	20	1	\N
65	2018-05-28	17	15	20	20	3	\N
66	2018-05-28	18	15	20	20	2	\N
67	2018-05-28	16	15	20	20	1	\N
68	2018-05-28	16	15	20	20	3	\N
69	2018-05-28	16	15	20	20	3	\N
70	2018-05-28	16	15	20	20	4	\N
71	2018-05-28	17	15	20	20	3	\N
72	2018-05-28	17	12	20	20	3	\N
73	2018-05-28	17	15	20	20	1	\N
74	2018-06-02	18	15	51	22	3	\N
\.


--
-- TOC entry 3614 (class 0 OID 4180225)
-- Dependencies: 248
-- Data for Name: homem_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY homem_he (id, exame_preventivo_prostata, resultado_exame_prostata, id_he, atividade_sexual) FROM stdin;
\.


--
-- TOC entry 3617 (class 0 OID 4180235)
-- Dependencies: 251
-- Data for Name: infs_antecedentes; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY infs_antecedentes (id, id_he, data_registro, tempo_internacao_anterior, motivo_internacao, tempo_transfusaosanguinea_anterior, obs_gastrointestinais_hepatobiliares, obs_alteracoes_osseas, obs_alteracoes_renais_urinarias, obs_alteracoes_cardiovasculares, obs_alteracoes_pulmonares) FROM stdin;
0	10	2018-04-11	2.00	TESTE ULTIMA INTERNACAO	3.00	teste 12345	teste 1	teste 12	teste 123	teste 1234
\.


--
-- TOC entry 3619 (class 0 OID 4180243)
-- Dependencies: 253
-- Data for Name: itens_prescricao_enfermagem; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY itens_prescricao_enfermagem (id, id_prescricao_enfermagem, descricao) FROM stdin;
\.


--
-- TOC entry 3621 (class 0 OID 4180249)
-- Dependencies: 255
-- Data for Name: mulher_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY mulher_he (id, id_he, dum, menopausa_desde, contraceptivo, data_ginecologico_preventivo, resultado_ginecologico_preventivo, g, p, a, autoexame_mama) FROM stdin;
\.


--
-- TOC entry 3623 (class 0 OID 4180255)
-- Dependencies: 257
-- Data for Name: nariz_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY nariz_he (id, id_he, secrecao, sujidade, epistaxe, rinorreia, desvio_septo, lesao, tipo_lesao) FROM stdin;
1	27	1	2	1	2	1	2	TESTE 01
2	28	0	0	0	0	0	0	
3	29	0	0	0	0	0	0	
4	30	0	0	0	0	0	0	
5	31	0	0	0	0	0	0	
6	33	0	0	0	0	0	0	
7	34	0	0	0	0	0	0	
\.


--
-- TOC entry 3625 (class 0 OID 4180261)
-- Dependencies: 259
-- Data for Name: olhos_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY olhos_he (id, id_he, qual_ausente, obs_outros, preservada, diminuida, ausente, corada, descorada, hiperemia, ictericia, anemia, sujidade, edema_palpebral, ptose_palpebral, isocoricas, anisocoricas, fotoreagentes, sem_fotoreacao) FROM stdin;
1	23	\N		0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
\.


--
-- TOC entry 3627 (class 0 OID 4180267)
-- Dependencies: 261
-- Data for Name: ouvidos_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY ouvidos_he (id, id_he, qual_ausente, tipo_lesao, local_lesao, tipo_secrecao, local_secrecao, preservada, diminuida, ausente, otalgia, lesao, secrecao) FROM stdin;
1	23	TESTE	1	TESTE	1	TESTE	1	2	1	1	\N	\N
\.


--
-- TOC entry 3629 (class 0 OID 4180273)
-- Dependencies: 263
-- Data for Name: pele_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY pele_he (id, id_he, palidez, cianose, hiperemia, integra, lesionada, local_lesao, prurido, deformidades, torgor_normal, torgor_diminuido, equimose, petequias, eritemas, exantemas, hematomas, urticarias, papulas, tumor, nodulos, abscessos, pustulas, bolhas, vesiculas, local_manchas, tamanho_manchas) FROM stdin;
1	20	-1	-1	-1	-1	-1		-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		
2	21	-1	-1	-1	-1	-1		-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		
3	22	-1	-1	-1	-1	-1		-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		
4	23	-1	-1	-1	-1	-1		-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		
\.


--
-- TOC entry 3631 (class 0 OID 4180279)
-- Dependencies: 265
-- Data for Name: pescoco_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY pescoco_he (id, id_he, alteracoes, ganglios_linfaticos, dor_palpacao, indolor_palpacao, turgidez) FROM stdin;
1	30	TESTE 01 PESCOCO	1	1	1	1
2	31		0	0	0	0
3	33		0	0	0	0
4	34		0	0	0	0
\.


--
-- TOC entry 3634 (class 0 OID 4180288)
-- Dependencies: 268
-- Data for Name: prescricao_enfermagem_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY prescricao_enfermagem_he (id, id_he, id_prescricao_enfermagem, frequencia, descricao) FROM stdin;
1	68	2	2	TESTE 66
2	69	2	2	TESTE2
3	71	2	2	TESTE 66
4	72	2	2	TESTE 1
5	73	2	2	TESTE 123
6	73	2	3	TESTE 321
\.


--
-- TOC entry 3636 (class 0 OID 4180294)
-- Dependencies: 270
-- Data for Name: prescricoes_enfermagem; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY prescricoes_enfermagem (id, descricao, situacao) FROM stdin;
2	TESTE 666666	A
1	TESTE 0111	I
3	TESTE 12	I
\.


--
-- TOC entry 3640 (class 0 OID 4180305)
-- Dependencies: 274
-- Data for Name: religiosas_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY religiosas_he (id, id_atividade_religiosa, id_he) FROM stdin;
1	1	1
2	2	1
3	1	2
4	2	2
5	1	74
6	2	74
\.


--
-- TOC entry 3642 (class 0 OID 4180311)
-- Dependencies: 276
-- Data for Name: risco_queda_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY risco_queda_he (id, id_he, maior_65, urgencia_urinaria_fecal, deficit_avs, uso_sedativos, dificuldade_marcha, disturbio_comportamentos, mobilidade_prejudicada, hipotensao_postural, historico_queda_ultimo_ano, hipoxia_hipoxemia) FROM stdin;
1	62	1	2	2	2	2	2	2	2	2	2
2	63	1	2	2	2	2	1	1	1	1	1
\.


--
-- TOC entry 3644 (class 0 OID 4180317)
-- Dependencies: 278
-- Data for Name: risco_ulcera_decubito_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY risco_ulcera_decubito_he (id, id_he, percepcao_sensorial, umidade, atividade, mobilidade, nutricao, friccao_cisalhamento, valor_score, braden) FROM stdin;
1	59	1	1	1	1	1	1	6.00	6 - 9 | Altíssimo Risco
2	62	0	0	0	0	0	0	0.00	
3	63	0	0	0	0	0	0	0.00	
\.


--
-- TOC entry 3646 (class 0 OID 4180326)
-- Dependencies: 280
-- Data for Name: sinais_vitais_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY sinais_vitais_he (id, temperatura, fc, fr, pa, spo2, id_he) FROM stdin;
1	20.00	30.00	40.00	50.00	60.00	15
2	1.00	2.00	3.00	4.00	5.00	16
\.


--
-- TOC entry 3648 (class 0 OID 4180335)
-- Dependencies: 282
-- Data for Name: tgi_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY tgi_he (id, id_he, cicatrizes, outros_achados, medida_figado, espontanea, espontanea_assistida, npo, sng, sne, npt, sng_aberta, jejunostomia, gastrostomia, globoso, plano, escavado, flacido, distendido, timpanico, inspecao, normais_audiveis, ausentes, hiperativos, hipoativos, sons_timpanicos, sons_macicos, indolor, palpacao_fig_normal, palpacao_fig_alterado, percussao_fig_normal, percussao_fig_alterado, presenca_massa_anormal, doloroso_palpacao, ascitico) FROM stdin;
1	37	A	B	4.00	2	1	1	1	1	2	1	2	2	2	1	2	1	1	2	1	1	1	1	2	1	1	2	2	2	1	1	D	C	1
2	37	A	B	4.00	2	1	1	1	1	2	1	2	2	2	1	2	1	1	2	1	1	1	1	2	1	1	2	2	2	1	1	D	C	1
3	42	TESTE	TESTE	1.00	1	1	1	1	1	1	1	1	1	1	1	1	2	1	1	1	1	1	1	1	1	1	2	1	2	1	2	Y	Y	1
\.


--
-- TOC entry 3650 (class 0 OID 4180344)
-- Dependencies: 284
-- Data for Name: torax_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY torax_he (id, id_he, obs_alterado, presenca_cateteres_centrais, forma_normal, forma_alterado, simetrico, assimetrico, funil, barril, pombo, cifoescoliose, expansibilidade_normal, expansibilidade_diminuida, presenca_desde, local_expansibilidade_diminuida) FROM stdin;
1	31	TESTE TORAX	CATET	1	1	1	1	1	1	1	2	2	1	DESDE	TESTE EXP
2	33			0	0	0	0	0	0	0	0	0	0		
3	34			0	0	0	0	0	0	0	0	0	0		
\.


--
-- TOC entry 3652 (class 0 OID 4180350)
-- Dependencies: 286
-- Data for Name: vias_aereas_he; Type: TABLE DATA; Schema: he; Owner: postgres
--

COPY vias_aereas_he (id, id_he, fio2, peep, comissura_labial, controlado, assistido, assistido_controlado, mandatorio_intermitente) FROM stdin;
1	29	1	2	3	2	2	2	2
2	30				0	0	0	0
3	31				0	0	0	0
4	33				0	0	0	0
5	34				0	0	0	0
\.


SET search_path = public, pg_catalog;

--
-- TOC entry 3677 (class 0 OID 4180905)
-- Dependencies: 311
-- Data for Name: cid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cid (id, descricao, id_grupo_cid, sexo, causa_obito, situacao) FROM stdin;
306090	TESTES306090	1	2	1	A
202030	TESTE 202030	1	2	1	A
908070	TESTES 232	3	0	1	I
\.


--
-- TOC entry 3592 (class 0 OID 4180158)
-- Dependencies: 226
-- Data for Name: cidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cidades (id, nome, cep_unico, cep, cod_ibge, uf, situacao) FROM stdin;
1	CAPINZAL	\N	\N	\N	\N	A
2	OURO	\N	\N	\N	\N	A
3	LACERDOPOLIS	\N	\N	\N	\N	A
4	ZORTEA	\N	\N	\N	\N	A
6	PIRATUBA	\N	\N	\N	\N	A
7	CATANDUVAS	2	89.667-000	856324	\N	A
\.


--
-- TOC entry 3594 (class 0 OID 4180164)
-- Dependencies: 228
-- Data for Name: cirurgias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cirurgias (id, descricao, situacao) FROM stdin;
1	PARTO	A
2	TESTE	A
3	TESTE 2	A
4	AAA	A
\.


--
-- TOC entry 3683 (class 0 OID 4181070)
-- Dependencies: 317
-- Data for Name: colaboradores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY colaboradores (id, nome, situacao) FROM stdin;
1	COLABORADOR 1	A
3	COLABORADOR 3	A
2	COLABORADOR 22	I
\.


--
-- TOC entry 3655 (class 0 OID 4180700)
-- Dependencies: 289
-- Data for Name: convenios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY convenios (id, nome, situacao, fonte_remuneracao, endereco, id_cidade, cep, bairro, cnpj_convenio, registro_ans, cod_hospital_convenio, exporta_cih, id_tabela_preco_matmed, id_tabela_preco_procedimentos) FROM stdin;
1	TESTES1	A	\N	TESTE	2	89.663-000	CENTRO	11.111.111/1111-11	321	258	2	\N	\N
2	TESTE 2	A	\N		2	  .   -   		  .   .   /    -  			1	1	1
3	CONVENIO TESTE - LUIZ	A	1		1	89.665-000		  .   .   /    -  			1	5	4
\.


--
-- TOC entry 3656 (class 0 OID 4180705)
-- Dependencies: 290
-- Data for Name: cor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cor (id, descricao, codigo_sus_cor) FROM stdin;
\.


--
-- TOC entry 3681 (class 0 OID 4180982)
-- Dependencies: 315
-- Data for Name: encaminhamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY encaminhamentos (id, descricao, situacao) FROM stdin;
\.


--
-- TOC entry 3684 (class 0 OID 4181105)
-- Dependencies: 318
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fornecedores (id, razaosocial, situacao) FROM stdin;
1	FORNECEDOR 1	I
2	FORNECEDOR 222	A
\.


--
-- TOC entry 3678 (class 0 OID 4180910)
-- Dependencies: 312
-- Data for Name: grupos_cid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grupos_cid (id, descricao, situacao) FROM stdin;
1	GRUPO CID TESTE 11	A
2	GRUPO CID TESTE 12	I
3	GRUPO CID TESTE 23	A
\.


--
-- TOC entry 3616 (class 0 OID 4180231)
-- Dependencies: 250
-- Data for Name: hospitais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY hospitais (id, razaosocial) FROM stdin;
\.


--
-- TOC entry 3659 (class 0 OID 4180740)
-- Dependencies: 293
-- Data for Name: leitos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY leitos (id, descricao, id_quarto, status, situacao) FROM stdin;
1	LEITO 2 Q1	1	1	A
2	TESTE 2	1	2	A
\.


--
-- TOC entry 3653 (class 0 OID 4180660)
-- Dependencies: 287
-- Data for Name: nacionalidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nacionalidades (id, descricao, situacao) FROM stdin;
1	BRASIL	A
2	PARAGUAI	I
3	CADASTRO 2	A
4	TESTE 4	A
5	TESTE 5	A
6	TESTE 6	A
7	TESTE 78	A
\.


--
-- TOC entry 3632 (class 0 OID 4180283)
-- Dependencies: 266
-- Data for Name: pacientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pacientes (id, nome, id_cidade, tipo_pessoa, registro_profissional, nascimento, situacao, tipo_registro, sexo, cor, estado_civil, escolaridade, id_religiao, nome_mae, nome_pai, id_naturalidade, id_nacionalidade, conjuge, etnia, tipo_sangue, fone_principal, fone_adicional1, desc_fone1, fone_adicional2, desc_fone2, cns, cpf, rg, data_expedicao_rg, orgao_expedidor_rg, uf_expedicao_rg, endereco, numero, cep, bairro, complemento, local_trabalho, profissao, email) FROM stdin;
10	LUIZ EDUARDO TRINDADE DE SA	1	P		1996-03-19	I	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	DADO LUIZ TRINDADE	1	P		1996-03-19	I	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	MARIA	2	P		2018-03-18	I	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	CRIS BONETTI	2	C	987654	2000-01-01	A	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	LUIZ EDUARDO TRINDADE DE SA	2	C		1996-03-19	I	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	MARIA GABRIELA KLEIN	1	P		1995-12-09	A	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	GUEDES	2	P		2000-01-01	I	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	DEBUGGGGG	1	P		1996-03-19	A	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	RONA	1	P		1996-03-19	A	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	CLUIZ TESTE	1	P		1996-03-19	A	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	DINHO	1	P		1997-04-24	I	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	RAFAEL FALAVIGNA	2	C	987654	1111-11-11	A	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1	LUIZ EDUARDO TRINDADE DE SA	2	P		1996-03-19	I	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	TENTANDO INATIVAR	2	P		1996-03-19	I	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	GIOVANI	1	P		2000-01-01	A	0	2	\N	0	0	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	LAYZA	1	P		2001-01-09	A	0	1	\N	1	0	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	BRUNA ALVES	1	P		2025-01-01	A	0	1	\N	0	2	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	LUIZZZ	1	P		1995-12-09	A	0	2	\N	2	5	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20	TESTEEEEEEEEEEEEE	1	P		1995-12-09	A	0	2	\N	1	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	LUIZ EDUARDO TRINDADE DE SA	1	\N	\N	1996-03-19	A	\N	2	\N	\N	\N	1	LENI SUTIL DA TRINDADE	LUIZ ANTONIO DE SA	1	1		-1	-1	(49) 35554-248 	(49) 99926-1999	CEL	(  )      -    		258963	094.048.619-95	5780177	2000-01-01	-1	-1	OSCAR STREME	625	89.665-000	LOT PARIZOTTO	EM FRENTE IGREJA CATOLICA	TS INFORMATICA	PROGRAMADOR	luiz@tssis.com.br
22	LENI SUTIL DA TRINDADE	1	\N	\N	1976-10-14	A	\N	\N	\N	\N	\N	1	WILHELMINA RANO	MIGUEL SUTIL DA TRINDADE	1	1	LUIZ ANTONIO DE SA	-1	-1	(49) 35556-497 	(  )      -    		(  )      -    		25893	050.638.139-09	7896542	2000-01-01	-1	-1	OSCAR STREME	625	89.665-000	PARIZOTTO	EM FRENTE IGREJA	DO LAR		leni@leni.com.br
23	PACIENTE TESTE - FATURAMENTO	1	\N	\N	1996-03-19	A	\N	\N	\N	\N	\N	1	LENI TRINDADE DE SÁ	LUIZ ANTÔNIO DE SÁ	7	1	MARIA GABRIELA KLEIN	-1	-1	(49) 99926-1999	(49) 35554-248 		(  )      -    		123654	094.048.619-95	5780177	2018-10-10	-1	-1	ACESSO CIDADE ALTA	2400	89.665-000	LOT PARIZOTTO		TS INFORMATICA	EMPRESARIO	luiz@tssis.com.br
\.


--
-- TOC entry 3674 (class 0 OID 4180875)
-- Dependencies: 308
-- Data for Name: procedimentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY procedimentos (id, codigo_amb_chpm, descricao, codigo_tuss, situacao, valor_padrao_operacional, valor_padrao_honorarios_medicos, valor_padrao_total) FROM stdin;
1	852369	PROCEDIMENTO TESTE 1	987654	 	20.00	\N	\N
2	852147	TESTE 2	987654	 	15.00	\N	\N
3	1234	TESTE PROCEDIMENTO 4	5432	A	13.00	\N	\N
4	85	TESTE PROCEDIMENTO COM VALOR ZERADO	96	A	0.00	\N	\N
5	258963	PROCEDIMENTO TESTE 	2563	A	60.00	\N	\N
6	58965	PROCEDIMENTO NOVO	25631	A	20.00	50.00	70.00
7	2541	PROCEDIMENTO 	2365	A	20.00	15.00	35.00
\.


--
-- TOC entry 3654 (class 0 OID 4180670)
-- Dependencies: 288
-- Data for Name: profissoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profissoes (id, descricao) FROM stdin;
\.


--
-- TOC entry 3658 (class 0 OID 4180730)
-- Dependencies: 292
-- Data for Name: quartos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY quartos (id, descricao, id_setor, situacao) FROM stdin;
1	QUARTO 201	1	A
\.


--
-- TOC entry 3637 (class 0 OID 4180298)
-- Dependencies: 271
-- Data for Name: religioes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY religioes (id, descricao, situacao) FROM stdin;
1	CATOLICA	A
2	SETIMO DIA	A
3	TESTE RELIGIAO	A
\.


--
-- TOC entry 3660 (class 0 OID 4180750)
-- Dependencies: 294
-- Data for Name: responsavel_paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY responsavel_paciente (id, nome, data_nascimento, numero_documento, tipo_documento, id_cidade, bairro, endereco, fone, parentesco, local_trabalho, situacao) FROM stdin;
3	LAYZA DANIELA	2001-01-09	2589635	2	3	PARIZ		(  )      -    	\N		A
1	LUIZ EDUARDO TRINDADE DE SA	1996-03-19	09404861995	1	1	LOT PARIZOTTO	OSCAR STREME, 625	(49) 35554-248 	3	TS INFORMATICA	A
2	RONALDO	1997-04-24	094523698745	1	2	LOT PARIZ	ACESSO	(49) 99999-9999	1	TS ACO	A
4	MARIA GABRIELA KLEIN	1995-12-09		\N	1			(49) 99900-0000	\N	TS INFORMATICA	A
\.


--
-- TOC entry 3657 (class 0 OID 4180720)
-- Dependencies: 291
-- Data for Name: setores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY setores (id, descricao, situacao) FROM stdin;
1	1 ANDAR	A
2	2 ANDAR	A
3	ENFERMARIA	I
4	3 SETOR	A
5	TESTE ATIVO INATIVO	A
6	TESTE ATIVO	A
\.


--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 203
-- Name: alergias_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alergias_he_id_seq', 1, false);


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 201
-- Name: alergias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('alergias_id_seq', 2, true);


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 205
-- Name: antecedentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('antecedentes_id_seq', 1, false);


--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 207
-- Name: antecedentes_paciente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('antecedentes_paciente_id_seq', 1, false);


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 209
-- Name: aprazamento_prescricao_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aprazamento_prescricao_he_id_seq', 1, false);


--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 211
-- Name: atividade_fisica_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('atividade_fisica_he_id_seq', 1, false);


--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 213
-- Name: atividades_religiosas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('atividades_religiosas_id_seq', 1, false);


--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 215
-- Name: ausculta_cardiaca_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ausculta_cardiaca_he_id_seq', 1, false);


--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 217
-- Name: ausculta_pulmonar_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ausculta_pulmonar_he_id_seq', 1, false);


--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 219
-- Name: avaliacao_neurologica_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('avaliacao_neurologica_he_id_seq', 1, false);


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 221
-- Name: avaliacao_renal_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('avaliacao_renal_he_id_seq', 1, false);


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 223
-- Name: boca_faringe_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('boca_faringe_he_id_seq', 1, false);


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 225
-- Name: cidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cidades_id_seq', 7, true);


--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 229
-- Name: cirurgias_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cirurgias_he_id_seq', 1, false);


--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 227
-- Name: cirurgias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cirurgias_id_seq', 1, false);


--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 231
-- Name: condicoesgerais_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('condicoesgerais_he_id_seq', 1, false);


--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 233
-- Name: couro_cabeludo_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('couro_cabeludo_he_id_seq', 1, false);


--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 235
-- Name: diagnosticos_enfermagem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('diagnosticos_enfermagem_id_seq', 1, false);


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 237
-- Name: diagnosticos_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('diagnosticos_he_id_seq', 1, false);


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 239
-- Name: extremidades_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('extremidades_he_id_seq', 1, false);


--
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 241
-- Name: genitais_femininos_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genitais_femininos_he_id_seq', 1, false);


--
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 243
-- Name: genitais_masculinos_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genitais_masculinos_he_id_seq', 1, false);


--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 244
-- Name: genitalias_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genitalias_he_id_seq', 1, false);


--
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 245
-- Name: he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('he_id_seq', 2, true);


--
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 247
-- Name: homem_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('homem_he_id_seq', 1, false);


--
-- TOC entry 3767 (class 0 OID 0)
-- Dependencies: 249
-- Name: hospitais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hospitais_id_seq', 1, false);


--
-- TOC entry 3768 (class 0 OID 0)
-- Dependencies: 252
-- Name: itens_prescricao_enfermagem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('itens_prescricao_enfermagem_id_seq', 1, false);


--
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 254
-- Name: mulher_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mulher_he_id_seq', 1, false);


--
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 256
-- Name: nariz_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('nariz_he_id_seq', 1, false);


--
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 258
-- Name: olhos_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('olhos_he_id_seq', 1, false);


--
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 260
-- Name: ouvidos_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ouvidos_he_id_seq', 1, false);


--
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 262
-- Name: pele_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pele_he_id_seq', 1, false);


--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 264
-- Name: pescoco_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pescoco_he_id_seq', 1, false);


--
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 267
-- Name: prescricao_enfermagem_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prescricao_enfermagem_he_id_seq', 1, false);


--
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 269
-- Name: prescricoes_enfermagem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prescricoes_enfermagem_id_seq', 1, true);


--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 272
-- Name: religioes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('religioes_id_seq', 1, false);


--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 273
-- Name: religiosas_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('religiosas_he_id_seq', 1, false);


--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 275
-- Name: risco_queda_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('risco_queda_he_id_seq', 1, false);


--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 277
-- Name: risco_ulcera_decubito_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('risco_ulcera_decubito_he_id_seq', 1, false);


--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 279
-- Name: sinais_vitais_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sinais_vitais_he_id_seq', 1, false);


--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 281
-- Name: tgi_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tgi_he_id_seq', 1, false);


--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 283
-- Name: torax_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('torax_he_id_seq', 1, false);


--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 285
-- Name: vias_aereas_he_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vias_aereas_he_id_seq', 1, false);


SET search_path = atendimentos, pg_catalog;

--
-- TOC entry 3306 (class 2606 OID 4180930)
-- Name: atendimentos ambulatorial_pkey; Type: CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT ambulatorial_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 4180971)
-- Name: itens_atendimento itens_ambulatorial_pkey; Type: CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY itens_atendimento
    ADD CONSTRAINT itens_ambulatorial_pkey PRIMARY KEY (id);


SET search_path = estoque, pg_catalog;

--
-- TOC entry 3292 (class 2606 OID 4180864)
-- Name: compras compras_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id);


--
-- TOC entry 3272 (class 2606 OID 4180764)
-- Name: grupos_matmed grupos_matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY grupos_matmed
    ADD CONSTRAINT grupos_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 4180874)
-- Name: itens_compra itens_compra_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY itens_compra
    ADD CONSTRAINT itens_compra_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 4181129)
-- Name: itens_solicitacao_matmed itens_solicitacao_matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY itens_solicitacao_matmed
    ADD CONSTRAINT itens_solicitacao_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 4180834)
-- Name: kit kit_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY kit
    ADD CONSTRAINT kit_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 4180769)
-- Name: locais_matmed locais_matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY locais_matmed
    ADD CONSTRAINT locais_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3284 (class 2606 OID 4180819)
-- Name: lotes lotes_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY lotes
    ADD CONSTRAINT lotes_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 4180759)
-- Name: matmed matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed
    ADD CONSTRAINT matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3282 (class 2606 OID 4180804)
-- Name: matmed_vias_aplicacao matmed_vias_aplicacao_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed_vias_aplicacao
    ADD CONSTRAINT matmed_vias_aplicacao_pkey PRIMARY KEY (id);


--
-- TOC entry 3320 (class 2606 OID 4181139)
-- Name: motivos_movimentacao_manual motivos_movimentacao_manual_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY motivos_movimentacao_manual
    ADD CONSTRAINT motivos_movimentacao_manual_pkey PRIMARY KEY (id);


--
-- TOC entry 3322 (class 2606 OID 4181144)
-- Name: movimentacao_manual_matmed movimentacao_manual_matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY movimentacao_manual_matmed
    ADD CONSTRAINT movimentacao_manual_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3278 (class 2606 OID 4180794)
-- Name: pontos_estoque pontos_estoque_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY pontos_estoque
    ADD CONSTRAINT pontos_estoque_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 4181069)
-- Name: solicitacao_matmed solicitacao_matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY solicitacao_matmed
    ADD CONSTRAINT solicitacao_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3276 (class 2606 OID 4180774)
-- Name: unidades_matmed unidades_matmed_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY unidades_matmed
    ADD CONSTRAINT unidades_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 4180799)
-- Name: vias_aplicacao vias_aplicacao_pkey; Type: CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY vias_aplicacao
    ADD CONSTRAINT vias_aplicacao_pkey PRIMARY KEY (id);


SET search_path = exames, pg_catalog;

--
-- TOC entry 3330 (class 2606 OID 4181230)
-- Name: consumos_exame consumos_exame_pkey; Type: CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY consumos_exame
    ADD CONSTRAINT consumos_exame_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 4181240)
-- Name: execucao_exame execucao_exame_pkey; Type: CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY execucao_exame
    ADD CONSTRAINT execucao_exame_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 4181200)
-- Name: itens_exames itens_requisicao_exame_pkey; Type: CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY itens_exames
    ADD CONSTRAINT itens_requisicao_exame_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 4181263)
-- Name: laudo_exame laudo_exame_pkey; Type: CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY laudo_exame
    ADD CONSTRAINT laudo_exame_pkey PRIMARY KEY (id);


--
-- TOC entry 3324 (class 2606 OID 4181170)
-- Name: exames requisicao_exame_pkey; Type: CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY exames
    ADD CONSTRAINT requisicao_exame_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 4181276)
-- Name: resultado_padrao_exames resultado_padrao_exames_pkey; Type: CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY resultado_padrao_exames
    ADD CONSTRAINT resultado_padrao_exames_pkey PRIMARY KEY (id);


SET search_path = faturamento, pg_catalog;

--
-- TOC entry 3342 (class 2606 OID 4189608)
-- Name: competencias competencias_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY competencias
    ADD CONSTRAINT competencias_pkey PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 4181215)
-- Name: consumos_padroes consumos_padroes_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY consumos_padroes
    ADD CONSTRAINT consumos_padroes_pkey PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 4181296)
-- Name: atendimentos_fatura contas_fatura_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY atendimentos_fatura
    ADD CONSTRAINT contas_fatura_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 4189613)
-- Name: faturas_competencia faturas_competencia_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY faturas_competencia
    ADD CONSTRAINT faturas_competencia_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 4181291)
-- Name: faturas faturas_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY faturas
    ADD CONSTRAINT faturas_pkey PRIMARY KEY (id);


--
-- TOC entry 3290 (class 2606 OID 4180849)
-- Name: itens_tabela_preco_matmed itens_tabela_preco_matmed_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY itens_tabela_preco_matmed
    ADD CONSTRAINT itens_tabela_preco_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 4180889)
-- Name: itens_tabela_preco_procedimentos itens_tabela_preco_procedimentos_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY itens_tabela_preco_procedimentos
    ADD CONSTRAINT itens_tabela_preco_procedimentos_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 4180844)
-- Name: tabela_preco_matmed tabela_preco_matmed_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY tabela_preco_matmed
    ADD CONSTRAINT tabela_preco_matmed_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 4180884)
-- Name: tabela_preco_procedimentos tabela_preco_procedimentos_pkey; Type: CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY tabela_preco_procedimentos
    ADD CONSTRAINT tabela_preco_procedimentos_pkey PRIMARY KEY (id);


SET search_path = he, pg_catalog;

--
-- TOC entry 3170 (class 2606 OID 4180355)
-- Name: alergias_he alergias_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY alergias_he
    ADD CONSTRAINT alergias_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 4180357)
-- Name: alergias alergias_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY alergias
    ADD CONSTRAINT alergias_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 4180359)
-- Name: antecedentes_paciente antecedentes_paciente_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY antecedentes_paciente
    ADD CONSTRAINT antecedentes_paciente_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 4180361)
-- Name: antecedentes antecedentes_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY antecedentes
    ADD CONSTRAINT antecedentes_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 4180363)
-- Name: aprazamento_prescricao_he aprazamento_prescricao_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY aprazamento_prescricao_he
    ADD CONSTRAINT aprazamento_prescricao_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 4180365)
-- Name: atividadefisica_he atividadefisica_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY atividadefisica_he
    ADD CONSTRAINT atividadefisica_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 4180367)
-- Name: atividades_religiosas atividades_religiosas_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY atividades_religiosas
    ADD CONSTRAINT atividades_religiosas_pkey PRIMARY KEY (id);


--
-- TOC entry 3182 (class 2606 OID 4180369)
-- Name: ausculta_cardiaca_he ausculta_cardiaca_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY ausculta_cardiaca_he
    ADD CONSTRAINT ausculta_cardiaca_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3184 (class 2606 OID 4180371)
-- Name: ausculta_pulmonar_he ausculta_pulmonar_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY ausculta_pulmonar_he
    ADD CONSTRAINT ausculta_pulmonar_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 4180373)
-- Name: avaliacao_neurologica_he avaliacao_neurologica_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY avaliacao_neurologica_he
    ADD CONSTRAINT avaliacao_neurologica_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 4180375)
-- Name: avaliacao_renal_he avaliacao_renal_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY avaliacao_renal_he
    ADD CONSTRAINT avaliacao_renal_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 4180377)
-- Name: boca_faringe_he boca_faringe_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY boca_faringe_he
    ADD CONSTRAINT boca_faringe_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 4180381)
-- Name: cirurgias_he cirurgias_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY cirurgias_he
    ADD CONSTRAINT cirurgias_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 4180385)
-- Name: condicoesgerais_he condicoesgerais_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY condicoesgerais_he
    ADD CONSTRAINT condicoesgerais_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 4180387)
-- Name: couro_cabeludo_he couro_cabeludo_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY couro_cabeludo_he
    ADD CONSTRAINT couro_cabeludo_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 4180389)
-- Name: diagnosticos_enfermagem diagnosticos_enfermagem_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY diagnosticos_enfermagem
    ADD CONSTRAINT diagnosticos_enfermagem_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 4180391)
-- Name: diagnosticos_he diagnosticos_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY diagnosticos_he
    ADD CONSTRAINT diagnosticos_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 4180393)
-- Name: extremidades_he extremidades_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY extremidades_he
    ADD CONSTRAINT extremidades_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 4180395)
-- Name: genitais_he genitais_femininos_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY genitais_he
    ADD CONSTRAINT genitais_femininos_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 4180397)
-- Name: he he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY he
    ADD CONSTRAINT he_pkey PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 4180399)
-- Name: homem_he homem_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY homem_he
    ADD CONSTRAINT homem_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 4180403)
-- Name: infs_antecedentes infs_antecedentes_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY infs_antecedentes
    ADD CONSTRAINT infs_antecedentes_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 4180405)
-- Name: itens_prescricao_enfermagem itens_prescricao_enfermagem_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY itens_prescricao_enfermagem
    ADD CONSTRAINT itens_prescricao_enfermagem_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 4180407)
-- Name: mulher_he mulher_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY mulher_he
    ADD CONSTRAINT mulher_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 4180409)
-- Name: nariz_he nariz_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY nariz_he
    ADD CONSTRAINT nariz_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 4180411)
-- Name: olhos_he olhos_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY olhos_he
    ADD CONSTRAINT olhos_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 4180413)
-- Name: ouvidos_he ouvidos_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY ouvidos_he
    ADD CONSTRAINT ouvidos_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 4180415)
-- Name: pele_he pele_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY pele_he
    ADD CONSTRAINT pele_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 4180417)
-- Name: pescoco_he pescoco_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY pescoco_he
    ADD CONSTRAINT pescoco_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 4180421)
-- Name: prescricao_enfermagem_he prescricao_enfermagem_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY prescricao_enfermagem_he
    ADD CONSTRAINT prescricao_enfermagem_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 4180423)
-- Name: prescricoes_enfermagem prescricoes_enfermagem_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY prescricoes_enfermagem
    ADD CONSTRAINT prescricoes_enfermagem_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 4180427)
-- Name: religiosas_he religiosas_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY religiosas_he
    ADD CONSTRAINT religiosas_he_pkey PRIMARY KEY (id, id_he);


--
-- TOC entry 3242 (class 2606 OID 4180429)
-- Name: risco_queda_he risco_queda_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY risco_queda_he
    ADD CONSTRAINT risco_queda_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 4180431)
-- Name: risco_ulcera_decubito_he risco_ulcera_decubito_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY risco_ulcera_decubito_he
    ADD CONSTRAINT risco_ulcera_decubito_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 4180433)
-- Name: sinais_vitais_he sinais_vitais_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY sinais_vitais_he
    ADD CONSTRAINT sinais_vitais_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 4180435)
-- Name: tgi_he tgi_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY tgi_he
    ADD CONSTRAINT tgi_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 4180437)
-- Name: torax_he torax_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY torax_he
    ADD CONSTRAINT torax_he_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 4180439)
-- Name: vias_aereas_he vias_aereas_he_pkey; Type: CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY vias_aereas_he
    ADD CONSTRAINT vias_aereas_he_pkey PRIMARY KEY (id);


SET search_path = public, pg_catalog;

--
-- TOC entry 3302 (class 2606 OID 4180921)
-- Name: cid cid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cid
    ADD CONSTRAINT cid_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 4180379)
-- Name: cidades cidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cidades
    ADD CONSTRAINT cidades_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 4180383)
-- Name: cirurgias cirurgias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cirurgias
    ADD CONSTRAINT cirurgias_pkey PRIMARY KEY (id);


--
-- TOC entry 3314 (class 2606 OID 4181074)
-- Name: colaboradores colaboradores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY colaboradores
    ADD CONSTRAINT colaboradores_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 4180704)
-- Name: convenios convenios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY convenios
    ADD CONSTRAINT convenios_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 4180709)
-- Name: cor cor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cor
    ADD CONSTRAINT cor_pkey PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 4180986)
-- Name: encaminhamentos encaminhamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY encaminhamentos
    ADD CONSTRAINT encaminhamentos_pkey PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 4181109)
-- Name: fornecedores fornecedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 4180914)
-- Name: grupos_cid grupos_cid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grupos_cid
    ADD CONSTRAINT grupos_cid_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 4180401)
-- Name: hospitais hospitais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hospitais
    ADD CONSTRAINT hospitais_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 4180744)
-- Name: leitos leitos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY leitos
    ADD CONSTRAINT leitos_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 4180664)
-- Name: nacionalidades nacionalidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacionalidades
    ADD CONSTRAINT nacionalidades_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 4180419)
-- Name: pacientes pessoas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pacientes
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 4180879)
-- Name: procedimentos procedimentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY procedimentos
    ADD CONSTRAINT procedimentos_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 4180674)
-- Name: profissoes profissoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profissoes
    ADD CONSTRAINT profissoes_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 4180734)
-- Name: quartos quartos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY quartos
    ADD CONSTRAINT quartos_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 4180425)
-- Name: religioes religioes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY religioes
    ADD CONSTRAINT religioes_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 4180754)
-- Name: responsavel_paciente responsavel_paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY responsavel_paciente
    ADD CONSTRAINT responsavel_paciente_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 4180724)
-- Name: setores setores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY setores
    ADD CONSTRAINT setores_pkey PRIMARY KEY (id);


SET search_path = atendimentos, pg_catalog;

--
-- TOC entry 3414 (class 2606 OID 4180957)
-- Name: atendimentos convenio; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT convenio FOREIGN KEY (id_convenio) REFERENCES public.convenios(id) ON DELETE RESTRICT;


--
-- TOC entry 3410 (class 2606 OID 4180992)
-- Name: atendimentos encaminhamento; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT encaminhamento FOREIGN KEY (id_encaminhamento) REFERENCES public.encaminhamentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3417 (class 2606 OID 4181412)
-- Name: itens_atendimento item_tabela_matmed; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY itens_atendimento
    ADD CONSTRAINT item_tabela_matmed FOREIGN KEY (id_matmed) REFERENCES estoque.matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3418 (class 2606 OID 4181417)
-- Name: itens_atendimento item_tabela_procedimento; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY itens_atendimento
    ADD CONSTRAINT item_tabela_procedimento FOREIGN KEY (id_procedimento) REFERENCES public.procedimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3416 (class 2606 OID 4181329)
-- Name: itens_atendimento itens_atendimento_fk; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY itens_atendimento
    ADD CONSTRAINT itens_atendimento_fk FOREIGN KEY (id_atendimento) REFERENCES atendimentos(id);


--
-- TOC entry 3407 (class 2606 OID 4181373)
-- Name: atendimentos leito; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT leito FOREIGN KEY (id_leito) REFERENCES public.leitos(id) ON DELETE RESTRICT;


--
-- TOC entry 3411 (class 2606 OID 4181100)
-- Name: atendimentos medico_responsavel; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT medico_responsavel FOREIGN KEY (id_medico_responsavel) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3409 (class 2606 OID 4181383)
-- Name: atendimentos medico_solicitante; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT medico_solicitante FOREIGN KEY (id_medico_solicitante) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3406 (class 2606 OID 4181339)
-- Name: atendimentos paciente; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT paciente FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id) ON DELETE RESTRICT;


--
-- TOC entry 3415 (class 2606 OID 4180942)
-- Name: atendimentos procedimento; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT procedimento FOREIGN KEY (id_procedimento) REFERENCES public.procedimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 3415
-- Name: CONSTRAINT procedimento ON atendimentos; Type: COMMENT; Schema: atendimentos; Owner: postgres
--

COMMENT ON CONSTRAINT procedimento ON atendimentos IS 'mudar o codigo do procedimento para o codigo amb ou bhpm';


--
-- TOC entry 3408 (class 2606 OID 4181378)
-- Name: atendimentos quarto; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT quarto FOREIGN KEY (id_quarto) REFERENCES public.quartos(id) ON DELETE RESTRICT;


--
-- TOC entry 3413 (class 2606 OID 4180962)
-- Name: atendimentos responsavel; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT responsavel FOREIGN KEY (id_responsavel) REFERENCES public.responsavel_paciente(id) ON DELETE RESTRICT;


--
-- TOC entry 3412 (class 2606 OID 4180997)
-- Name: atendimentos setor; Type: FK CONSTRAINT; Schema: atendimentos; Owner: postgres
--

ALTER TABLE ONLY atendimentos
    ADD CONSTRAINT setor FOREIGN KEY (id_setor) REFERENCES public.setores(id) ON DELETE RESTRICT;


SET search_path = estoque, pg_catalog;

--
-- TOC entry 3419 (class 2606 OID 4181398)
-- Name: solicitacao_matmed atendimento; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY solicitacao_matmed
    ADD CONSTRAINT atendimento FOREIGN KEY (id_atendimento) REFERENCES atendimentos.atendimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3427 (class 2606 OID 4181145)
-- Name: movimentacao_manual_matmed colaborador; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY movimentacao_manual_matmed
    ADD CONSTRAINT colaborador FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3400 (class 2606 OID 4180820)
-- Name: lotes fornecedor; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY lotes
    ADD CONSTRAINT fornecedor FOREIGN KEY (id_fornecedor) REFERENCES public.pacientes(id) ON DELETE RESTRICT;


--
-- TOC entry 3402 (class 2606 OID 4181110)
-- Name: compras fornecedor; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY compras
    ADD CONSTRAINT fornecedor FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedores(id) ON DELETE RESTRICT;


--
-- TOC entry 3396 (class 2606 OID 4180775)
-- Name: matmed grupo; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed
    ADD CONSTRAINT grupo FOREIGN KEY (id_grupo) REFERENCES grupos_matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3424 (class 2606 OID 4181130)
-- Name: itens_solicitacao_matmed itens_solicitacao_matmed_fk; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY itens_solicitacao_matmed
    ADD CONSTRAINT itens_solicitacao_matmed_fk FOREIGN KEY (id_matmed) REFERENCES matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3395 (class 2606 OID 4180780)
-- Name: matmed local; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed
    ADD CONSTRAINT local FOREIGN KEY (id_local) REFERENCES locais_matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3399 (class 2606 OID 4180825)
-- Name: lotes matmed; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY lotes
    ADD CONSTRAINT matmed FOREIGN KEY (id_matmed) REFERENCES matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3401 (class 2606 OID 4180835)
-- Name: kit matmed; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY kit
    ADD CONSTRAINT matmed FOREIGN KEY (id_matmed) REFERENCES matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3426 (class 2606 OID 4181150)
-- Name: movimentacao_manual_matmed matmed; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY movimentacao_manual_matmed
    ADD CONSTRAINT matmed FOREIGN KEY (id_matmed) REFERENCES matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3397 (class 2606 OID 4180810)
-- Name: matmed_vias_aplicacao matmed_vias_aplicacao_fk; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed_vias_aplicacao
    ADD CONSTRAINT matmed_vias_aplicacao_fk FOREIGN KEY (id_matmed) REFERENCES matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3425 (class 2606 OID 4181155)
-- Name: movimentacao_manual_matmed motivo; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY movimentacao_manual_matmed
    ADD CONSTRAINT motivo FOREIGN KEY (id_motivo) REFERENCES motivos_movimentacao_manual(id) ON DELETE RESTRICT;


--
-- TOC entry 3422 (class 2606 OID 4181080)
-- Name: solicitacao_matmed responsavel; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY solicitacao_matmed
    ADD CONSTRAINT responsavel FOREIGN KEY (id_responsavel) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3420 (class 2606 OID 4181090)
-- Name: solicitacao_matmed setor_responsavel; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY solicitacao_matmed
    ADD CONSTRAINT setor_responsavel FOREIGN KEY (id_setor_destino) REFERENCES public.setores(id) ON DELETE RESTRICT;


--
-- TOC entry 3421 (class 2606 OID 4181085)
-- Name: solicitacao_matmed setor_solicitante; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY solicitacao_matmed
    ADD CONSTRAINT setor_solicitante FOREIGN KEY (id_setor_solicitante) REFERENCES public.setores(id) ON DELETE RESTRICT;


--
-- TOC entry 3423 (class 2606 OID 4181075)
-- Name: solicitacao_matmed solicitante; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY solicitacao_matmed
    ADD CONSTRAINT solicitante FOREIGN KEY (id_solicitante) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3394 (class 2606 OID 4180785)
-- Name: matmed unidade_matmed; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed
    ADD CONSTRAINT unidade_matmed FOREIGN KEY (id_unidade) REFERENCES unidades_matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3398 (class 2606 OID 4180805)
-- Name: matmed_vias_aplicacao via_aplicacao; Type: FK CONSTRAINT; Schema: estoque; Owner: postgres
--

ALTER TABLE ONLY matmed_vias_aplicacao
    ADD CONSTRAINT via_aplicacao FOREIGN KEY (id_via_aplicacao) REFERENCES vias_aplicacao(id) ON DELETE RESTRICT;


SET search_path = exames, pg_catalog;

--
-- TOC entry 3428 (class 2606 OID 4181171)
-- Name: exames atendimento; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY exames
    ADD CONSTRAINT atendimento FOREIGN KEY (id_atendimento) REFERENCES atendimentos.atendimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3430 (class 2606 OID 4181186)
-- Name: exames convenio; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY exames
    ADD CONSTRAINT convenio FOREIGN KEY (id_convenio) REFERENCES public.convenios(id) ON DELETE RESTRICT;


--
-- TOC entry 3436 (class 2606 OID 4181251)
-- Name: consumos_exame execucao; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY consumos_exame
    ADD CONSTRAINT execucao FOREIGN KEY (id_exame) REFERENCES exames(id) ON DELETE RESTRICT;


--
-- TOC entry 3437 (class 2606 OID 4181231)
-- Name: consumos_exame matmed; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY consumos_exame
    ADD CONSTRAINT matmed FOREIGN KEY (id_matmed) REFERENCES estoque.matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3429 (class 2606 OID 4181191)
-- Name: exames medico_solicitante; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY exames
    ADD CONSTRAINT medico_solicitante FOREIGN KEY (id_medico_solicitante) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3431 (class 2606 OID 4181181)
-- Name: exames paciente; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY exames
    ADD CONSTRAINT paciente FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id) ON DELETE RESTRICT;


--
-- TOC entry 3433 (class 2606 OID 4181201)
-- Name: itens_exames procedimento; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY itens_exames
    ADD CONSTRAINT procedimento FOREIGN KEY (id_procedimento) REFERENCES public.procedimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3439 (class 2606 OID 4181264)
-- Name: laudo_exame radiologista; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY laudo_exame
    ADD CONSTRAINT radiologista FOREIGN KEY (id_radiologista) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


--
-- TOC entry 3432 (class 2606 OID 4181206)
-- Name: itens_exames requisicao_exame; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY itens_exames
    ADD CONSTRAINT requisicao_exame FOREIGN KEY (id_requisicao_exame) REFERENCES exames(id) ON DELETE RESTRICT;


--
-- TOC entry 3438 (class 2606 OID 4181241)
-- Name: execucao_exame tecnico; Type: FK CONSTRAINT; Schema: exames; Owner: postgres
--

ALTER TABLE ONLY execucao_exame
    ADD CONSTRAINT tecnico FOREIGN KEY (id_tecnico) REFERENCES public.colaboradores(id) ON DELETE RESTRICT;


SET search_path = faturamento, pg_catalog;

--
-- TOC entry 3442 (class 2606 OID 4189641)
-- Name: atendimentos_fatura contas_fatura_fk; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY atendimentos_fatura
    ADD CONSTRAINT contas_fatura_fk FOREIGN KEY (id_atendimento) REFERENCES atendimentos.atendimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3443 (class 2606 OID 4181297)
-- Name: atendimentos_fatura fatura; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY atendimentos_fatura
    ADD CONSTRAINT fatura FOREIGN KEY (id_fatura) REFERENCES faturas(id) ON DELETE RESTRICT;


--
-- TOC entry 3445 (class 2606 OID 4189614)
-- Name: faturas_competencia faturas_competencia_fk; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY faturas_competencia
    ADD CONSTRAINT faturas_competencia_fk FOREIGN KEY (id_fatura) REFERENCES faturas(id) ON DELETE RESTRICT;


--
-- TOC entry 3444 (class 2606 OID 4189619)
-- Name: faturas_competencia faturas_competencia_fk1; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY faturas_competencia
    ADD CONSTRAINT faturas_competencia_fk1 FOREIGN KEY (id_competencia) REFERENCES competencias(id) ON DELETE RESTRICT;


--
-- TOC entry 3441 (class 2606 OID 4189631)
-- Name: faturas faturas_fk; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY faturas
    ADD CONSTRAINT faturas_fk FOREIGN KEY (id_convenio) REFERENCES public.convenios(id) ON DELETE RESTRICT;


--
-- TOC entry 3440 (class 2606 OID 4189636)
-- Name: faturas faturas_fk1; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY faturas
    ADD CONSTRAINT faturas_fk1 FOREIGN KEY (id_competencia) REFERENCES competencias(id) ON DELETE RESTRICT;


--
-- TOC entry 3434 (class 2606 OID 4181221)
-- Name: consumos_padroes matmed; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY consumos_padroes
    ADD CONSTRAINT matmed FOREIGN KEY (id_matmed) REFERENCES estoque.matmed(id) ON DELETE RESTRICT;


--
-- TOC entry 3403 (class 2606 OID 4180895)
-- Name: itens_tabela_preco_procedimentos procedimento; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY itens_tabela_preco_procedimentos
    ADD CONSTRAINT procedimento FOREIGN KEY (id_procedimento) REFERENCES public.procedimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3435 (class 2606 OID 4181216)
-- Name: consumos_padroes procedimento; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY consumos_padroes
    ADD CONSTRAINT procedimento FOREIGN KEY (id_procedimento) REFERENCES public.procedimentos(id) ON DELETE RESTRICT;


--
-- TOC entry 3404 (class 2606 OID 4180890)
-- Name: itens_tabela_preco_procedimentos tabela_procedimento; Type: FK CONSTRAINT; Schema: faturamento; Owner: postgres
--

ALTER TABLE ONLY itens_tabela_preco_procedimentos
    ADD CONSTRAINT tabela_procedimento FOREIGN KEY (id_tabela_procedimentos) REFERENCES tabela_preco_procedimentos(id) ON DELETE RESTRICT;


SET search_path = he, pg_catalog;

--
-- TOC entry 3346 (class 2606 OID 4180440)
-- Name: alergias_he alergia; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY alergias_he
    ADD CONSTRAINT alergia FOREIGN KEY (id_alergia) REFERENCES alergias(id);


--
-- TOC entry 3348 (class 2606 OID 4180445)
-- Name: antecedentes_paciente antecedente; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY antecedentes_paciente
    ADD CONSTRAINT antecedente FOREIGN KEY (id_antecedente) REFERENCES antecedentes(id);


--
-- TOC entry 3382 (class 2606 OID 4180450)
-- Name: religiosas_he atividade_religiosa; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY religiosas_he
    ADD CONSTRAINT atividade_religiosa FOREIGN KEY (id_atividade_religiosa) REFERENCES atividades_religiosas(id);


--
-- TOC entry 3357 (class 2606 OID 4180460)
-- Name: cirurgias_he cirurgia; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY cirurgias_he
    ADD CONSTRAINT cirurgia FOREIGN KEY (id_cirurgia) REFERENCES public.cirurgias(id);


--
-- TOC entry 3361 (class 2606 OID 4180465)
-- Name: diagnosticos_he diagnostico; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY diagnosticos_he
    ADD CONSTRAINT diagnostico FOREIGN KEY (id_diagnostico) REFERENCES diagnosticos_enfermagem(id);


--
-- TOC entry 3364 (class 2606 OID 4180470)
-- Name: he enfermeiro; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY he
    ADD CONSTRAINT enfermeiro FOREIGN KEY (id_enfermeiro) REFERENCES public.pacientes(id);


--
-- TOC entry 3345 (class 2606 OID 4180475)
-- Name: alergias_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY alergias_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3347 (class 2606 OID 4180480)
-- Name: antecedentes_paciente he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY antecedentes_paciente
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3350 (class 2606 OID 4180485)
-- Name: atividadefisica_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY atividadefisica_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3351 (class 2606 OID 4180490)
-- Name: ausculta_cardiaca_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY ausculta_cardiaca_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3352 (class 2606 OID 4180495)
-- Name: ausculta_pulmonar_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY ausculta_pulmonar_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3353 (class 2606 OID 4180500)
-- Name: avaliacao_neurologica_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY avaliacao_neurologica_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3354 (class 2606 OID 4180505)
-- Name: avaliacao_renal_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY avaliacao_renal_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3355 (class 2606 OID 4180510)
-- Name: boca_faringe_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY boca_faringe_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3356 (class 2606 OID 4180515)
-- Name: cirurgias_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY cirurgias_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3358 (class 2606 OID 4180520)
-- Name: condicoesgerais_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY condicoesgerais_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3359 (class 2606 OID 4180525)
-- Name: couro_cabeludo_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY couro_cabeludo_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3360 (class 2606 OID 4180530)
-- Name: diagnosticos_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY diagnosticos_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3362 (class 2606 OID 4180535)
-- Name: extremidades_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY extremidades_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3363 (class 2606 OID 4180540)
-- Name: genitais_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY genitais_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3366 (class 2606 OID 4180545)
-- Name: homem_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY homem_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3369 (class 2606 OID 4180550)
-- Name: mulher_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY mulher_he
    ADD CONSTRAINT he FOREIGN KEY (id) REFERENCES he(id);


--
-- TOC entry 3370 (class 2606 OID 4180555)
-- Name: nariz_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY nariz_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3371 (class 2606 OID 4180560)
-- Name: olhos_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY olhos_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3372 (class 2606 OID 4180565)
-- Name: ouvidos_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY ouvidos_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3374 (class 2606 OID 4180570)
-- Name: pescoco_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY pescoco_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3379 (class 2606 OID 4180575)
-- Name: prescricao_enfermagem_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY prescricao_enfermagem_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3381 (class 2606 OID 4180580)
-- Name: religiosas_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY religiosas_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3383 (class 2606 OID 4180585)
-- Name: risco_queda_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY risco_queda_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3384 (class 2606 OID 4180590)
-- Name: risco_ulcera_decubito_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY risco_ulcera_decubito_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3385 (class 2606 OID 4180595)
-- Name: sinais_vitais_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY sinais_vitais_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3386 (class 2606 OID 4180600)
-- Name: tgi_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY tgi_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3387 (class 2606 OID 4180605)
-- Name: torax_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY torax_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3388 (class 2606 OID 4180610)
-- Name: vias_aereas_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY vias_aereas_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3373 (class 2606 OID 4180615)
-- Name: pele_he he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY pele_he
    ADD CONSTRAINT he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3367 (class 2606 OID 4180620)
-- Name: infs_antecedentes infs_antecedentes_he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY infs_antecedentes
    ADD CONSTRAINT infs_antecedentes_he FOREIGN KEY (id_he) REFERENCES he(id);


--
-- TOC entry 3365 (class 2606 OID 4180625)
-- Name: he paciente; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY he
    ADD CONSTRAINT paciente FOREIGN KEY (id_paciente) REFERENCES public.pacientes(id);


--
-- TOC entry 3380 (class 2606 OID 4180630)
-- Name: prescricao_enfermagem_he prescricao; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY prescricao_enfermagem_he
    ADD CONSTRAINT prescricao FOREIGN KEY (id_prescricao_enfermagem) REFERENCES prescricoes_enfermagem(id);


--
-- TOC entry 3368 (class 2606 OID 4180635)
-- Name: itens_prescricao_enfermagem prescricao_enfermagem; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY itens_prescricao_enfermagem
    ADD CONSTRAINT prescricao_enfermagem FOREIGN KEY (id_prescricao_enfermagem) REFERENCES prescricoes_enfermagem(id);


--
-- TOC entry 3349 (class 2606 OID 4180640)
-- Name: aprazamento_prescricao_he prescricao_he; Type: FK CONSTRAINT; Schema: he; Owner: postgres
--

ALTER TABLE ONLY aprazamento_prescricao_he
    ADD CONSTRAINT prescricao_he FOREIGN KEY (id_prescricao_he) REFERENCES prescricao_enfermagem_he(id);


SET search_path = public, pg_catalog;

--
-- TOC entry 3377 (class 2606 OID 4180690)
-- Name: pacientes cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pacientes
    ADD CONSTRAINT cidade FOREIGN KEY (id_cidade) REFERENCES cidades(id) ON DELETE RESTRICT;


--
-- TOC entry 3391 (class 2606 OID 4180855)
-- Name: convenios cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY convenios
    ADD CONSTRAINT cidade FOREIGN KEY (id_cidade) REFERENCES cidades(id) ON DELETE RESTRICT;


--
-- TOC entry 3405 (class 2606 OID 4180915)
-- Name: cid grupo_cid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cid
    ADD CONSTRAINT grupo_cid FOREIGN KEY (id_grupo_cid) REFERENCES grupos_cid(id) ON DELETE RESTRICT;


--
-- TOC entry 3375 (class 2606 OID 4180675)
-- Name: pacientes nacionalidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pacientes
    ADD CONSTRAINT nacionalidade FOREIGN KEY (id_nacionalidade) REFERENCES nacionalidades(id) ON DELETE RESTRICT;


--
-- TOC entry 3378 (class 2606 OID 4180695)
-- Name: pacientes naturalidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pacientes
    ADD CONSTRAINT naturalidade FOREIGN KEY (id_naturalidade) REFERENCES cidades(id) ON DELETE RESTRICT;


--
-- TOC entry 3393 (class 2606 OID 4180745)
-- Name: leitos quarto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY leitos
    ADD CONSTRAINT quarto FOREIGN KEY (id_quarto) REFERENCES quartos(id) ON DELETE RESTRICT;


--
-- TOC entry 3376 (class 2606 OID 4180685)
-- Name: pacientes religiao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pacientes
    ADD CONSTRAINT religiao FOREIGN KEY (id_religiao) REFERENCES religioes(id) ON DELETE RESTRICT;


--
-- TOC entry 3392 (class 2606 OID 4180735)
-- Name: quartos setor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY quartos
    ADD CONSTRAINT setor FOREIGN KEY (id_setor) REFERENCES setores(id) ON DELETE RESTRICT;


--
-- TOC entry 3389 (class 2606 OID 4181311)
-- Name: convenios tabela_preco_matmed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY convenios
    ADD CONSTRAINT tabela_preco_matmed FOREIGN KEY (id_tabela_preco_matmed) REFERENCES faturamento.tabela_preco_matmed(id) ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 3390 (class 2606 OID 4181316)
-- Name: convenios tabela_preco_procedimentos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY convenios
    ADD CONSTRAINT tabela_preco_procedimentos FOREIGN KEY (id_tabela_preco_procedimentos) REFERENCES faturamento.tabela_preco_procedimentos(id) ON DELETE RESTRICT NOT VALID;


-- Completed on 2018-10-18 10:15:50

--
-- PostgreSQL database dump complete
--


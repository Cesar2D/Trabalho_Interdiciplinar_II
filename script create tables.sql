-- CREATE CLIENTES
CREATE TABLE IF NOT EXISTS public.clientes
(
    cpf character varying(14) COLLATE pg_catalog."default" NOT NULL,
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    ddn character varying(20) COLLATE pg_catalog."default" NOT NULL,
    idade integer,
    senha character varying(100) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (cpf),
    CONSTRAINT clientes_email_key UNIQUE (email)
)


-- CREATE ESTABELECIMENTO

CREATE TABLE IF NOT EXISTS public.estabelecimento
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    preco_medio character varying(20) COLLATE pg_catalog."default",
    tipos_de_comida character varying(50) COLLATE pg_catalog."default",
    telefone character varying(15) COLLATE pg_catalog."default",
    cep character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT estabelecimento_pkey PRIMARY KEY (id)
)


-- CREATE PAGAMENTO


CREATE TABLE IF NOT EXISTS public.pagamento
(
    idpagamento integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    valor double precision NOT NULL,
    notafical integer NOT NULL,
    CONSTRAINT pagamento_pkey PRIMARY KEY (idpagamento)
)


-- CREATE RESERVA


CREATE TABLE IF NOT EXISTS public.reserva
(
    notafisc integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    pessoas integer NOT NULL,
    horario time without time zone NOT NULL,
    mesas integer NOT NULL,
    cpfcliente character varying(50) COLLATE pg_catalog."default",
    estabelecimento_id integer,
    CONSTRAINT reserva_pkey PRIMARY KEY (notafisc)
)
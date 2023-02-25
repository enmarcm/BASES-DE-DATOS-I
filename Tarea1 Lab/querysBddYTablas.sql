-- CREAION DE BASE DE DATOS

-- Database: Restaurant
-- DROP DATABASE IF EXISTS "Restaurant";

CREATE DATABASE "Restaurant"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Venezuela.1252'
    LC_CTYPE = 'Spanish_Venezuela.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;







-- TABLA CLIENTES

-- Table: public.clientes
-- DROP TABLE IF EXISTS public.clientes;

CREATE TABLE IF NOT EXISTS public.clientes
(
    id_clientes integer NOT NULL DEFAULT 'nextval('"CLIENTES_ID_CLIENTES_seq"'::regclass)',
    nom_cliente text COLLATE pg_catalog."default" NOT NULL,
    apellido_cliente text COLLATE pg_catalog."default" NOT NULL,
    direccion_cliente text COLLATE pg_catalog."default",
    telefono_cliente numeric(20,0),
    CONSTRAINT "CLIENTES_pkey" PRIMARY KEY (id_clientes)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clientes
    OWNER to postgres;












-- TABLA DETALLES_FACTURA
-- Table: public.detalles_factura

-- DROP TABLE IF EXISTS public.detalles_factura;

CREATE TABLE IF NOT EXISTS public.detalles_factura
(
    id_detalle_factura integer NOT NULL DEFAULT 'nextval('"DETALLES_FACTURA_ID_DETALLE_FACTURA_seq"'::regclass)',
    id_factura integer NOT NULL DEFAULT 'nextval('"DETALLES_FACTURA_ID_FACTURA_seq"'::regclass)',
    id_empleado integer NOT NULL DEFAULT 'nextval('"DETALLES_FACTURA_ID_EMPLEADO_seq"'::regclass)',
    id_plato integer NOT NULL DEFAULT 'nextval('"DETALLES_FACTURA_ID_PLATO_seq"'::regclass)',
    id_mesa integer NOT NULL DEFAULT 'nextval('"DETALLES_FACTURA_ID_MESA_seq"'::regclass)',
    CONSTRAINT "DETALLES_FACTURA_pkey" PRIMARY KEY (id_detalle_factura),
    CONSTRAINT "ID_EMPLEADO" FOREIGN KEY (id_empleado)
        REFERENCES public.empleados (id_empleado) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ID_FACTURA" FOREIGN KEY (id_factura)
        REFERENCES public.factura (id_factura) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ID_MESA" FOREIGN KEY (id_mesa)
        REFERENCES public.mesa (id_mesa) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ID_PLATO" FOREIGN KEY (id_plato)
        REFERENCES public.platos (id_plato) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.detalles_factura
    OWNER to postgres;
-- Index: fki_ID_EMPLEADO

-- DROP INDEX IF EXISTS public."fki_ID_EMPLEADO";

CREATE INDEX IF NOT EXISTS "fki_ID_EMPLEADO"
    ON public.detalles_factura USING btree
    (id_empleado ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_ID_MESA

-- DROP INDEX IF EXISTS public."fki_ID_MESA";

CREATE INDEX IF NOT EXISTS "fki_ID_MESA"
    ON public.detalles_factura USING btree
    (id_mesa ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_ID_PLATO

-- DROP INDEX IF EXISTS public."fki_ID_PLATO";

CREATE INDEX IF NOT EXISTS "fki_ID_PLATO"
    ON public.detalles_factura USING btree
    (id_plato ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_i

-- DROP INDEX IF EXISTS public.fki_i;

CREATE INDEX IF NOT EXISTS fki_i
    ON public.detalles_factura USING btree
    (id_factura ASC NULLS LAST)
    TABLESPACE pg_default;













-- TABLA EMPLEADOS
-- Table: public.empleados

-- DROP TABLE IF EXISTS public.empleados;

CREATE TABLE IF NOT EXISTS public.empleados
(
    id_empleado integer NOT NULL DEFAULT 'nextval('"EMPLEADOS_ID_EMPLEADO_seq"'::regclass)',
    nom_empleado text COLLATE pg_catalog."default" NOT NULL,
    apellido_empleado text COLLATE pg_catalog."default" NOT NULL,
    telefono numeric(20,0) NOT NULL,
    direccion text COLLATE pg_catalog."default" NOT NULL,
    cargo text COLLATE pg_catalog."default" NOT NULL,
    id_establecimiento integer NOT NULL DEFAULT 'nextval('"EMPLEADOS_ID_ESTABLECIMIENTO_seq"'::regclass)',
    CONSTRAINT "EMPLEADOS_pkey" PRIMARY KEY (id_empleado),
    CONSTRAINT id_establecimiento FOREIGN KEY (id_establecimiento)
        REFERENCES public.establecimientos (id_establecimiento) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.empleados
    OWNER to postgres;
-- Index: fki_I

-- DROP INDEX IF EXISTS public."fki_I";

CREATE INDEX IF NOT EXISTS "fki_I"
    ON public.empleados USING btree
    (id_establecimiento ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_ID_ESTABLECIMIENTO

-- DROP INDEX IF EXISTS public."fki_ID_ESTABLECIMIENTO";

CREATE INDEX IF NOT EXISTS "fki_ID_ESTABLECIMIENTO"
    ON public.empleados USING btree
    (id_establecimiento ASC NULLS LAST)
    TABLESPACE pg_default;


















-- TABLA ESTABLECIMIENTOS
-- Table: public.establecimientos

-- DROP TABLE IF EXISTS public.establecimientos;

CREATE TABLE IF NOT EXISTS public.establecimientos
(
    id_establecimiento integer NOT NULL DEFAULT 'nextval('"ESTABLECIMIENTOS_ID_ESTABLECIMIENTOS_seq"'::regclass)',
    nom_establecimiento text COLLATE pg_catalog."default" NOT NULL,
    telefono numeric(50,0) NOT NULL,
    direccion text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "ESTABLECIMIENTOS_pkey" PRIMARY KEY (id_establecimiento)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.establecimientos
    OWNER to postgres;

















-- TABLA FACTURA
-- Table: public.factura

-- DROP TABLE IF EXISTS public.factura;

CREATE TABLE IF NOT EXISTS public.factura
(
    id_factura integer NOT NULL DEFAULT 'nextval('"FACTURA_ID_FACTURA_seq"'::regclass)',
    id_cliente integer NOT NULL DEFAULT 'nextval('"FACTURA_ID_CLIENTE_seq"'::regclass)',
    fecha date NOT NULL,
    CONSTRAINT "FACTURA_pkey" PRIMARY KEY (id_factura),
    CONSTRAINT "ID_CLIENTE" FOREIGN KEY (id_cliente)
        REFERENCES public.clientes (id_clientes) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.factura
    OWNER to postgres;
-- Index: fki_ID_CLIENTE

-- DROP INDEX IF EXISTS public."fki_ID_CLIENTE";

CREATE INDEX IF NOT EXISTS "fki_ID_CLIENTE"
    ON public.factura USING btree
    (id_cliente ASC NULLS LAST)
    TABLESPACE pg_default;














-- TABLA MESA
-- Table: public.mesa

-- DROP TABLE IF EXISTS public.mesa;

CREATE TABLE IF NOT EXISTS public.mesa
(
    id_mesa integer NOT NULL DEFAULT 'nextval('"MESA_ID_MESA_seq"'::regclass)',
    num_mesa numeric(20,0) NOT NULL,
    CONSTRAINT "MESA_pkey" PRIMARY KEY (id_mesa)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.mesa
    OWNER to postgres;

















-- TABLA PLATOS
-- Table: public.platos

-- DROP TABLE IF EXISTS public.platos;

CREATE TABLE IF NOT EXISTS public.platos
(
    id_plato integer NOT NULL DEFAULT 'nextval('"PLATOS_ID_PLATO_seq"'::regclass)',
    nom_plato text COLLATE pg_catalog."default" NOT NULL,
    precio_plato numeric(20,0) NOT NULL,
    CONSTRAINT "PLATOS_pkey" PRIMARY KEY (id_plato)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.platos
    OWNER to postgres;

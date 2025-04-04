\c mydb

CREATE SEQUENCE IF NOT EXISTS producto_clave_seq
INCREMENT 1
START 1
MINVALUE 1
MAXVALUE 2147483647
CACHE 1;

CREATE TABLE IF NOT EXISTS producto (
    clave integer NOT NULL DEFAULT nextval('producto_clave_seq'::regclass),
    descripcion character varying(255),
    precioventa double precision,
    preciocompra double precision,
    CONSTRAINT producto_pkey PRIMARY KEY (clave)
);

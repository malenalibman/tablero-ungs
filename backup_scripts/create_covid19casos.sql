-- Table: public.covid19casos

-- DROP TABLE public.covid19casos;

CREATE TABLE public.covid19casos
(
    id_evento_caso integer,
    sexo character varying COLLATE pg_catalog."default",
    edad integer,
    "edad_años_meses" character varying COLLATE pg_catalog."default",
    residencia_pais_nombre character varying COLLATE pg_catalog."default",
    residencia_provincia_nombre character varying COLLATE pg_catalog."default",
    residencia_departamento_nombre character varying COLLATE pg_catalog."default",
    carga_provincia_nombre character varying COLLATE pg_catalog."default",
    fecha_inicio_sintomas date,
    fecha_apertura date,
    sepi_apertura integer,
    fecha_internacion date,
    cuidado_intensivo character varying COLLATE pg_catalog."default",
    fecha_cui_intensivo date,
    fallecido character varying COLLATE pg_catalog."default",
    fecha_fallecimiento date,
    asistencia_respiratoria_mecanica character varying COLLATE pg_catalog."default",
    carga_provincia_id integer,
    origen_financiamiento character varying COLLATE pg_catalog."default",
    clasificacion character varying COLLATE pg_catalog."default",
    clasificacion_resumen character varying COLLATE pg_catalog."default",
    residencia_provincia_id integer,
    fecha_diagnostico date,
    residencia_departamento_id integer,
    ultima_actualizacion date
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.covid19casos
    OWNER to malena;
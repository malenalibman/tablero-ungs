-- View: public.covid19_amba

-- DROP VIEW public.covid19_amba;

CREATE OR REPLACE VIEW public.covid19_amba
 AS
SELECT * FROM (select * from (SELECT * FROM (SELECT REPLACE (residencia_departamento_nombre, 'SIN ESPECIFICAR', 'CABA')as residencia_departamento_nombre,
    COUNT(residencia_departamento_nombre) as total,
    SUM(CASE WHEN fallecido='SI' THEN 1 ELSE 0 END) as fallecidos,
    SUM(CASE WHEN (sexo='M' and clasificacion_resumen = 'Confirmado') THEN 1 ELSE 0 END) as cmasculino,
    SUM(CASE WHEN (sexo='F' and clasificacion_resumen = 'Confirmado') THEN 1 ELSE 0 END) as cfemenino,
    SUM(CASE WHEN (sexo='F' and fallecido='SI') THEN 1 ELSE 0 END) as ffemenino,
    SUM(CASE WHEN (sexo='M' and fallecido='SI') THEN 1 ELSE 0 END) as fmasculino,                                         
    SUM(CASE WHEN clasificacion_resumen = 'Confirmado' THEN 1 ELSE 0 END) as confirmados,    
    SUM(CASE WHEN clasificacion_resumen = 'Sospechoso' THEN 1 ELSE 0 END) as sospechosos,    
    SUM(CASE WHEN origen_financiamiento='Privado' THEN 1 ELSE 0 END) as at_privada,
    SUM(CASE WHEN origen_financiamiento='Público' THEN 1 ELSE 0 END) as at_publica,    
    SUM(CASE WHEN cuidado_intensivo='SI' and sexo='M' THEN 1 ELSE 0 END) as imasculino,
    SUM(CASE WHEN cuidado_intensivo='SI'and sexo='F' THEN 1 ELSE 0 END) as ifemenino,
    SUM(CASE WHEN edad>=0 and edad<=9 THEN 1 ELSE 0 END) as e0a9,
    SUM(CASE WHEN edad>=10 and edad<=19 THEN 1 ELSE 0 END) as e10a19,
    SUM(CASE WHEN edad>=20 and edad<=29 THEN 1 ELSE 0 END) as e20a29,
    SUM(CASE WHEN edad>=30 and edad<=39 THEN 1 ELSE 0 END) as e30a39,
    SUM(CASE WHEN edad>=40 and edad<=49 THEN 1 ELSE 0 END) as e40a49,
    SUM(CASE WHEN edad>=50 and edad<=59 THEN 1 ELSE 0 END) as e50a59,
    SUM(CASE WHEN edad>=60 and edad<=69 THEN 1 ELSE 0 END) as e60a69,
    SUM(CASE WHEN edad>=70 and edad<=79 THEN 1 ELSE 0 END) as e70a79,
    SUM(CASE WHEN edad>=80 and edad<=89 THEN 1 ELSE 0 END) as e80a99,
    SUM(CASE WHEN edad>=90 and edad<200 THEN 1 ELSE 0 END) as e90,    
    AVG(edad) FILTER (WHERE fallecido='SI') as fedad_prom,
    AVG(edad) as edad_prom

FROM public.covid19casos
WHERE  ((residencia_departamento_nombre  =  'Avellaneda'  or
  residencia_departamento_nombre ='Almirante Brown'  or
  residencia_departamento_nombre =  'Berazategui'  or
  residencia_departamento_nombre = 'Escobar' or
  residencia_departamento_nombre =  'Esteban Echeverría' or
  residencia_departamento_nombre = 'Ezeiza' or
  residencia_departamento_nombre = 'Florencio Varela' or
  residencia_departamento_nombre = 'General San Martín' or
  residencia_departamento_nombre = 'Hurlingham' or
  residencia_departamento_nombre = 'Ituzaingó' or
  residencia_departamento_nombre = 'José C. Paz' or
  residencia_departamento_nombre = 'La Matanza' or
  residencia_departamento_nombre = 'Lanús' or
  residencia_departamento_nombre = 'Lomas de Zamora'  or
  residencia_departamento_nombre =  'Malvinas Argentinas'  or
  residencia_departamento_nombre =  'Merlo'  or
  residencia_departamento_nombre =  'Moreno'  or
  residencia_departamento_nombre =  'Morón'  or
  residencia_departamento_nombre =  'Quilmes'  or
  residencia_departamento_nombre =  'San Fernando'  or
  residencia_departamento_nombre =  'San Miguel'  or
  residencia_departamento_nombre =  'San Isidro'  or
  residencia_departamento_nombre =  'Tigre'  or
  residencia_departamento_nombre =  'Tres de Febrero'  or
  residencia_departamento_nombre =  'Vicente López'  or
residencia_departamento_nombre =  'Brandsen'  or
residencia_departamento_nombre =  'Berisso'  or
residencia_departamento_nombre =  'General Rodríguez'  or
residencia_departamento_nombre =  'Exaltación de la Cruz'  or
residencia_departamento_nombre =  'General Las Heras'  or
residencia_departamento_nombre =  'La Plata'  or
residencia_departamento_nombre =  'Presidente Perón'  or
residencia_departamento_nombre =  'Ensenada'  or
residencia_departamento_nombre =  'Campana'  or
residencia_departamento_nombre =  'San Vicente'  or  
residencia_departamento_nombre =  'Pilar'  or
residencia_departamento_nombre =  'Luján'  or
residencia_departamento_nombre =  'Zárate'  or  
residencia_departamento_nombre =  'Cañuelas'  or
residencia_departamento_nombre =  'Marcos Paz' and residencia_provincia_nombre = 'Buenos Aires' ))
and  (clasificacion_resumen = 'Confirmado' or  clasificacion_resumen = 'Sospechoso' )
GROUP BY residencia_departamento_nombre ) T1 ) T3
UNIOn select * from (SELECT * FROM (SELECT REPLACE (residencia_provincia_nombre, 'SIN ESPECIFICAR', 'CABA')as residencia_departamento_nombre,
    COUNT(residencia_departamento_nombre) as total,    SUM(CASE WHEN fallecido='SI' THEN 1 ELSE 0 END) as fallecidos,
    SUM(CASE WHEN (sexo='M' and clasificacion_resumen = 'Confirmado') THEN 1 ELSE 0 END) as cmasculino,
    SUM(CASE WHEN (sexo='F' and clasificacion_resumen = 'Confirmado') THEN 1 ELSE 0 END) as cfemenino,
    SUM(CASE WHEN (sexo='F' and fallecido='SI') THEN 1 ELSE 0 END) as ffemenino,
    SUM(CASE WHEN (sexo='M' and fallecido='SI') THEN 1 ELSE 0 END) as fmasculino,                                         
    SUM(CASE WHEN clasificacion_resumen = 'Confirmado' THEN 1 ELSE 0 END) as confirmados,    
    SUM(CASE WHEN clasificacion_resumen = 'Sospechoso' THEN 1 ELSE 0 END) as sospechosos,    
    SUM(CASE WHEN origen_financiamiento='Privado' THEN 1 ELSE 0 END) as at_privada,
    SUM(CASE WHEN origen_financiamiento='Público' THEN 1 ELSE 0 END) as at_publica,    
    SUM(CASE WHEN cuidado_intensivo='SI' and sexo='M' THEN 1 ELSE 0 END) as imasculino,
    SUM(CASE WHEN cuidado_intensivo='SI'and sexo='F' THEN 1 ELSE 0 END) as ifemenino,
    SUM(CASE WHEN edad>=0 and edad<=9 THEN 1 ELSE 0 END) as e0a9,
    SUM(CASE WHEN edad>=10 and edad<=19 THEN 1 ELSE 0 END) as e10a19,
    SUM(CASE WHEN edad>=20 and edad<=29 THEN 1 ELSE 0 END) as e20a29,
    SUM(CASE WHEN edad>=30 and edad<=39 THEN 1 ELSE 0 END) as e30a39,
    SUM(CASE WHEN edad>=40 and edad<=49 THEN 1 ELSE 0 END) as e40a49,
    SUM(CASE WHEN edad>=50 and edad<=59 THEN 1 ELSE 0 END) as e50a59,
    SUM(CASE WHEN edad>=60 and edad<=69 THEN 1 ELSE 0 END) as e60a69,
    SUM(CASE WHEN edad>=70 and edad<=79 THEN 1 ELSE 0 END) as e70a79,
    SUM(CASE WHEN edad>=80 and edad<=89 THEN 1 ELSE 0 END) as e80a99,
    SUM(CASE WHEN edad>=90 and edad<200 THEN 1 ELSE 0 END) as e90,
    AVG(edad) FILTER (WHERE fallecido='SI') as fedad_prom,            
    AVG(edad) as edad_prom
FROM public.covid19casos
WHERE  (
 residencia_provincia_nombre = 'CABA' )  and  (clasificacion_resumen = 'Confirmado' or  clasificacion_resumen = 'Sospechoso' )
GROUP BY residencia_provincia_nombre ) T2) T4) T5
FULL OUTER JOIN
(Select st_centroid (amba_partidos_caba_poli.geom), id, nam, gid, fna, gna, in1, fdc, sag, region_san
from public.amba_partidos_caba_poli)T6 ON T5.residencia_departamento_nombre = T6.nam;

ALTER TABLE public.covid19_amba
    OWNER TO malena;


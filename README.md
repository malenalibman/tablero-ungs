## Tablero COVID19 - Proyecto de Investigación UNGS - ICO

Desarrollado en CartoVL, 

Una combinación de herramientas de software libre basadas en CartoVL (una librería de JavaScript que interactúa con las diferentes APIs de CARTO para contruir aplicaciónes propias que permiten la visualización de datos vectoriales (carto.com/developers/carto-vl/)), para la renderizacion de la información geográfica, la generación de graficos y la visualización de la información numérica, asociado a Mapbox (hwww.mapbox.com/) que provee el mapa de base.

En el servidor las capas se dispondrán a través de geoservicios (WMTS) desde Geoserver, alojadas en una base de datos PostgreSQL con el plugin POSTGIS para los datos geográficos. En la versión de este repositorio los datos se encuentran en archivos GeoJson.


### 24 Partidos del Conurbano Bonaerense + CABA

última actualización de los datos del Ministerio de salud (https://sisa.msal.gov.ar/datos/descargas/covid-19/files/Covid19Casos.csv), 31/08/2020

#### Para la vista dinámica de la Base de Datos, la consulta SQL, genera un resumen de los datos que incluye los últimos 3 días de internación por sexo, la edad de los casos dividido en grandes grupos, si la atención fue en una institución provada o pública, la candidad de casos confirmados y fallecidos, su total y dividido por sexo, la cantidad de casos sospechosos. (covid19casos_amba.sql)

#### El script de actualización permite, una vez instalado el tablero en un servidor, que los datos se descarguen diariamente y el resumen se actualice de manera automática.

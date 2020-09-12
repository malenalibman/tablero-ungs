## Tablero COVID19 - Proyecto de Investigación UNGS - ICO

Desarrollado en CartoVL, una librería de JavaScript que interactúa con las diferentes APIs de CARTO para contruir aplicaciónes propias que permiten la visualización de datos vectoriales (https://carto.com/developers/carto-vl/).

### 24 Partidos del Conurbano Bonaerense + CABA

última actualización de los datos del Ministerio de salud (https://sisa.msal.gov.ar/datos/descargas/covid-19/files/Covid19Casos.csv), 31/08/2020

#### La consulta SQL, genera un resumen de los datos que incluye los últimos 3 días de internación por sexo, la edad de los casos dividido en grandes grupos, si la atención fue en una institución provada o pública, la candidad de casos confirmados y fallecidos, su total y dividido por sexo, la cantidad de casos sospechosos. (covid19casos_amba.sql)

#### El script de actualización permite, una vez instalado el tablero en un servidor, que los datos se descarguen diariamente y el resumen se actualice de manera automática.

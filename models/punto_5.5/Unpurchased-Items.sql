{{ config(materialized='table') }}

SELECT oli.*
FROM {{ source("TA_2_G3","Olimpica")}}  AS oli
LEFT JOIN {{  source("TA_2_G3", "Compras") }} AS com ON com.producto = oli.Codigo
WHERE com.producto IS NULL

UNION ALL

SELECT exi.*
FROM {{  source("TA_2_G3", "Exito")}}  AS exi
LEFT JOIN {{  source("TA_2_G3", "Compras") }}  AS com ON com.producto = exi.Codigo
WHERE com.producto IS NULL
{{ config(materialized='table') }}

SELECT DISTINCT cli.*
FROM {{ source("TA_2_G3","Clientes")}} as cli
WHERE NOT EXISTS (
  SELECT 1
  FROM {{ source("TA_2_G3","Compras")}} as com
  WHERE com.cliente = cli.C__digo
  AND com.producto like "EXI%"
);
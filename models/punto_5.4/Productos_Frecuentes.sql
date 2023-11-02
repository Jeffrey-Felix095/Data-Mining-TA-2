{{ config(materialized='table') }}

SELECT CP_.* EXCEPT(producto), PG_.*
FROM {{  ref("Compras-productos")  }} CP_ INNER JOIN {{  ref("Productos_Generales")  }} PG_ ON CP_.producto = PG_.Codigo
ORDER BY CP_.Frecuencia DESC
LIMIT 20
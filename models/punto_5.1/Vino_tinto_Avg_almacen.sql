{{ config(materialized='table') }}

SELECT almacen,(SUM(total)/SUM(cantidad)) AS promedio_almacen
FROM {{  ref("Por_Almacen")  }}
GROUP BY almacen

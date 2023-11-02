{{ config(materialized='table') }}

SELECT * EXCEPT(Precio, median), IFNULL(Precio, median) AS Precio
FROM {{ source("TA_2_G3", "Olimpica") }}, {{ ref("median_")}}
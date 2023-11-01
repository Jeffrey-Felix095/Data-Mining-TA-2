SELECT *
FROM {{  source("TA_2_G3", "Exito")}}

UNION ALL

SELECT *
FROM {{ source("TA_2_G3","Olimpica")}}

SELECT * 
FROM {{ ref("mayor_num_compra_Exito")}}

UNION ALL

SELECT *
FROM {{ ref("mayor_num_compra_Olimpica")}}
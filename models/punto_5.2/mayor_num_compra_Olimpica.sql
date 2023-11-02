SELECT compra_.cliente AS cod_cli, COUNT(compra_.cliente) AS num_comprasTotales,  'Olimpica'AS almacen
FROM {{ source("TA_2_G3", "Compras") }} compra_ INNER JOIN {{  source("TA_2_G3","Olimpica")  }} olimpica_ ON compra_.producto = olimpica_.Codigo
GROUP BY cod_cli
ORDER BY num_comprasTotales DESC
LIMIT 5
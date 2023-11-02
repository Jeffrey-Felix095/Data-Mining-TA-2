SELECT producto, COUNT(producto) AS Frecuencia
FROM {{  source("TA_2_G3", "Compras") }}
GROUP BY producto
LIMIT 20


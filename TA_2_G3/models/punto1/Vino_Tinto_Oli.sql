
SELECT Codigo, Precio
FROM {{ source("TA_2_G3", "imputacion") }}
WHERE Producto LIKE '%Vino Tinto%'

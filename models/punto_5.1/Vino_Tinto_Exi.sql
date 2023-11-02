SELECT Codigo, Precio
FROM {{ source("TA_2_G3", "Exito") }}
WHERE Producto LIKE '%Vino Tinto%'
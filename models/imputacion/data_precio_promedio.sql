SELECT Precio, COUNT(*) OVER() AS cantidad
FROM {{ source("TA_2_G3", "Olimpica") }}
WHERE Precio IS NOT NULL
ORDER BY Precio

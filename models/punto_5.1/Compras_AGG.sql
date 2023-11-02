  SELECT producto, COUNT(*) AS cantidad
  FROM {{  source("TA_2_G3", "Compras")}}
  GROUP BY producto
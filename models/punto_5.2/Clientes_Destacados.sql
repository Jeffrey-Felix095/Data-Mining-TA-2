{{ config(materialized='table') }}

SELECT clientesD_.*, clientes_.*
FROM {{  ref("ClientesTop")  }} clientesD_ INNER JOIN {{  source("TA_2_G3", "Clientes")  }} clientes_ ON clientesD_.cod_cli = clientes_.C__digo
ORDER BY num_comprasTotales DESC
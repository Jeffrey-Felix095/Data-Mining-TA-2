SELECT *, ROW_NUMBER() OVER () AS row_id
FROM {{ ref("data_precio_promedio") }}
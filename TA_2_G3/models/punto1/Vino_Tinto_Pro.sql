SELECT * 
FROM {{ ref("Vino_Tinto_Oli")}}

UNION ALL

SELECT *
FROM {{ ref("Vino_Tinto_Exi")}}
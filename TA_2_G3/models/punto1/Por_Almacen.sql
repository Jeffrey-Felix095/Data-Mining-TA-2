SELECT IF(SUBSTR(vino_tinto_.Codigo,1,3)='OLI', 'Olimpica', 'EXITO') AS almacen,
vino_tinto_.Codigo AS producto, compras_.cantidad,
compras_.cantidad * vino_tinto_.Precio AS total
FROM {{  ref("Compras_AGG") }} compras_ INNER JOIN {{  ref("Vino_Tinto_Pro")  }} vino_tinto_ ON compras_.producto = vino_tinto_.Codigo
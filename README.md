# Data-Mining-TA-2

En esta tarea, realizaremos un análisis de los precios del mercado local para dos "marcas" reconocidas y brindaremos información sobre diversas consultas relacionadas con el negocio.

- El desarrollo de los primeros tres puntos se realizó en BigQuery, donde se migraron y materializaron los datos suministrados.
- El desarrollo de los puntos 4 y 5 se encuentra en la carpeta "models" dentro del presente proyecto.
- El desarrollo del punto 6 se encuentra en Looker Studio. Adjunto un enlace a este al pie del documento.

A continuación la estructura de los puntos 4 y 5:

- **Punto 4. Imputación:**

  - _Data de Precios (data_precio_promedio.sql):_ Obtiene los precios correspondientes a Olímpica exceptuando aquellos precios nulos.
  - _Imputación de Precios (imputacion.sql):_ Imputa los precios calculados utilizando la mediana.
  - _Mediana de los Precios (median\_.sql):_ Cálcula la mediana con los precios no nulos ordenados.
  - _ID por Fila (row_id_added.sql):_ Agrega el ID de los productos por fila.

- **Punto 5.1. Gasto Promedio:**

  - _Gasto Promedio (Avg_Spen.sql):_ Calcula el gasto promedio por tienda (almacén) usando una función de ventana.
  - _Compras Agregadas (Compras_AGG.sql):_ Cuenta las compras por producto.
  - _Por Almacén (Por_Almacen.sql):_ Une datos de productos y compras para calcular totales por tienda.
  - _Productos de Vino (Vino_Tinto_Exi.sql, Vino_Tinto_Oli.sql, Vino_Tinto_Pro.sql):_ Estos modelos parecen manejar datos relacionados con productos de vino, filtrando por nombre de producto y combinando datos de diferentes fuentes.

- **Punto 5.2. Principales Compradores:**

  - _Clientes Principales (ClientesTop.sql):_ Combina los principales clientes de diferentes tiendas.
  - _Clientes Destacados (Clientes_Destacados.sql):_ Une a los principales clientes con otra fuente, posiblemente para agregar más detalles del cliente.
  - _Principales Compradores por Tienda (mayor_num_compra_Exito.sql, mayor_num_compra_Olimpica.sql):_ Identifica clientes con el mayor número de compras en tiendas específicas.

- **Punto 5.3. Compradores Exclusivos de Olímpica:**

  - _Compradores Únicos de Olímpica (Unique_Olimpica_Buyers.sql):_ Selecciona los distintos clientes que han realizado compras únicamente en Olímpica, excluyendo aquellos que han comprado alguna vez en Éxito.

- **Punto 5.4. Productos Más Populares:**

  - _Productos de Compras (Compras-productos.sql):_ Cuenta la frecuencia de productos comprados.
  - _Productos Frecuentes (Productos_Frecuentes.sql):_ Une los datos de frecuencia con datos generales de productos, ordenados por frecuencia.
  - _Productos Generales (Productos_Generales.sql):_ Combina datos de productos de Éxito y Olímpica.

- **Punto 5.5. Productos Sin Ventas:**

  - _Productos que nunca fueron comprados (Unpurchased-Items.sql):_ Selecciona los productos tanto de Olímpica como de Éxito que no hicieron parte de ninguna compra y los retorna en una sola tabla.

- **Punto 6. Looker Studio:**
  - _Dashboard de Looker Studio:_ https://lookerstudio.google.com/s/jse11vChd1A

# alias en SQL
/* Podemos renombrar el enunciado de una columna
y esto servirá para cuando generemos un reporte
El enunciado no cambia de manera permanente
Implementamos un alias con la palabra reservada **AS**
(se puede omitir)
   select nombreCampo AS alias
   select nombreCampo alias
*/

SELECT
    idProducto AS ID,
    producto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM  productos
  JOIN marcas
    ON productos.idMarca = marcas.idMarca
  JOIN categorias
   ON productos.idCategoria = categorias.idCategoria;

/* se puede implementar un alias para los nombres de las tablas */
SELECT
    idProducto AS ID,
    producto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM  productos AS p
  JOIN  marcas AS m
    ON  p.idMarca = m.idMarca
  JOIN  categorias AS c
    ON  p.idCategoria = c.idCategoria;
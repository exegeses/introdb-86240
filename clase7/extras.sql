-- en clase hicimos un práctica extra

SELECT
    idProducto AS ID,
    producto AS Producto,
    precio AS 'Precio de Contado',
    FORMAT( precio*1.05, 2 ) AS 'Precio de Lista',
    CONCAT(marca, ' (', m.idMarca, ')' ) AS Marca,
    CONCAT(categoria, ' (', c.idCategoria, ')' ) AS Categoría
FROM  productos AS p
  JOIN  marcas AS m
    ON  p.idMarca = m.idMarca
  JOIN  categorias AS c
    ON  p.idCategoria = c.idCategoria;

/* concat() "pega" contenido de columnas */
/* format() dar formato a números o cálculos numéricos*/
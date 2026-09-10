# Consultas con relaciones entre tablas
Cuándo queremos obtener datos provenientes de dos o más tablas debemos implementar relaciones.
Tenemos dos técnicas para lograrlo.

1. Relación implícita
2. Relación explícita (JOIN)

## 1. Relación implícita
Para lograr esta técnica, debemos mencionar en el listado de tablas (después del FROM) todas las tablas necesarias
separadas por comas
Y luego mediante un filtro (WHERE) igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla.

Sintaxis: 

```sql
    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2
     WHERE tabla1.campoFK = tabla2.campoPK;

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3  
      FROM tabla1, tabla2, tabla3
     WHERE tabla1.campoFK = tabla2.campoPK
       AND tabla1.campoFK = tabla3.campoPK;
```

Ejemplo práctico: 
```sql
    SELECT producto, precio, marca
      FROM productos, marcas
     WHERE productos.idMarca = marcas.idMarca;

    SELECT producto, precio, marca, categoria
      FROM productos, marcas, categorias
     WHERE productos.idMarca = marcas.idMarca
       AND productos.idCategoria = categorias.idCategoria;
```

## Relación explícita (JOIN)
Para lograr esta técnica debemos mencionar (después del FROM) únicamente una sola tabla
Y luego mediante la palabra reservada **JOIN** mencionamos la segunda tabla
Finalmente mediante la palabra reservada **ON** igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla.
Podríamos decir que cada **JOIN** tiene su propio **ON**
```sql
    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1
      JOIN tabla2
        ON tabla1.campoFK = tabla2.campoPK;

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3
      FROM tabla1
      JOIN tabla2 
        ON tabla1.campoFK = tabla2.campoPK
      JOIN tabla3
        ON tabla1.campoFK = tabla3.campoPK;
```

Ejemplo práctico:
```sql
    SELECT producto, precio, marca, categorias
      FROM productos
      JOIN marcas
       ON productos.idMarca = marcas.idMarca;

    SELECT producto, precio, marca, categorias
      FROM productos
      JOIN marcas
       ON productos.idMarca = marcas.idMarca
      JOIN categorias
       ON productos.idCategoria = categorias.idCategoria;
```










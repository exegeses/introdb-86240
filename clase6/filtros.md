# Filtrado de registros
Cuándo hacemos una consulta sin ningún filtro obtenemos un listado de todos los registros que hay dentro de una tabla
Filtrar registros significa que mediante una condición vamos a obtener solamente aquellos registros que cumplan con dicha condición.
Para implementar un filtro en SQL utilizamos la palabra reservada *WHERE*

Obtener un listado de todos los productos de la marca HP (10)
```sql
SELECT producto, precio
  FROM productos
  WHERE idMarca = 10;
```

Obtener un listado con todos los productos con un precio hasta 1000
```sql
SELECT producto, precio
  FROM productos
  WHERE precio <= 1000;
```
Obtener nombre, apellido y teléfono de todos los clientes con apellido 'González'
```sql
SELECT nombre, apellido, telefono
  FROM clientes
  WHERE apellido = 'gonzalez'; 
```

## Implementando más de una condición
Obtener todos los productos de la marca Apple con un precio hasta 1000
```sql
SELECT producto, precio
  FROM productos
  WHERE idMarca = 1
  AND precio <= 1000;
```

Obtener todos los productos con precios entre 100 y 1000
```sql
SELECT producto, precio
  FROM productos
  WHERE precio >= 100
    AND precio <= 1000;
```

> Uso de BETWEEN
```sql
SELECT producto, precio
  FROM productos
  WHERE precio BETWEEN 100 AND 1000;
```

Obtener todos los productos de la marca HP (10) y de la marca Xiaomi (8)
```sql
SELECT producto, precio, idMarca
  FROM productos
  WHERE idMarca = 10
    OR idMarca = 8; 
```
Operador IN()
```sql
SELECT producto, precio, idMarca
  FROM productos
  WHERE idMarca IN(8, 10); 
```
```sql
SELECT apellido, nombre, telefono
  FROM clientes
  WHERE apellido IN('perez', 'gonzalez', 'fernandez');
```

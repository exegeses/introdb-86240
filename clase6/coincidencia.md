# Consultas con operador de coincidencia
En algunos casos vamos a querer obtener registros que contengan una palabra o parte de una palabra como filtro
Por ejemplo obtener todos los productos que en la columna descripción contengan la palabra "inalámbrico"

```sql
SELECT producto, precio, descripcion
FROM productos
where descripcion = 'inalambrico';
```
En esta consulta no vamos a obtener ningún resultado ya que estaría buscando que en la columna descripción diga únicamente 'inalámbrico'

Si queremos encontrar registros que contengan la palabra inalámbrico vamos a reemplazar el símbolo de igual por la palabra reservada *LIKE* acompañado con el símbolo *%* 
El símbolo de *%* puede ocupar uno, varios o incluso ningún carácter

```sql
SELECT producto, precio, descripcion
  FROM productos
  WHERE descripcion LIKE '%inalambrico%';
```
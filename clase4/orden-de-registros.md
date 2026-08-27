# Orden de resultados
Cuando obtenemos una grilla de resultados estos **siempre** vienen ordenados *de manera predeterminada*
Podemos cambiar el orden de los resultados con el modificador *ORDER BY*

```sql
SELECT * 
FROM marcas
ORDER BY idMarca;

-- obtener apellido, nombre, DNI y e-mail de los clientes ordenado por apellido de la z a la a
SELECT apellido,nombre,dni, email
FROM clientes
ORDER BY apellido DESC;

-- obtener nombre del producto, precio y descripción de todos los productos ordenados por precio
SELECT producto, precio, descripcion
FROM productos
ORDER BY precio;
```

Sintaxis:

    SELECT [*, campo, campo]  
       FROM [tabla]  
       ORDER BY [campo];  

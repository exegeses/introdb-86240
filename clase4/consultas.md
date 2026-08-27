# Consultas en SQL
Podemos realizar consultas a:

1. Servidor
2. Bases de datos
3. Tablas
4. Vistas

## Consultas a server

```sql
-- listas todas las bases de un server  
SHOW DATABASES;

-- ver cuál es la base de datos activa
SELECT DATABASE();

-- listar usuarios conectados
SELECT USER();
```

## Consultas a Bases de datos
```sql
-- listar todas las tablas dentro de una base de datos
SHOW TABLES;
-- sintaxis alternativa
SELECT TABLE_NAME FROM
    information_schema.tables
WHERE table_schema = DATABASE();  
```

## Consultas a tablas
```sql
-- ver la estructura de una tabla
DESCRIBE nombreTabla;

-- obtener grilla de registros
SELECT * FROM nombreTabla;
SELECT * FROM clientes;
SELECT * FROM proveedores;
```

Cuando nuestra consulta dice *SELECT \* FROM nombreTabla* vamos a obtener un listado con la totalidad de registros y todas las columnas de una tabla.
Si nosotros queremos ver solamente los datos de algunas columnas, debemos reemplazar el símbolo de \* por un listado de las columnas.

```sql
-- traer nombre, apellido y teléfono de todos los clientes
SELECT nombre, apellido, telefono
FROM clientes;
```

Hasta ahora nuestra sintaxis es la siguiente:

    SELECT [*, campo, campo]  
      FROM [tabla]; 

<img src="sintaxis.png">
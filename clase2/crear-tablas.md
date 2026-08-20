# Creación de tablas en SQL
Podrían crear una tabla utilizamos el comando **CREATE TABLE**

Requisito: para poder crear la tabla tenemos que activarla primero. No se puede crear una tabla si no activo la base de datos primero.

¿cómo se activa una base de datos?
Para activar la base de datos usamos el comando **USE**

En la paleta de código escribimos
```sql
USE introdb;
```

Ahora si estamos listos para crear una tabla
Cuándo creemos una tabla debemos ponerle nombre y estructura.
La estructura es nombres de campos, tipos de datos y modificadores

```sql
CREATE TABLE nombre
(
    nombreCampo tipoDato [modificadores],
    nombreCampo tipoDato [modificadores],
    nombreCampo tipoDato [modificadores],
    nombreCampo tipoDato [modificadores]
);
```

Ejemplo práctico:

```sql
CREATE TABLE clientes
(
    idCliente int auto_increment primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    dni int unique not null, 
    telefono varchar(25) not null,
    email varchar(50) not null,
    fechaAlta date not null
);
```

## Eliminar una tabla
Para eliminar una tabla utilizamos el comando **DROP TABLE**

```sql
DROP TABLE nombreTable;
```


# Inserción de registros en SQL
En SQL tenemos tres maneras principales de insertar registros dentro de una tabla
Las tres maneras comienzan con 

    INSERT INTO nombreTabla...

## Sintaxis usando SET

    INSERT INTO nombreTabla  
       SET  
            columna1 = valor1,  
            columna2 = valor2,  
            columna3 = valor3,  
            columnaX = valorX;  

Ejemplo práctico: 

```sql
INSERT INTO clientes
   SET
       idCliente = 1,
       nombre = 'Lucía',
       apellido = 'González',
       dni = 30123456,
       telefono = 1123456789,
       email = 'lucia.gonzalez@mail.con',
       fechaAlta = '2024-05-12';       
```
```sql
INSERT INTO clientes
SET
    nombre = 'Martín',
    apellido = 'Pérez',
    dni = 28987654,
    telefono = 1139876543,
    email = 'martin.perez@mail.com',
    fechaAlta = '2024-06-01';
```


## Sintaxis completa (se mencionan los campos)

    INSERT INTO nombreTabla  
        (campo1, campo2, campo3, campoX)  
      VALUES  
        (valor1, valor2, valor3, valorX);  

Ejemplo pr´actico:

```sql
INSERT INTO clientes  
    ( idCliente, nombre, apellido, dni, telefono, email, fechaAlta )
  VALUES
    ( 3, 'Sofía', 'Ramírez', 32555444, '1144455566', 'sofia.ramirez@mail.com', '2024-06-15' );

INSERT INTO clientes
    ( nombre, apellido, dni, telefono, email, fechaAlta )
VALUES
    ( 'Carlos', 'López', 27666777, '1155566677', 'carlos.lopez@mail.com', '2024-06-20' );  
```

## Sintaxis simplificada (NO se mencionan los campos)

    INSERT INTO nombreTabla  
      VALUES  
        (valor1, valor2, valor3, valorX);  

En esta sintaxis si bien no mencionamos los nombres de los campos, estamos obligados a mencionar *todos y cada uno* de los valores necesarios en el orden exacto

Ejemplo práctico:

```sql
    INSERT INTO clientes  
      VALUES  
        ( DEFAULT, 'Ana', 'Martínez', 33444555, '1166677788', 'ana.martinez@mail.com', '2024-06-25' );  
```

### Insertar múltiples registros
En algunos casos vamos a necesitar insertar varios registros
No es obligatorio utilizar un **insert** por cada uno de los registros a insertar
Podemos utilizar un único **INSERT** para varios registros

    INSERT INTO nombreTabla  
        ( nombreCampo, nombreCampo2, nombreCampo3, nombreCampoX )  
      VALUES  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX ),  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX ),  
        ( valorCampo, valorCampo2, valorCampo3, valorCampoX );  


    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valorCampo2, valorCampo3, valorCampoX ),  
        ( DEFAULT, valorCampo2, valorCampo3, valorCampoX ),  
        ( DEFAULT, valorCampo2, valorCampo3, valorCampoX );

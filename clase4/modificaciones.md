# Modificación de registros en SQL
Para modificar los registros dentro de una tabla utilizamos el comando *UPDATE*
Debemos implementar un filtro para indicar cuál es el registro que queremos modificar.
Implementamos un filtro con la palabra reservada *WHERE* seguido de una condición.

Sintaxis: 
    
    UPDATE nombreTabla    
       SET  
            campo = valor,  
            campo = valor  
      WHERE condicion;

Ejemplo práctico: 

```sql
UPDATE clientes  
  SET 
       telefono = '1188877666'
 WHERE idCliente = 15;
```
```sql
UPDATE clientes  
  SET 
       telefono = '1188877666',
       email = 'vic.flores@mail.com'
 WHERE idCliente = 15;
```
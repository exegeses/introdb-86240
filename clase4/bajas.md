# Borrado de registros en SQL
Para eliminar registros dentro de una tabla utilizamos el comando *DELETE*
Debemos implementar un filtro para indicar cuál es el registro que queremos modificar.
Implementamos un filtro con la palabra reservada *WHERE* seguido de una condición.

Sintaxis: 

    DELETE FROM nombreTabla  
     WHERE campoPK = valorID;  

Ejemplo práctico:
```sql
    DELETE FROM clientes
     WHERE idCliente = 50;
```

> ver: <https://youtu.be/i_cVJgIz_Cs?si=FZoJHXM4dj-fzult>

---
Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
Si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL
# funciones de fecha
Si queremos realizar consultas que utilicen como filtro fechas o cálculos entre fechas,
SQL tiene varias funciones de fecha

```sql
SELECT apellido, nombre, fechaAlta
  FROM clientes
  WHERE fechaAlta BETWEEN 20250101 AND 20251231;
```

Función Year()
```sql
SELECT apellido, nombre, fechaAlta
  FROM clientes
  WHERE YEAR(fechaAlta) = 2025;
```

Función Month()
```sql
SELECT apellido, nombre, fechaAlta
  FROM clientes
  WHERE MONTH(fechaAlta) = 6;
```

```sql
SELECT apellido, nombre, fechaAlta
FROM clientes
WHERE MONTH(fechaAlta) = 6
  AND YEAR(fechaAlta) = 2025;
```
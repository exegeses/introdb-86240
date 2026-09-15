# consultas a través de tabla pivote
/*
    obtener:
            producto, precio (productos)
            razonSocial, telefono (proveedores)
*/
SELECT producto, precio, razonSocial, telefono
  FROM productos
  JOIN productos_proveedores
    ON productos.idProducto = productos_proveedores.idProducto
  JOIN proveedores
    ON productos_proveedores.idProveedor = proveedores.idProveedor;
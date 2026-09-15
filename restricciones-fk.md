# Restricciones de las claves foráneas

FOREIGN KEY (iFK)
    REFERENCES tablaSecundaria (idPK)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT

    ON DELETE RESTRICT (mo me deda borrar por la restricciòn)
    ON UPDATE RESTRICT (mo me deda modificar por la restricciòn)

    ON DELETE CASCADE (cuando borres, borra todos los registros de la tabla relacionada)
    ON UPDATE CASCADE (cuando modifiques, borra todos los registros de la tabla relacionada)

    ON DELETE SET NULL  (cuando borres, establece nulo el id de la tabla relacionada)
    ON UPDATE SET NULL  (cuando modificás, establece nulo el id de la tabla relacionada)

    ON DELETE SET DEFAULT (cuándo borres establece el valor default del id de la tabla relacionada) 
    ON UPDATE SET DEFAULT (cuándo modifiques establece el valor defauls del id de la tabla relacionada)
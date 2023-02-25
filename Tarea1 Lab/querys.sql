SELECT * FROM clientes ORDER BY nom_cliente ASC

SELECT * FROM clientes WHERE direccion_cliente = 'SAN FRANCISCO'

SELECT COUNT(*) FROM empleados 

SELECT direccion FROM establecimientos ORDER BY direccion DESC

SELECT nom_plato, precio_plato FROM platos WHERE precio_plato <= 10

SELECT id_cliente, fecha FROM factura WHERE id_cliente >=40

SELECT nom_empleado, apellido_empleado, cargo FROM empleados WHERE nom_empleado = 'NEUTRO' OR nom_empleado = 'ARMANDO'

SELECT num_mesa from mesa

SELECT * FROM empleados where cargo = 'CAJERO' and id_establecimiento =14


SELECT id_factura, id_empleado FROM detalles_factura

DELETE FROM empleados WHERE id_empleado = 8
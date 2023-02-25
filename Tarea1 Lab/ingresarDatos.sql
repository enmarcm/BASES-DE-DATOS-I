-- INSERTAR DATOS A TABLA MESA

INSERT INTO mesa (num_mesa) VALUES (1);
INSERT INTO mesa (num_mesa) VALUES (2);
INSERT INTO mesa (num_mesa) VALUES (3);
INSERT INTO mesa (num_mesa) VALUES (4);
INSERT INTO mesa (num_mesa) VALUES (5);
INSERT INTO mesa (num_mesa) VALUES (6);
INSERT INTO mesa (num_mesa) VALUES (7);
INSERT INTO mesa (num_mesa) VALUES (8);
INSERT INTO mesa (num_mesa) VALUES (9);
INSERT INTO mesa (num_mesa) VALUES (10);

-- INSERTAR DATOS A ESTABLECIMIENTOS
INSERT INTO establecimientos (nom_establecimiento, telefono, direccion) VALUES ('LA LAGO', 2617887712 ,'DIRECCION LA LAGO');
INSERT INTO establecimientos (nom_establecimiento, telefono, direccion) VALUES ('SAN FRANCISCO', 2627887712 ,'LA COROMOTO');
INSERT INTO establecimientos (nom_establecimiento, telefono, direccion) VALUES ('EL MILAGRO', 2627087712 ,'LA VEREDA DEL LAGO');

-- INGRESAR DATOS A TABLA CLIENTES
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('ENMANUEL','COLINA', 'CIRCUNVALACION 2', 4121704005);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('ANDRES','MATA', 'LA LAGO', 4145120000);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('MIGUEL','GUILLEN', 'SANTA FE 2', 4245212345);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('RAFAEL','PRADO', 'TIERRAS DEL SOL 2', 4129004212);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('MARIA','RAMIREZ', 'SAN FRANCISCO', 4121234212);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('ISABELLA','RODRIGUEZ', 'SAN FRANCISCO', 4121234232);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('JOSEFA','CLEMENCIA', 'SAN MIGUEL', 4121234290);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('MARIANGEL','GONZALEZ', 'LA CONCEPCION', 4121234292);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('KAMILA','MARQUEZ', 'LA VICTORIA', 4121234224);
INSERT INTO clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_cliente) VALUES ('ESTEFANY','RONDON', 'CUATRICENTENARIO', 4121244290);


-- INSERTAR DATOS A PLATOS

INSERT INTO platos (nom_plato, precio_plato) VALUES ('HAMBURGUESA DE CARNE', 12);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('HAMBURGUESA DE POLLO', 14);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('PABELLON', 8);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('PIZZA DE JAMON', 15);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('ENSALADA CESAR', 5);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('PAPAS FRITAS', 2);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('PATACON', 19);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('PASTICHO',8);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('TERNERA', 10);
INSERT INTO platos (nom_plato, precio_plato) VALUES ('HOT DOG', 4);

-- INSERTAR DATOS A EMPLEADOS
-- PRIMERO EMPLEADOS DE LA PRIMERA SEDE
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('GABRIELA', 'MOLERO', 412000000, 'CALLE 72', 'GERENTE', 13);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('SIMON', 'DIAZ', 412000024, 'MANZANILLO', 'CAJERO', 13);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('MAURO', 'GONZALEZ', 412000214, 'RAUL LEONI', 'OBRERO', 13);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('MARIO', 'BROS', 412912022, 'SABANETA', 'GERENTE', 13);

-- EMPLEADOS DE LA SEGUNDA SEDE
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('ALEXANDRA', 'WETTEL', 412000002, 'CALLE 72', 'GERENTE', 14);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('NEUTRO', 'SHORTY', 412000022, 'ARTIGAS', 'CAJERO', 14);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('ARMANDO', 'CASAS', 412910022, 'ARTIGAS', 'OBRERO', 14);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('ARMANDO', 'CASAS', 412910022, 'ARTIGAS', 'OBRERO', 14);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('ANTONIO', 'BANDERAS', 412917922, 'SANTA FE III', 'CAJERO', 14);

-- EMPLEADOS TERCERA SEDE
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('MICRO', 'TDH', 412918022, 'VILLA EL PALITO', 'GERENTE', 15);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('MARCO', 'EUSTAVIO', 412918922, 'SANTA FE I', 'CAJERO', 15);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('RAMON', 'LOPEZ', 412318922, 'SAN FRANCISCO', 'OBRERO', 15);
INSERT INTO empleados (nom_empleado, apellido_empleado,telefono, direccion, cargo, id_establecimiento) VALUES ('NICOLAS', 'BUSTOS', 412318822, 'EL DORAL', 'OBRERO', 15);


-- AHORA INGRESAMOS A TABLA FACTURA
INSERT INTO factura (id_cliente, fecha) VALUES (1, '2022-07-14');
INSERT INTO factura (id_cliente, fecha) VALUES (38, '2022-02-27');
INSERT INTO factura (id_cliente, fecha) VALUES (39, '2023-01-30');
INSERT INTO factura (id_cliente, fecha) VALUES (40, '2022-03-10');
INSERT INTO factura (id_cliente, fecha) VALUES (41, '2022-02-11');
INSERT INTO factura (id_cliente, fecha) VALUES (42, '2022-12-29');
INSERT INTO factura (id_cliente, fecha) VALUES (43, '2022-11-03');
INSERT INTO factura (id_cliente, fecha) VALUES (44, '2022-05-29');
INSERT INTO factura (id_cliente, fecha) VALUES (45, '2022-07-09');
INSERT INTO factura (id_cliente, fecha) VALUES (46, '2022-10-11');

-- INGRESAMOS A TABLA DETALLES_FACTURA


INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (3, 16,43,43);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (4, 17,44,43);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (5, 18,44,43);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (6, 19,43,44);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (7, 20,45,45);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (8, 21,48,45);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (9, 23,41,48);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (10,23,42,41);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (11,23,41,41);
INSERT INTO detalles_factura (id_factura, id_empleado, id_plato, id_mesa) VALUES (12,28,42,42);
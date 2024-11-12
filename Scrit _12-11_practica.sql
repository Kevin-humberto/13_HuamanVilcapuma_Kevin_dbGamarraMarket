DROP DATABASE IF EXISTS dbGamarraMarket;
CREATE DATABASE dbGamarraMarket
DEFAULT CHARACTER SET utf8;

USE dbGamarraMarket;

CREATE TABLE CLIENTE(
id int,
tipo_documente char(3),
numero_documento char(9),
nombres varchar(60),
apellidos varchar(90),
email varchar(80),
celular char(9),
fecha_nacimiento date,
activo bool,
CONSTRAINT cliente_pk PRIMARY KEY (id)
);

CREATE TABLE VENDEDOR(
id int,
tipo_documente char(3),
numero_documento char(15),
nombres varchar(60),
apellidos varchar(90),
salario decimal(8,2),
celular char(9),
email varchar(80),
activo bool,
CONSTRAINT vendedor_pk PRIMARY KEY (id)
);

CREATE TABLE VENTA (
id int,
fecha_hora timestamp,
cliente_id int,
vendedor_id int,
CONSTRAINT venta_pk PRIMARY KEY (id)
);

CREATE TABLE VENTA_DETALLE (
id int,
cantidad int,
venta_id int,
prenda_id int,
CONSTRAINT venta_detalle_pk PRIMARY KEY (id)
);

CREATE TABLE PRENDA (
id int,
descripcion varchar(90),
marca varchar(60),
cantidad int,
talla varchar(10),
precio decimal(8,2),
activo bool,
CONSTRAINT prenda_pk PRIMARY KEY (id)
);

-- Inserción de datos en la tabla CLIENTE
INSERT INTO CLIENTE (id, tipo_documente, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo) VALUES
(1, 'DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '998456103', '1970-02-10', 1),
(2, 'DNI', '45781233', 'Alicia', 'García Campos', '', '', '1980-03-20', 1),
(3, 'CNE', '31548722', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', '1986-06-06', 1),
(4, 'DNI', '12211633', 'Ana', 'Enríquez Flores', 'ana.enriquez@empresa.com', '', '1978-09-01', 1),
(5, 'CNE', '088741589', 'Claudia', 'Perales Ortíz', 'claudia.perales@yahoo.com', '997845263', '1981-07-25', 1),
(6, 'DNI', '45125887', 'Mario', 'Barrios Martínez', 'mario.barrios@hotmail.com', '986528571', '1980-10-18', 1),
(7, 'CNE', '175258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', '1990-06-06', 1),
(8, 'DNI', '47142536', 'Alejandro', 'Jimenez Huapaya', '', '941525365', '1989-06-01', 1),
(9, 'DNI', '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '98514723', '1991-10-01', 1),
(10, 'DNI', '465772587', 'Mario', 'Rodríguez Mayo', 'mario.rodriguez@outlook.com', '912662587', '1987-11-10', 1),
(11, 'CNE', '837952514', 'Luisa', 'Guerra Ibarra', 'luisa.guerra@yahoo.com', '974422136', '1988-12-21', 1),
(12, 'DNI', '74142585', 'Pedro Alejandro', 'Candela Valenzuela', 'pedro.candela@gmail.com', '91418525', '1995-06-30', 1),
(13, 'DNI', '53298147', 'Angel María', 'Rojas Ávila', 'angel.rojas@outlook.com', '', '1975-03-02', 1),
(14, 'DNI', '11453265', 'Hilario Francisco', 'Avila Huapaya', '', '985514326', '2000-05-02', 1),
(15, 'CNE', '75472186', 'Octavio', 'Muñoz Osorio', 'octavio.munoz@yahoo.es', '966223141', '2000-09-22', 1),
(16, 'DNI', '55863912', 'Manolo Ernesto', 'Vasquez Salvatierra', 'manolo.vasquez@outlook.es', '966223141', '1998-05-16', 1),
(17, 'DNI', '41555267', 'Genoveva', 'Ortíz Quispe', 'genoveva.ortiz@outlook.es', '92564137', '2003-04-12', 1),
(18, 'DNI', '4995471', 'Oscar Cesar', 'Quiroz Zavala', '', '988223145', '2004-10-14', 1),
(19, 'DNI', '44992217', 'Verónica', 'Romero Vargas', 'veronica.romero@yahoo.com', '', '2002-08-25', 1),
(20, 'DNI', '00253641', 'Eliseo', 'Prada Ortíz', 'eliseo.prada@yahoo.com', '', '2004-09-15', 1);

SELECT * FROM CLIENTE;

-- Inserción de datos en la tabla VENDEDOR
INSERT INTO VENDEDOR (id,tipo_documente, numero_documento, nombres, apellidos, salario, celular, email, activo) VALUES
(1, 'DNI', '85471236', 'Enrique', 'Pérez Manco', 1500.00, '96521873', 'enrique.perez@outlook.com', 1),
(2, 'DNI', '47259136', 'Sofía', 'Ávila Solis', 1350.00, '', '', 1),
(3, 'DNI', '61542280', 'Marcela', 'Napaico Cama', 1600.00, '965874357', 'marcela.napaico@gmail.com', 1),
(4, 'CNE', '742536140', 'Carmelo', 'Rodríguez Chauca', 1550.00, '', 'carmelo.rodriguez@yahoo.com', 1);

SELECT * FROM VENDEDOR;

-- Inserción de datos en la tabla PRODUCTO
INSERT INTO PRENDA (id, descripcion, marca, cantidad, talla, precio, activo) VALUES
(1, 'Pantalon Jeans', 'Levis', 60, 28, 65.80, 1),
(2, 'Camisa manga corta', 'Adams', 75, 16, 55.00, 1),
(3, 'Polo sport', 'Australia', 100, 16, 40.00, 1),
(4, 'Camisa manga larga', 'Newport', 150, 16, 42.50, 1),
(5, 'Pijama para caballero', 'Adams', 180, 28, 79.50, 1),
(6, 'Corbata', 'Maxwell', 85, 16, 14.50, 1),
(7, 'Pijama para dama', 'Adams', 170, 24, 55.50, 1),
(8, 'Pantalon Jeans', 'Australia', 200, 28, 68.50, 1),
(9, 'Camisa Sport', 'John Holden', 85, 16, 88.50, 1),
(10, 'Shorts Jeans', 'Pepe Jeans', 185, 28, 77.20, 1);

-- Insertar registros en la tabla VENTA
INSERT INTO VENTA (id, fecha_hora, cliente_id, vendedor_id) VALUES
(1, '2023-05-01 19:04:08', 4, 1),
(2, '2023-05-01 19:04:08', 6, 3),
(3, '2023-05-01 19:04:08', 10, 4),
(4, '2023-05-01 19:04:08', 18, 4);

-- Insertar registros en la tabla VENTA_DETALLE
INSERT INTO VENTA_DETALLE (id, cantidad, venta_id, prenda_id) VALUES
(1, 3, 1, 6),
(2, 5, 1, 3),
(3, 7, 2, 7),
(4, 3, 2, 4),
(5, 2, 2, 3),
(6, 4, 3, 5),
(7, 8, 3, 2),
(8, 2, 3, 7),
(9, 5, 4, 5),
(10, 1, 4, 2);

-- Actualizar el número de celular de Mario Rodríguez Mayo
UPDATE CLIENTE
SET celular = '922881101'
WHERE celular = '986528571';

-- Actualizar el número de celular del cliente con DNI 53298147
UPDATE CLIENTE
SET celular = '977226604'
WHERE numero_documento = '53298147';

-- Eliminar lógicamente los clientes con DNI: 11453265, 74142585 y 49985471
UPDATE CLIENTE
SET activo = 0
WHERE numero_documento IN ('11453265', '74142585', '49985471');

-- Borrar el celular de los clientes con DNI: 87952514, 55869321 y 74142585
UPDATE CLIENTE
SET celular = ''
WHERE numero_documento IN ('87952514', '55869321', '74142585');

-- Reactivar el cliente Oscar César Quiroz Zavala y actualizar su correo
UPDATE CLIENTE
SET activo = 1, email = 'oscarCesar.quiroz@yahoo'
WHERE id IN (18);

-- Agregar los datos de los nuevos CLIENTE
INSERT INTO CLIENTE (id, tipo_documente, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo) VALUES
(21, 'DNI', '88225463', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', NULL, '2001-10-13', 1),
(22, 'DNI', '15753595', 'Daniela', 'Solis Vargas', 'daniela.solis@outlook.com', NULL, '1993-11-09', 1),
(23, 'DNI', '76314895', 'Milton Gregorio', 'Vasquez Iturrizaga', 'milton.gregorio@yahoo.es', '974815233', '2004-06-22', 1),
(24, 'DNI', '84725001', 'Veronica', 'Ancajima Araujo', 'veronica.ancajima@yahoo.com', NULL, '1980-01-15', 1),
(25, 'DNI', '11228514', 'Felicita', 'Marroquin Candela', 'felicita.marroquin@outlook.com', '966001472', '2006-06-06', 1),
(26, 'DNI', '51436952', 'Luhana', 'Ortiz Rodriguez', 'luhana.ortiz@outlook.es', '960405017', '1980-11-25', 1);

-- Actualizar el precio del polo sport de marca Australia a 45.00
UPDATE PRENDA
SET precio = 45.00
WHERE descripcion = 'Polo sport' AND marca = 'Australia';

-- Cambiar el nombre de la prenda "Corbata" por "Corbata Michi elegante"
UPDATE PRENDA
SET descripcion = 'Corbata Michi elegante'
WHERE id = 6;

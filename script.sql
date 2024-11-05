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

SHOW TABLES;

ALTER TABLE VENTA
	ADD CONSTRAINT VENTA_CLIENTE FOREIGN KEY (cliente_id)
    REFERENCES CLIENTE (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;
ALTER TABLE VENTA
	ADD CONSTRAINT VENTA_VENDEDOR FOREIGN KEY (vendedor_id)
    REFERENCES VENDEDOR (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE VENTA_DETALLE
	ADD CONSTRAINT VENTA_DETALLE_VENTA FOREIGN KEY (venta_id)
    REFERENCES VENTA (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE VENTA_DETALLE
	ADD CONSTRAINT VENTA_DETALLE_PRENDA FOREIGN KEY (prenda_id)
    REFERENCES PRENDA (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

SELECT 
    table_name AS 'Tabla',
    column_name AS 'Columna',
    referenced_table_name AS 'Tabla Referenciada',
    referenced_column_name AS 'Columna Referenciada'
FROM
    information_schema.key_column_usage
WHERE
    constraint_schema = 'dbGamarraMarket'
    AND referenced_table_name IS NOT NULL;
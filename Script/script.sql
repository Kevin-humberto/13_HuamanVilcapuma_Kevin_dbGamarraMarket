CREATE DATABASE db_desalinizador;
USE db_desalinizador;

-- Table: Solicitante
CREATE TABLE solicitante (
    identificador int auto_increment NOT NULL COMMENT 'identificador único del solicitante',
    nombre varchar(50) NOT NULL COMMENT 'nombre del solicitante',
    apellidos varchar(150) NOT NULL COMMENT 'apellidos del solicitante',
    fecha_registro timestamp NOT NULL COMMENT 'fecha en la que hiso la consulta',
    correo_electronico varchar(150) NOT NULL COMMENT 'correo electrónico del solicitante',
    CONSTRAINT Solicitante_pk PRIMARY KEY (identificador)
) COMMENT 'Datos personales de la persona que realiza las consultas a la pagina web';

CREATE TABLE consulta (
    id_consulta int auto_increment NOT NULL COMMENT 'Identificador numérico y único de cada solicitante',
    fecha_consulta timestamp NOT NULL COMMENT 'Contiene la fecha y hora en que se registra la consulta',
    Solicitante int NOT NULL COMMENT 'identificador único del solicitante',
    pregunta varchar(255) NOT NULL COMMENT 'Descripción de la consulta que se realiza por parte del solicitante',
    respuesta varchar(500) NOT NULL COMMENT 'Contenido detallado del mensaje que el usuario desea comunicar. Puede incluir información extensa sobre la consulta o problema.',
    estado_consulta char(1) NOT NULL COMMENT '(A) Activa | (P) Pendiente',
    CONSTRAINT consulta_pk PRIMARY KEY (id_consulta)
) COMMENT 'La entidad Consulta está diseñada para representar el registro de las solicitudes o preguntas que los usuarios realizan dentro de un sistema de atención o soporte. Esta entidad tiene como objetivo capturar la información esencial del contacto entre el usuario y la organización, proporcionando los medios necesarios para dar un seguimiento efectivo a cada consulta.';

-- relaciones
ALTER TABLE consulta
ADD CONSTRAINT fk_solicitante
FOREIGN KEY (Solicitante) REFERENCES solicitante(identificador)
ON DELETE CASCADE
ON UPDATE CASCADE;

INSERT INTO solicitante (nombre, apellidos, fecha_registro, correo_electronico) VALUES 
('Juan', 'Pérez García', NOW(), 'juan.perez@example.com'),
('pedro', 'García Pérez', NOW(), 'juan.perez1@example.com'),
('Jose', 'Manchas Ramos', NOW(), 'juan.perez2@example.com'),
('Josue', 'Quispe Romero', NOW(), 'juan.perez3@example.com'),
('Mario', 'Pérez Nolsco', NOW(), 'juan.perez4@example.com'),
('Carlos', 'rojas García', NOW(), 'juan.perez5@example.com');

SELECT * FROM solicitante;

UPDATE solicitante SET nombre = "ramon" where identificador = 1;

DELETE FROM solicitante where identificador = 1;

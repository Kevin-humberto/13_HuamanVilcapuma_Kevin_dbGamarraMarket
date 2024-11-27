## Paso 1

primero investigamos el tema y seleccionamos los puntos más relevante y base a eso diseñamos nuestra base de datos
tanto el diseño físico como lógico.

## paso 2

Con la información obtenida hemos realizado nuestra base de datos donde almacenamos la informació de los usuarios 
interesados sobre nuestro producto.

### CREAR BASE DE DATOS

1. Sintaxis para crear una base de datos:

````SQL
CREATE DATABASE nombre_de_tu_base_de_datos;
````

2. Ejemplo: 

````SQL
CREATE DATABASE db_desalinizador;
````

### PONER EN USO DE LA BASE DE DATOS

1. Sintaxis para poner en uso de la base de datos:

````SQL
USE nombre_de_tu_base_de_datos;
````

2. Ejemplo:

````SQL
USE db_desalinizador;
````

### CREAMOS NUESTRA TABLAS

1. Sintaxis para crear nuestra tabla:

````SQL
CREATE TABLE nombre_de_tu_tabla (
    id int auto_increment,
    nombre varchar(100),
    apellido varchar(200)
);
````

### CREAMOS NUESTRAS RELACIONES

````SQL
ALTER TABLE consulta ADD CONSTRAINT consulta_Solicitante FOREIGN KEY consulta_Solicitante (Solicitante)
    REFERENCES Solicitante (identificador);
````
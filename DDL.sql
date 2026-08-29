DROP DATABASE IF EXISTS veterinaria;
CREATE DATABASE veterinaria;
USE veterinaria;


CREATE TABLE dueño (
    cedula INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(200)
);

CREATE TABLE mascota (
    id_mascota INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50),
    edad INT CHECK (edad >= 0),
    sexo VARCHAR(10),
    vacunada BOOLEAN,
    cedula_dueño INT NOT NULL,
    FOREIGN KEY (cedula_dueño) REFERENCES dueño(cedula)
);
CREATE TABLE servicio (
    id_servicio INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio_base DECIMAL(10,2) CHECK (precio_base >= 0)
);
CREATE TABLE visita (
    id_visita INT PRIMARY KEY,
    fecha DATE NOT NULL,
    id_mascota INT NOT NULL,
    id_servicio INT NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascota(id_mascota),
    FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio)
);
CREATE TABLE tratamiento (
    id_tratamiento INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    observaciones VARCHAR(200),
    id_visita INT NOT NULL,
    FOREIGN KEY (id_visita) REFERENCES visita(id_visita)
);
SHOW TABLES;




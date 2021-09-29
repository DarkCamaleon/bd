CREATE DATABASE instituto;

USE instituto;

CREATE TABLE OPERADORES (
  run INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(20),
  apellido VARCHAR(20),
  direccion VARCHAR(20),
  correo_electronico VARCHAR(40)
);

CREATE TABLE USUARIOS (
  id_coder INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(20),
  apellido VARCHAR(20),
  correo_electronico VARCHAR(40),
  telefono INT(11)
);

CREATE TABLE CAPACITACION (
  codigo_curso INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(20),
  horario DATETIME
);




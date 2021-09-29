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
  telefono INT
);

CREATE TABLE CAPACITACION (
  codigo_curso INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(20),
  horario DATETIME
);


INSERT INTO OPERADORES (RUN, nombre, apellido, direccion, correo_electronico, fecha_creacion_cuenta) 
VALUES ('17101980-k', 'alejandro', 'venegas', 'pasaje quintero 3665', 'asdddada@adaaasdad.com', '2021-09-19'),
        ('17101981-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101982-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101983-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101984-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101985-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101986-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101987-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101988-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10'),
        ('14101989-K', 'felipe', 'polo', 'tres maria', 'jejeje@jejeje.com', '2021-10-10');

INSERT INTO USUARIOS VALUES (0,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09'),
                            (null,'alejandro', 'araya', 'jojojo@jojojo.com', '133', '2022-10-09');

INSERT INTO CAPACITACION VALUES (0, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00'),
                                (null, 'alejandro', '2022-03-09 10:30:00');

USE sakila;

¿Cuántas películas están registradas?

SELECT * FROM film;

1000 peliculas registradas

¿Cuántos clientes existen en la base de datos? 

SELECT * FROM customer;

599 clientes

¿Cuántos títulos existen en inventario? 

SELECT count(sakila.inventory.film_id) FROM sakila.inventory;

4581 TITULOS EN inventario

¿Cuál es la película más arrendada?

SELECT COUNT(sakila.rental.inventory_id) as CuentaId , inventory.film_id, sakila.film.title
FROM sakila.rental, sakila.inventory, sakila.film 
WHERE rental.inventory_id =  inventory.inventory_id
AND inventory.film_id = sakila.film.film_id
group by inventory.film_id, sakila.film.title 
order by CuentaId DESC;



'34', '103', 'BUCKET BROTHERHOOD' es la pelicula mas arrendada








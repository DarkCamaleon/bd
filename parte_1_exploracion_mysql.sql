-- 1.- Definir los siguentes conceptos:

-- 1.1.- Base de Datos: es una colección organizada de información estructurada.
-- 1.2.- Tabla: es la composición de datos entre columnas y filas
-- 1.3.- Registro:  se conoce como registro de  datos al bloque con información que forma parte de una tabla.
-- 1.4.- Columna: representa una categoría de información en el cual contienen propiedades de informacion. Ejemplo : clientes (categoria de informacion)  nombre , apellido, rut (propiedades de clientes)
-- 1.5.- Llave Primaria: un identificador único, información que no puede ser repetida en las propiedades del campo.
-- 1.6.- Llave Foranea: referencia de una llave en otra tabla.

-- 1.7.- Respondan: ¿Cuál es la relación entre una llave primaria y una llave foránea?

-- Que la llave primaria es un identificador (valor) unico y la llave foranea  hace referencia o relacion de una tabla a otra. 

CREATE USER 'explorador'@'localhost' IDENTIFIED BY 'password';



GRANT ALL PRIVILEGES ON word.* TO 'explorador'@'localhost';

SHOW DATABASES;

USE world;

SHOW TABLES;

SELECT * FROM city;

-- Nombre de tabla : city  
-- cantidad de registro : 4079 filas

SELECT * FROM country;

-- nombre de tabla: country
-- cantidad de registro: 239 filas

SELECT * FROM countrylanguaje;

-- nombre de tabla: countrylanguage
-- cantidad de registro: 984 filas

-- 3.- Usando como datos de referencia la base de datos “world” presente en MySQL Workbench, contesta las siguientes preguntas:

-- ¿Cuántas ciudades existen en la base de datos?

SELECT name FROM city;

-- 4079 cuidades

-- Si se ordenan los países de acuerdo con su nombre ¿cuál sería el primero y cuál el último?

SELECT name FROM country;

-- Afghanistan es el primer pais
-- Zimbabwe es el ultimo pais

-- Tomando en cuenta todos los países de Sudamérica ¿cuántas ciudades existen entre todos ellos?

SELECT city.name,country.name, country.continent FROM world.city, world.country WHERE country.continent  = 'South America';

-- 57106 cuidades





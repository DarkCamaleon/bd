SHOW DATABASES;

USE world;

SHOW TABLES;

SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM countrylanguaje;

SELECT name FROM city;

SELECT name FROM country;

SELECT city.name,country.name, country.continent FROM world.city, world.country WHERE country.continent  = 'South America';




USE sakila;

SELECT * FROM film;

hay 1000 peliculas

SELECT * FROM customer;

hay 599 clientes

SELECT * FROM inventory;

4581 en el inventario

SELECT COUNT(sakila.rental.inventory_id) as CuentadeId , inventory.film_id, sakila.film.title
FROM sakila.rental, sakila.inventory, sakila.film
WHERE rental.inventory_id =  inventory.inventory_id
AND inventory.film_id = sakila.film.film_id
group by inventory.film_id, sakila.film.title
order by CuentadeId DESC;

 34 veces la pelicula BUCKET BROTHERHOOD fue arrendada
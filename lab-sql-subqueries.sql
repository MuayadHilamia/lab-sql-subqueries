USE sakila;

-- 1
SELECT * FROM inventory;
SELECT * FROM film;

SELECT f.title,
		COUNT(i.film_id) AS number_of_copies
FROM film AS f
JOIN inventory AS I 
USING (film_id)
WHERE f.title = 'Hunchback Impossible'
GROUP BY f.title;


-- 2
SELECT
		title, 
		length
FROM film
WHERE length > (
	SELECT AVG(length)
    FROM film
)
;

-- 3
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM film_actor;

SELECT fa.actor_id,
        a.first_name,
        a.last_name,
        f.title
FROM film_actor AS fa
JOIN film AS f
USING(film_id)
JOIN actor AS a
USING(actor_id)
HAVING f.title = 'Alone Trip';
        

		
		


















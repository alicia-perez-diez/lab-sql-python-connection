USE sakila;
-
CREATE TEMPORARY TABLE rental_m_y
SELECT rental_id, rental_date, MONTH(r.rental_date) AS rental_month, YEAR(r.rental_date) AS rental_year, inventory_id, customer_id, return_date, staff_id, last_update
FROM rental AS r;
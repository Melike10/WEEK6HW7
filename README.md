# PostgreSQL Queries - Patika.dev ASP.NET Core Assignment

This repository contains SQL queries related to the PostgreSQL database as part of the assignment for the Patika.dev ASP.NET Core course. The queries are designed to perform specific operations on the `film`, `customer`, and `city` tables in the `dvdrental` sample database.

## Queries Overview

### 1. Group films by their rating
```sql
SELECT rating, COUNT(title) AS title_count FROM film GROUP BY rating;
```
This query groups films in the film table by their rating and counts the number of films for each rating value.

### 2. Find replacement_cost values with more than 50 films
```sql

SELECT replacement_cost, COUNT(title) AS title_count FROM film GROUP BY replacement_cost HAVING COUNT(title) > 50;
```
This query groups films by their replacement_cost value and lists those replacement_cost values that have more than 50 films associated with them.

###3. Count the number of customers for each store_id in the customer table
```sql

SELECT store_id, COUNT(customer_id) AS customer_count FROM customer GROUP BY store_id;
```
This query counts the number of customers associated with each store_id in the customer table.

### 4. Find the country_id with the most cities and the corresponding city count
```sql

SELECT country_id, COUNT(*) AS city_count FROM city GROUP BY country_id ORDER BY city_count DESC LIMIT 1;
```
This query groups cities by their country_id in the city table and retrieves the country_id with the highest number of cities, along with the corresponding city count.

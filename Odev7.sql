/*
film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
*/

SELECT rating,COUNT(title) AS title_count  FROM film GROUP BY rating;

SELECT replacement_cost,COUNT(title) AS title_count FROM film GROUP BY replacement_cost HAVING COUNT(title)>50;

SELECT store_id , COUNT(customer_id) as customer_count FROM customer GROUP BY store_id;

SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;

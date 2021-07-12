-- 1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
-- 2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz 
--INNER JOIN sorgusunu yazınız.
-- 3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
--INNER JOIN sorgusunu yazınız.

--1.
select city, country from city 
inner join country on country.country_id = city.country_id;
--veya
select city, country from country 
inner join city on country.country_id = city.country_id;

--2.
select payment_id, concat(first_name, ' ', last_name) as isim, amount from customer join payment on payment.customer_id = customer.customer_id;
--3.
select concat(first_name, ' ', last_name), rental_id from rental join customer on rental.customer_id = customer.customer_id;

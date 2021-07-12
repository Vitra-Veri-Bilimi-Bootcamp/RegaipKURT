-- 1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
-- 2. film tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?
-- 3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
-- 4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

--1.
select AVG(rental_rate) from film;
--2.
select count(*) from film where title LIKE 'C%';
--3. 
select * FROM film WHERE rental_rate = 0.99 order by length desc limit 1;
--4.
select count(distinct replacement_cost) from film where length > 150;

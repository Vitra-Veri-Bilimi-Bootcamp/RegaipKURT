--1. country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
--2. country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
--3. film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
--4. film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

--1.
select country from country where country LIKE 'A%a';
--2.
select * from country WHERE country LIKE '%n' AND length(country) >= 6;
--3.
select title from film where title ILIKE '%t%t%t%t%';
--4.
select * from film where title LIKE 'C%' and length > 90 and rental_rate = 2.99;

-- 1. film tablosundan 'K' karakteri ile başlayan en uzun ve replacemet_cost u en düşük 4 filmi sıralayınız.
-- 2. film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
-- 3. customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
-- 4. category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
-- 5. film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kaç tane film vardır?


--1. film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
select * from film where title LIKE 'K%'
order by length desc, replacement_cost asc
limit 4;
 

-- 2. film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
select rating, count(*) from film group by rating 
order by 2 desc
limit 1;


-- 3. cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
select cus.first_name, cus.last_name, x.customer_id, x.sayi 
from customer as cus join
(select customer_id, count(payment_id) as sayi from payment group by customer_id order by 2 desc) as x
on x.customer_id = cus.customer_id
order by x.sayi desc
limit 1;



-- 4. category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
select name, count(film_id) from film_category join category on category.category_id = film_category.category_id
group by name;



 --5. film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kaç tane film vardır?
 select count(*) from film where title ilike '%e%e%e%e%';

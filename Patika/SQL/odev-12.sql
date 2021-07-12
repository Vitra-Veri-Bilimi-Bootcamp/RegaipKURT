-- 1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
-- 2. film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
-- 3. film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
-- 4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

--1. Uzunluğu ortalamadan uzun olanlar
select  title, length, (select avg(length) from film) from film
where length > (select avg(length) from film);
--şimdi sadece sayısını alalım
select count(title)from film
where length > (select avg(length) from film);


--2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(title) from film where rental_rate = (select max(rental_rate) from film);


--3. film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
-- bu cümleden kesişim anlaşılıyor --> hem en düşük rental rate hem en düşük replacement cost'a sahip filmler.
select title from film where rental_rate = (select min(rental_rate) from film)
intersect
select title from film where replacement_cost = (select min(replacement_cost) from film);



--4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

--basit olarak yapılacan işlem
select customer_id, count(payment_id) from payment group by customer_id order by 2 desc;

--aynı işlemi customer ile birleştirip isim soyisim alalım
select cus.first_name, cus.last_name, x.customer_id, x.sayi 
from customer as cus join
(select customer_id, count(payment_id) as sayi from payment group by customer_id order by 2 desc) as x
on x.customer_id = cus.customer_id
order by x.sayi desc;

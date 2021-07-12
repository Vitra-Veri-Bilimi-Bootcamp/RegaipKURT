
-- 1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
-- 2. film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
-- 3. film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
-- 4. country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
-- 5. city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

--1.
select distinct replacement_cost from film;
--2.
select count(distinct replacement_cost) from film;
--3. 
select count(title) from film where title LIKE 'T%' AND rating = 'G';
--4.
select count(country) from country where length(country) = 5;
--5.
select count(city) from city where city ILIKE '%r';

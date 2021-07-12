-- 1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
-- 2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
-- 3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
-- 4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

-- 1.
create table employee (
	id serial primary key, --serial de integer olduğu için serial yaptık. id'nin serial ve primary key olması daha doğru.
	name varchar(50) not null,
	birthday date,
	email varchar(50)
);

-- 2. Veriler mockaroo'dan alınıp eklenmiştir.
insert into employee (name, birthday, email) values ('Lowndsbrough', '1976-06-14', 'tlowndsbrough0@stumbleupon.com');
insert into employee (name, birthday, email) values ('Menichini', '1971-07-14', 'wmenichini1@xing.com');
insert into employee (name, birthday, email) values ('Hucknall', '1986-07-18', 'bhucknall2@soundcloud.com');
insert into employee (name, birthday, email) values ('Bertolin', '1968-06-19', 'mbertolin3@cnbc.com');
insert into employee (name, birthday, email) values ('Mancktelow', '1960-11-20', 'gmancktelow4@seesaa.net');
insert into employee (name, birthday, email) values ('Ardling', '1969-12-27', null);
insert into employee (name, birthday, email) values ('Pentelo', '1976-11-19', 'gpentelo6@webmd.com');
insert into employee (name, birthday, email) values ('Seawell', '1987-04-01', 'cseawell7@w3.org');
insert into employee (name, birthday, email) values ('Gainforth', '1986-05-25', 'rgainforth8@army.mil');
insert into employee (name, birthday, email) values ('Hugnot', '1967-02-12', 'mhugnot9@i2i.jp');
insert into employee (name, birthday, email) values ('Polding', '1995-08-30', 'mpoldinga@walmart.com');
insert into employee (name, birthday, email) values ('Bourdas', '1984-03-08', 'abourdasb@unc.edu');
insert into employee (name, birthday, email) values ('Spolton', '1978-10-29', 'aspoltonc@eventbrite.com');
insert into employee (name, birthday, email) values ('Perse', '1968-11-25', 'gpersed@phpbb.com');
insert into employee (name, birthday, email) values ('Barbrook', '1964-07-28', 'gbarbrooke@t-online.de');
insert into employee (name, birthday, email) values ('Lovart', '1978-07-07', 'alovartf@mit.edu');
insert into employee (name, birthday, email) values ('Buncombe', '1998-10-19', 'qbuncombeg@chronoengine.com');
insert into employee (name, birthday, email) values ('O''Day', '1967-03-29', 'bodayh@chicagotribune.com');
insert into employee (name, birthday, email) values ('Kermeen', '1978-02-22', 'dkermeeni@google.es');
insert into employee (name, birthday, email) values ('Mollin', '1997-09-30', null);
insert into employee (name, birthday, email) values ('Messenger', '1964-09-05', 'nmessengerk@dagondesign.com');
insert into employee (name, birthday, email) values ('O''Kelly', '1983-06-23', 'eokellyl@nydailynews.com');
insert into employee (name, birthday, email) values ('Kingsworth', '1974-09-23', 'okingsworthm@va.gov');
insert into employee (name, birthday, email) values ('Spurdens', '1992-03-08', 'lspurdensn@elpais.com');
insert into employee (name, birthday, email) values ('Whodcoat', '1993-10-13', 'iwhodcoato@hugedomains.com');
insert into employee (name, birthday, email) values ('Freeth', '1988-08-18', 'bfreethp@constantcontact.com');
insert into employee (name, birthday, email) values ('Ros', '1987-06-12', 'nrosq@reddit.com');
insert into employee (name, birthday, email) values ('Trodd', '1988-03-22', 'ctroddr@tuttocitta.it');
insert into employee (name, birthday, email) values ('Dewi', '1981-06-14', 'mdewis@desdev.cn');
insert into employee (name, birthday, email) values ('Deinert', '1991-04-04', 'hdeinertt@dmoz.org');
insert into employee (name, birthday, email) values ('Inglis', '1976-02-15', 'dinglisu@ameblo.jp');
insert into employee (name, birthday, email) values ('Tuftin', '1992-01-03', 'stuftinv@globo.com');
insert into employee (name, birthday, email) values ('McSperron', '1987-09-13', 'vmcsperronw@booking.com');
insert into employee (name, birthday, email) values ('Garlic', '1985-06-14', 'hgarlicx@answers.com');
insert into employee (name, birthday, email) values ('Gulc', '1990-07-31', 'kgulcy@mysql.com');
insert into employee (name, birthday, email) values ('McFfaden', '1992-03-02', 'dmcffadenz@altervista.org');
insert into employee (name, birthday, email) values ('Biasi', '1981-10-23', 'ibiasi10@myspace.com');
insert into employee (name, birthday, email) values ('Ravenshaw', '1980-02-08', 'rravenshaw11@macromedia.com');
insert into employee (name, birthday, email) values ('Sangar', '1982-04-28', 'asangar12@is.gd');
insert into employee (name, birthday, email) values ('Baylay', '1972-02-20', 'dbaylay13@psu.edu');
insert into employee (name, birthday, email) values ('Millhouse', '1967-11-16', 'mmillhouse14@parallels.com');
insert into employee (name, birthday, email) values ('Edgeller', '1973-06-05', 'nedgeller15@flickr.com');
insert into employee (name, birthday, email) values ('Dominik', '1997-08-09', 'ldominik16@jigsy.com');
insert into employee (name, birthday, email) values ('Madden', '1990-05-06', 'hmadden17@twitpic.com');
insert into employee (name, birthday, email) values ('Rubke', '1981-09-26', 'wrubke18@smugmug.com');
insert into employee (name, birthday, email) values ('Sier', '1966-04-28', 'msier19@twitter.com');
insert into employee (name, birthday, email) values ('Bortol', '1967-03-21', 'cbortol1a@eventbrite.com');
insert into employee (name, birthday, email) values ('Rappaport', '1981-11-15', 'trappaport1b@twitter.com');
insert into employee (name, birthday, email) values ('Jovis', '1982-12-02', 'tjovis1c@princeton.edu');
insert into employee (name, birthday, email) values ('Dew', '1999-11-17', 'fdew1d@sogou.com');

-- 3. 
update employee
set name = 'xxxx'
where email is null;

-- 4.
delete from employee where name = 'xxxx';

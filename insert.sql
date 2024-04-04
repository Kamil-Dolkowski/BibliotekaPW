--10 wpisów książek wraz z danymi ich wypozyczen, zamowien/ uzytkowników/ egzemplarzy
USE LibraryPW;
GO

SET IDENTITY_INSERT  Authors ON
INSERT INTO Authors (author_id, surename, name, biography, username)
VALUES 
(41,'Kochanowski','Jan','polski poeta epoki renesansu, tłumacz','Jan z Czarnolasu'),
(42,'Kamiński','Aleksander','polski pedagog, wychowawca, żołnierz AK','Juliusz Górecki'),
(43,'Shakespeare','William','angielski poeta, dramaturg, aktor',NULL),
(44,'Żeromski','Stefan','polski prozaik, publicysta, dramaturg',NULL),
(45,'Mrożek','Sławomir','polski pisarz oraz rysownik',NULL),
(46,'Sienkiewicz','Henryk','polski nowelista, powieściopisarz i publicysta',NULL),
(47,'Mickiewicz','Adam','polski poeta, działacz polityczny, publicysta, tłumacz, filozof, nauczyciel akademicki',NULL);
SET IDENTITY_INSERT  Authors ON

SET IDENTITY_INSERT  Publishing_houses ON
INSERT INTO Publishing_houses(publishing_house_id, name)
VALUES 
(41, 'Czytaj z nami'),
(42, 'Twoja Księgarnia'),
(43, 'Księgo-teka'),
(44, 'Lekturownik');
SET IDENTITY_INSERT  Publishing_houses ON

SET IDENTITY_INSERT  Categories ON
INSERT INTO Categories(category_id, name)
VALUES 
(41, 'Liryka'),
(42, 'Powieść faktu'),
(43, 'Dramat'),
(44, 'Powieść'),
(45, 'Powieść historyczna'),
(46, 'Epopeja');
SET IDENTITY_INSERT  Categories ON

SET IDENTITY_INSERT  Books ON
INSERT INTO Books (book_id, author_id, description, title, publishing_year, publishing_house_id, category_id, numbers_of_books)
VALUES 
(41, 41, 'Zbiór fraszek, pieśni i trenów znanego polskiego poety - Jana Kochanowskiego.', 'Fraszki, pieśni i treny', 2010, 41, 41, 1),
(42, 42, 'Polska Podziemna, Warszawa w czasach II wojny światowej.', 'Kamienie na szaniec', 2015, 42, 42, 2),
(43, 43, 'Słynne dzieło Shakespearea. Żądza władzy, morderstwa, magia, fatum.', 'Makbet', 2011, 41, 43, 1),
(44, 41, 'Polska tradedia renesansowa odwołująca się do mitu o wojnie trojańskiej.', 'Odprawa posłów greckich', 2020, 41, 43, 1),
(45, 45, 'Powieść polityczna Stefana Żeromskiego wydana w 1924 w Warszawie.', 'Przedwiośnie', 1998, 42, 44, 2),
(46, 45, 'Dramat rodzinny, satyra społeczna, groteska, konflikt pokoleń.', 'Tango', 2016, 43, 43, 1),
(47, 46, 'Czasy potopu szwedzkiego, walka Polaków ze Szwedami.', 'Potop', 2018, 41, 45, 1),
(48, 46, 'Czasy pierwszych chrześcijan, miłość, cierpienie, przemiana bohatera.', 'Quo vadis', 2019, 43, 45, 2),
(49, 47, 'Epopeja narodowa, patriotyzm, przemiana bohatera.', 'Pan Taduesz', 2010, 44, 46, 3),
(50, 47, 'Cykl dramatów romantycznych Adama Mickiewicza publikowany w latach 1823–1860.', 'Dziady', 1999, 44, 43, 1);
SET IDENTITY_INSERT  Books ON

SET IDENTITY_INSERT  Users ON
INSERT INTO Users(user_id, name, email, phone_number, status_id, indeks)
VALUES 
(41, 'Adam Miodek', 'adam.miodek@pw.edu.pl', '567845346', 7, 123345),
(42, 'Małgorzata Kowalska', 'malgorzata.kowalska@pw.edu.pl', '783458809', 7, 546898),
(43, 'Paweł Lipski', 'pawel.lipski@pw.edu.pl', '733456210', 7, 567342),
(44, 'Anna Mrozek', 'anna.mrozek@pw.edu.pl', '709947662', 7, 578009),
(45, 'Katarzyna Góralska', 'katarzyna.goralska@pw.edu.pl', '598099332', 7, 345098),
(46, 'Mateusz Orłowski', 'mateusz.orlowski@pw.edu.pl', '809356761', 8, 389066),
(47, 'Oliwia Sosnowska', 'oliwia.sosnowska@pw.edu.pl', '789212343', 8, 356778),
(48, 'Klaudia Dworska', 'klaudia.dworska@pw.edu.pl', '799453567', 8, 333526),
(49, 'Kamil Wiśniewski', 'kamil.wisniewski@pw.edu.pl', '675678879', 8, 387990),
(50, 'Adam Wierzbicki', 'adam.wierzbicki@pw.edu.pl', '590707443', 9, 234112);
SET IDENTITY_INSERT  Users OFF

SET IDENTITY_INSERT  Locations ON
INSERT INTO Locations(location_id, city, street, number, post_code)
VALUES 
(41, 'Płock', 'Ul. Łukasiewicza', 17, '09-400'),
(42, 'Płock', 'Ul. Jachowicza', 2, '09-400'),
(43, 'Warszawa', 'Pl. Politechniki', 1, '00-661');
SET IDENTITY_INSERT  Locations OFF

SET IDENTITY_INSERT  Libraries ON
INSERT INTO Libraries(library_id, name, location_id)
VALUES 
(41, 'Biblioteka Główna Politechniki Warszawskiej Filii w Płocku', 41),
(42, 'Biblioteka Dział Mechaniki i Informatyki Politechniki Warszawskiej Filii w Płocku', 42),
(43, 'Biblioteka Główna Politechniki Warszawskiej w Warszawie', 43),
(44, 'Biblioteka Cyfrowa Politechniki Warszawskiej Filii w Płocku', 41),
(45, 'Biblioteka Cyfrowa Politechniki Warszawskiej w Warszawie', 43);
SET IDENTITY_INSERT  Libraries OFF

SET IDENTITY_INSERT  Status ON
INSERT INTO Status (status_id, kind_of_status)  --Status napisany przez Wojciecha Ignaczaka
VALUES 
(1,'zatrudniony'),
(2,'zwolniony'),
(3,'zamówione'),
(4,'dostarczone'),
(5,'wypozyczona'),
(6,'dostepna'),
(7,'student'),
(8,'pracownik'),
(9,'inny'),
(10,'opłacone'),
(11,'nieopłacone');
SET IDENTITY_INSERT  Status OFF

SET IDENTITY_INSERT  Elementary_books ON
INSERT INTO Elementary_books(elementary_book_id, book_id, library_id, status_id, wear)
VALUES 
(401, 41, 41, 5, 100),
(402, 42, 42, 5, 70),
(403, 42, 41, 5, 80),
(404, 43, 41, 5, 50),
(405, 44, 44, 6, 60),
(406, 45, 44, 6, 90),
(407, 45, 41, 6, 80),
(408, 46, 44, 5, 60),--
(409, 47, 43, 5, 100),
(410, 48, 41, 6, 90),
(411, 48, 41, 5, 90),
(412, 49, 41, 6, 90),
(413, 49, 42, 5, 80),
(414, 49, 43, 5, 90),--
(415, 50, 41, 5, 70);--
SET IDENTITY_INSERT  Elementary_books OFF

SET IDENTITY_INSERT  Employees ON
INSERT INTO Employees(employee_id, name, surename, phone_number, salary, working_hours_per_day, status_id, login, password, library_id)
VALUES 
(41, 'Mateusz', 'Orłowski', '809356761', 3800, 8, 1, '389066', 'MyP455w0rD', 41),
(42, 'Oliwia', 'Sosnowska', '789212343', 3500, 8, 1, '356778', 'P455w0rDNo1', 42),
(43, 'Klaudia', 'Dworska', '799453567', 3400, 7, 1, '333526', 'M0j3H45L0', 43),
(44, 'Kamil', 'Wiśniewski', '675678879', 3600, 8, 1, '387990', 'Bi8li0t3k@', 44),
(45, 'Karol', 'Gawron', '556342132', 3400, 8, 2, '889990', 'Lubi3-Ksi@zkiI', 41);
SET IDENTITY_INSERT  Employees OFF


SET IDENTITY_INSERT  Orders ON
INSERT INTO Orders(order_id, elementary_book_id, user_id, date, pickup_time)
VALUES 
(41, 401, 41, 2024-01-12, 10),
(42, 402, 43, 2024-01-16, 8),
(43, 403, 45, 2024-02-08, 12),
(44, 404, 41, 2024-02-20, 11),
(45, 409, 42, 2024-02-29, 10),
(46, 411, 44, 2024-03-04, 13),
(47, 408, 44, 2024-03-04, 9),--
(48, 414, 41, 2024-03-04, 12),--
(49, 415, 42, 2024-03-04, 13),--
(50, 413, 47, 2024-03-18, 14);
SET IDENTITY_INSERT  Orders OFF

SET IDENTITY_INSERT Rents ON
INSERT INTO Rents(rent_id, user_id, elementary_book_id, rent_date, return_date, order_id, extension_id, employee_id)
VALUES 
(41, 41, 401, 2024-01-12, 2024-01-29, 41, NULL, 41),
(42, 43, 402, 2024-01-16, 2024-01-30, 42, NULL, 42),
(43, 45, 403, 2024-02-08, 2024-02-22, 43, NULL, 41),
(44, 41, 404, 2024-02-20, 2024-03-01, 44, NULL, 41),
(45, 42, 409, 2024-02-29, 2024-03-14, 45, NULL, 43),
(46, 44, 411, 2024-03-04, 2024-03-11, 46, NULL, 41),
(47, 44, 408, 2024-03-04, 2024-03-11, 46, NULL, 44),--
(48, 41, 414, 2024-03-04, 2024-03-11, 46, NULL, 43),--
(49, 42, 415, 2024-03-04, 2024-03-11, 46, NULL, 41),--
(50, 47, 413, 2024-03-18, 2024-03-28, 47, NULL, 42);
SET IDENTITY_INSERT Rents OFF


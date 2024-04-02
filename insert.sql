--10 wpisów książek wraz z danymi ich wypozyczen, zamowien/ uzytkowników/ egzemplarzy
USE LibraryPW;
GO

INSERT INTO Authors (author_id, surename, name, biography, username)
VALUES 
(41,'Kochanowski','Jan','polski poeta epoki renesansu, tłumacz','Jan z Czarnolasu'),
(42,'Kamiński','Aleksander','polski pedagog, wychowawca, żołnierz AK','Juliusz Górecki'),
(43,'Shakespeare','William','angielski poeta, dramaturg, aktor',NULL),
(44,'Żeromski','Stefan','polski prozaik, publicysta, dramaturg',NULL),
(45,'Mrożek','Sławomir','polski pisarz oraz rysownik',NULL),
(46,'Sienkiewicz','Henryk','polski nowelista, powieściopisarz i publicysta',NULL),
(47,'Mickiewicz','Adam','polski poeta, działacz polityczny, publicysta, tłumacz, filozof, nauczyciel akademicki',NULL);


INSERT INTO Publishing_houses(publishing_house_id, name)
VALUES 
(41, 'Czytaj z nami'),
(42, 'Twoja Księgarnia'),
(43, 'Księgo-teka'),
(44, 'Lekturownik');



INSERT INTO Categories(category_id, name)
VALUES 
(41, 'Liryka'),
(42, 'Powieść faktu'),
(43, 'Dramat'),
(44, 'Powieść'),
(45, 'Powieść historyczna'),
(46, 'Epopeja');



INSERT INTO Books (book_id, author_id, description, title, publishing_year, publishing_house_id, category_id, numbers_of_books)
VALUES 
(41, 41, 'Zbiór fraszek, pieśni i trenów znanego polskiego poety - Jana Kochanowskiego.', 'Fraszki, pieśni i treny', 2010, 41, 41, 5),
(42, 42, 'Polska Podziemna, Warszawa w czasach II wojny światowej.', 'Kamienie na szaniec', 2015, 42, 42, 10),
(43, 43, 'Słynne dzieło Shakespearea. Żądza władzy, morderstwa, magia, fatum.', 'Makbet', 2011, 41, 43, 15),
(44, 41, 'Polska tradedia renesansowa odwołująca się do mitu o wojnie trojańskiej.', 'Odprawa posłów greckich', 2020, 41, 43, 7),
(45, 45, 'Powieść polityczna Stefana Żeromskiego wydana w 1924 w Warszawie.', 'Przedwiośnie', 1998, 42, 44, 20),
(46, 45, 'Dramat rodzinny, satyra społeczna, groteska, konflikt pokoleń.', 'Tango', 2016, 43, 43, 6),
(47, 46, 'Czasy potopu szwedzkiego, walka Polaków ze Szwedami.', 'Potop', 2018, 41, 45, 12),
(48, 46, 'Czasy pierwszych chrześcijan, miłość, cierpienie, przemiana bohatera.', 'Quo vadis', 2019, 43, 45, 21),
(49, 47, 'Epopeja narodowa, patriotyzm, przemiana bohatera.', 'Pan Taduesz', 2010, 44, 46, 13),
(50, 47, 'Cykl dramatów romantycznych Adama Mickiewicza publikowany w latach 1823–1860.', 'Dziady', 1999, 44, 43, 14);
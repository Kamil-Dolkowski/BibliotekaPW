USE BibliotekaPW;

CREATE TABLE Lokalizacja (
	LokalizacjaID int PRIMARY KEY IDENTITY(1,1),
	Miasto varchar(30) NOT NULL,
    Ulica varchar(30) NOT NULL,
    Numer int NOT NULL,
    KodPocztowy varchar(6) NOT NULL,
    Wojewodztwo varchar(19) NOT NULL,
);
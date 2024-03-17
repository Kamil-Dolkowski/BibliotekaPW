USE BibliotekaPW;

CREATE TABLE Config (
	ConfigID int PRIMARY KEY IDENTITY(1,1),
	Klucz varchar(30) NOT NULL,
    Wartosc int NOT NULL,
    DataModyfikacji date NOT NULL,
    DataDodania date NOT NULL
);
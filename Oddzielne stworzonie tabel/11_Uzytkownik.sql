USE BibliotekaPW;

CREATE TABLE Uzytkownik (
	UzytkownikID int PRIMARY KEY IDENTITY(1,1),
	Imie varchar(15) NOT NULL,
    Nazwisko varchar(30) NOT NULL,
    Status varchar(10) NOT NULL,
    Login varchar(20) NOT NULL,
    Haslo varchar(20) NOT NULL,
    Typ varchar(20) NOT NULL,
    IndeksPW varchar(6),
    Wypozyczenia int,
    NrTel varchar(9) NOT NULL,
    Email varchar(40) NOT NULL,
);
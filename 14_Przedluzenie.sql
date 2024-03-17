USE BibliotekaPW;

CREATE TABLE Przedluzenie (
	PrzedluzenieID int PRIMARY KEY IDENTITY(1,1),
	WypozyczenieID int,
    Typ varchar(15),
    Czas time,
    FOREIGN KEY (WypozyczenieID) REFERENCES Wypozyczenie(WypozyczenieID)
);
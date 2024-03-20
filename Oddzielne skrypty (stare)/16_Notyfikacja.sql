USE BibliotekaPW;

CREATE TABLE Notyfikacja (
	NotyfikacjaID int PRIMARY KEY IDENTITY(1,1),
	PrzedluzenieID int NOT NULL,
    Tresc varchar(200) NOT NULL,
    Typ varchar(15),
    UzytkownikID int NOT NULL,
    FOREIGN KEY (PrzedluzenieID) REFERENCES Przedluzenie(PrzedluzenieID),
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);
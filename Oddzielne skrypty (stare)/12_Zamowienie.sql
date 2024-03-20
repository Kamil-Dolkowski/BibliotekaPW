USE BibliotekaPW;

CREATE TABLE Zamowienie (
	ZamowienieID int PRIMARY KEY IDENTITY(1,1),
	EgzemplarzID int NOT NULL,
    UzytkownikID int NOT NULL,
    Data date NOT NULL,
    CzasOdbioru time NOT NULL,
    FOREIGN KEY (EgzemplarzID) REFERENCES Egzemplarz(EgzemplarzID),
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);
USE BibliotekaPW;

CREATE TABLE Wypozyczenie (
	WypozyczenieID int PRIMARY KEY IDENTITY(1,1),
	ZamowienieID int NOT NULL,
    EgzemplarzID int NOT NULL,
    DataWypozyczenia date NOT NULL,
    CzasWypozyczenia time NOT NULL,
    DataZwrotu date NOT NULL,
    FOREIGN KEY (ZamowienieID) REFERENCES Zamowienie(ZamowienieID),
    FOREIGN KEY (EgzemplarzID) REFERENCES Egzemplarz(EgzemplarzID)
);
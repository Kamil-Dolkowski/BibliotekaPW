USE BibliotekaPW;

ALTER TABLE Wypozyczenie ADD PrzedluzenieID int NOT NULL;
ALTER TABLE Wypozyczenie ADD FOREIGN KEY (PrzedluzenieID) REFERENCES Przedluzenie(PrzedluzenieID)
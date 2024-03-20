USE BibliotekaPW;

CREATE TABLE Biblioteka (
	BibliotekaID int PRIMARY KEY IDENTITY(1,1),
	Nazwa varchar(40) NOT NULL,
    LokalizacjaID int,
    GodzinyOtwarciaID int,
    FOREIGN KEY (LokalizacjaID) REFERENCES Lokalizacja(LokalizacjaID),
    FOREIGN KEY (GodzinyOtwarciaID) REFERENCES GodzinyOtwarcia(GodzinyOtwarciaID)
);
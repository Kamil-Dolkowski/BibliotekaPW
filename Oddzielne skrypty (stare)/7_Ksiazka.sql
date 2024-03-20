USE BibliotekaPW;

CREATE TABLE Ksiazka (
    BookID int PRIMARY KEY IDENTITY(1,1),
    AutorID int NOT NULL,
    Tytul varchar(50) NOT NULL,
    GatunekID int,
    Opis varchar(300),
    RecenzjaID int,
    RokWydania int,
    WydawnictwoID int,
    Status varchar(15) NOT NULL,
	FOREIGN KEY (AutorID) REFERENCES Autor(AutorID),
    FOREIGN KEY (GatunekID) REFERENCES Gatunek(GatunekID),
    FOREIGN KEY (RecenzjaID) REFERENCES Recenzja(RecenzjaID),
    FOREIGN KEY (WydawnictwoID) REFERENCES Wydawnictwo(WydawnictwoID)
);
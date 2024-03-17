USE BibliotekaPW;

CREATE TABLE Egzemplarz (
	EgzemplarzID int PRIMARY KEY IDENTITY(1,1),
	BookID int NOT NULL,
    Status varchar(20) NOT NULL,
    BibliotekaID int NOT NULL,
    Zuzycie int,
    FOREIGN KEY (BookID) REFERENCES Ksiazka(BookID),
    FOREIGN KEY (BibliotekaID) REFERENCES Biblioteka(BibliotekaID)
);
USE BibliotekaPW;

CREATE TABLE Recenzja (
	RecenzjaID int PRIMARY KEY IDENTITY(1,1),
	Ocena int NOT NULL,
    Tresc varchar(300),
    Username varchar(30) NOT NULL,
    Ukryj bit,
);
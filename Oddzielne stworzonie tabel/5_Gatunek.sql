USE BibliotekaPW;

CREATE TABLE Gatunek (
	GatunekID int PRIMARY KEY IDENTITY(1,1),
	Nazwa varchar(20) NOT NULL,
    Ukryj bit
);
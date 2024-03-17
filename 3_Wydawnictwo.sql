USE BibliotekaPW;

CREATE TABLE Wydawnictwo (
	WydawnictwoID int PRIMARY KEY IDENTITY(1,1),
	Nazwa varchar(30) NOT NULL,
	Status varchar(30) NOT NULL
);